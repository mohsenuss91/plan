# encoding: utf-8

# Copyright 2008, 2009, 2010 Thomas Kongevold Adamcik
# 2009 IME Faculty Norwegian University of Science and Technology

# This file is part of Plan.
#
# Plan is free software: you can redistribute it and/or modify
# it under the terms of the Affero GNU General Public License as
# published by the Free Software Foundation, either version 3 of
# the License, or (at your option) any later version.
#
# Plan is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# Affero GNU General Public License for more details.
#
# You should have received a copy of the Affero GNU General Public
# License along with Plan.  If not, see <http://www.gnu.org/licenses/>.

import logging
import re
from decimal import Decimal

from django.conf import settings
from django.db import connections

from plan.common.models import Course, Lecture, Semester
from plan.scrape.lectures import get_day_of_week, process_lectures, get_time, get_weeks

logger = logging.getLogger('scrape.db')

def update_lectures(year, semester_type, prefix=None, matches=None):
    '''Retrive all lectures for a given course'''

    semester, created = Semester.objects.get_or_create(year=year, type=semester_type)

    prefix = prefix or semester.prefix

    logger.debug('Using prefix: %s', prefix)

    c = connections['ntnu'].cursor()

    query = """
            SELECT emnekode,typenavn,dag,start,slutt,uke,romnavn,larer,aktkode
            FROM %s_timeplan WHERE emnekode NOT LIKE '#%%'
        """ % prefix

    if matches:
        logger.info('Limiting to %s*', matches)

        query  = query.replace('%', '%%')
        query += ' AND emnekode LIKE %s'
        query += ' ORDER BY emnekode, dag, start, slutt, uke, romnavn, aktkode'
        c.execute(query, (matches + '%',))
    else:
        query += ' ORDER BY emnekode, dag, start, slutt, uke, romnavn, aktkode'
        c.execute(query)

    data = []
    added_lectures = []
    mysql_lecture_count = 0
    skipped = 0

    lectures = Lecture.objects.filter(course__semester=semester)

    if matches:
        lectures = lectures.filter(course__code__startswith=matches)

    for row in c.fetchall():
        code, lecture_type, db_day, db_start, db_end, week, room, lecturer, groupcode = row
        if not code.strip():
            continue

        mysql_lecture_count += 1

        code = code.rsplit('-', 1)[0].upper()

        if not re.match(settings.TIMETABLE_VALID_COURSE_NAMES, code):
            logging.info('Skipped %s', code)
            skipped += 1
            continue

        # Get course
        try:
            course = Course.objects.get(code=code, semester=semester)
        except Course.DoesNotExist:
            logger.warning("Cout not add %s - %s on %s for %s as course does"
                " not exist for this semester", db_start, db_end, db_day, code)
            continue

        day = get_day_of_week(db_day)
        start = get_time(db_start)
        end = get_time(db_end)

        if day is None or start is None or end is None:
            logger.warning("Could not add %s - %s on %s for %s" % (db_start, db_end, db_day, course))
            skipped += 1
            continue

        rooms = room.split('#')
        weeks = get_weeks(re.split(r',? ', week))
        lecturers = lecturer.split('#')

        groups = set()
        c2 = connections['ntnu'].cursor()
        c2.execute("""
                SELECT DISTINCT asp.studieprogramkode
                FROM %s_akt_studieprogram asp,studieprogram sp
                WHERE asp.studieprogramkode=sp.studieprogram_kode
                AND asp.aktkode = %%s
            """ % prefix, groupcode)
        for row in c2.fetchall():
            groups.add(row[0])

        data.append({
            'course': course,
            'type': lecture_type,
            'day': day,
            'start': start,
            'end': end,
            'weeks': filter(bool, weeks),
            'rooms': filter(bool, rooms),
            'lecturers': filter(bool, lecturers),
            'groups': filter(bool, groups),
        })

    added_lectures = process_lectures(data)
    to_delete = Lecture.objects.exclude(id__in=added_lectures)
    to_delete = to_delete.filter(course__semester=semester)

    if matches:
        return to_delete.filter(course__code__startswith=matches)

    logger.info('%d lectures in source db, %d in destination, diff %d, skipped %d',
            mysql_lecture_count, len(added_lectures), mysql_lecture_count - len(added_lectures), skipped)

    return to_delete

def update_courses(year, semester_type, prefix=None):
    semester, created = Semester.objects.get_or_create(year=year, type=semester_type)

    prefix = prefix or semester.prefix

    c = connections['ntnu'].cursor()

    if year > 2009 or (year == 2009 and semester_type == Semester.FALL):
        vekt = 'en_navn'
    else:
        vekt = 'vekt'

    c.execute("""SELECT emnekode,emnenavn,%s as vekt FROM %s_fs_emne WHERE
            emnekode NOT LIKE '#%%' AND emnekode NOT LIKE '"%%'""" % (vekt, prefix))

    for code, name, points in c.fetchall():
        code = code.strip().upper()

        if not code or '-' not in code:
            continue

        code, version = code.split('-', 2)[:2]
        code = code.strip()
        version = version.strip()

        if not version:
            version = None

        if name[0] in ['"', "'"] and name[0] == name[-1]:
            name = name[1:-1]

        if not re.match(settings.TIMETABLE_VALID_COURSE_NAMES, code):
            logger.info('Skipped invalid course name: %s', code)
            continue

        try:
            course = Course.objects.get(code=code, semester=semester,
                        version=None)
            course.version = version
            created = False

        except Course.DoesNotExist:
            course, created = Course.objects.get_or_create(code=code,
                        semester=semester, version=version)

        if points:
            if vekt == 'en_navn':
                points = points.replace('SP', '')

            course.points = Decimal(points.strip().replace(',', '.'))
        course.name = name
        course.save()

        if created:
            logger.info("Added course %s" % course.code)
        else:
            logger.info("Updated course %s" % course.code)
