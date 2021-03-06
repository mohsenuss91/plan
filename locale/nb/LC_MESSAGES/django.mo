��    �      4  �   L        �     e   �  �   `  �   )  �   �  �   i  �     ~   �  O    n   X  �   �  m   �  5     �   J  S  �  F   4  p   {  �   �  �   �  {   "  <   �  =   �  S     _   m     �  �   �  :   �  ;   �     )  
   0     ;     G  $   M     r     �     �  5   �     �     �     �     �     �           %     ,     4     <     @     L     Q     Z     c     u     ~     �  	   �  	   �  	   �  
   �     �     �     �     �     �     �     �               /     7     D     Q     _     l     z  	   �  M   �     �  0   �  	          	         *     ?     ^     g  0   v  9   �     �     �     �     �               .  	   7     A     N  P   ]  v   �     %     *  
   0     ;     C     L     Y     g     y  A   ~     �     �  $   �  !   �                       '      /      8      D      J      Q      V      \      a      v   	         �      �   �  �   �   ("  q   �"  �   T#  �   +$     �$  q   4%  �   �%  �   )&  S  �&  h   (  �   t(  g   5)  <   �)  �   �)  G  q*  G   �+  �   ,  �   �,  �   8-  {   �-  ;   C.  6   .  D   �.  o   �.  "   k/  �   �/  ;   A0  ;   }0     �0     �0     �0     �0  "   �0     1     1     %1  $   *1     O1     d1     1     �1     �1  *   �1     �1     �1     �1     �1     �1     �1     �1     	2     2     #2     +2     32     ;2     H2     T2     a2  	   p2  
   z2  	   �2     �2     �2     �2     �2     �2     �2     3     3     "3     33     E3     U3  	   f3  
   p3  P   {3     �3  #   �3     �3     4     4     4     %4  	   74     A4     Y4  ,   m4     �4     �4     �4     �4     �4     �4     �4     �4  
   �4     �4  4   �4  S   45     �5     �5     �5     �5  	   �5  
   �5     �5     �5     �5  )   �5     6     6     6     36     K6     P6     T6     b6     j6  	   q6     {6     �6     �6  	   �6     �6     �6     �6     �6     �6     �6     7       b       T   N                          a          
   u   '   d   �      [       W       s   m   g   5   2   w   �   ?         J   !      %       Q   X          ~           B       I           r   �   ]   ,   (   P   &                  ^   1   }       |      *   U   >       e       4   \          o   c   .       "      Y       8   z          #                   =   C   -   n   L   j   K      x   @   0       _   O   S      ;          )          l   y   /                       3   p   <   i          :   `   H   V   +   t   	      {      $      h      E       k      f   F             6          M       G      A   D                 9               q   Z   v   �      R    
              Please enter a short name identifying your personal
              timetable, ie. username, nickname etc. If the name
              you select is in already taken, choose another
              one.
             
            A new semester is available, <a href="%(url)s">click here</a> to get started.
           
          Calendar export:
          <a href="%(ical_lectures_url)s">lectures</a>,
          <a href="%(ical_exams_url)s">exams</a> or
          <a href="%(ical_all_url)s">both combined</a>.
         
          Did you know that you can change which names are used for courses under
          <a href="%(adavanced_url)s">advanced options</a>?
         
          Did you know that you can choose to hide lectures that you don't want to be shown under
          <a href="%(adavanced_url)s">advanced options</a>?
         
          Did you know that you can select which groups (paralleller) you
          want to attend, and than you can select more than one group?
         
          For quick access to your schedule simply go to
          <a href="%(shortcut_url)s">%(host)s%(shortcut_url)s</a>
         
          Go to <a href="%(advanced_url)s#lectures">advanced options</a>
          to toggle which lectures to hide.
         
          Google calendar:
          <a target="_blank" href="%(google_cal_prefix)s%(host)s%(ical_lectures_url)s">lectures</a>,
          <a target="_blank" href="%(google_cal_prefix)s%(host)s%(ical_exams_url)s">exams</a> or
          <a target="_blank" href="%(google_cal_prefix)s%(host)s%(ical_all_url)s">both combined</a>.
         
          Sorry, but the generator has been set up to limit
          timetables to %(max)s courses.
         
          The <a href="%(course_list_url)s">course list</a>
          contains all courses for the current semester, including exam dates and
          allows you to easily select courses to add to your schedule.
         
          To retrieve your timetable simply enter the same identifier
          you used last time.
         
          Top %(limit)s courses %(current)s
         
        <code>%(path)s</code> could not be found. Try going back or
        starting over from the <a href="%(frontpage_url)s">frontpage</a>.
       
        All lecture times and course data have been automatically retrieved
        from <a href="%(url)s">%(institution)s</a>. This data may not
        reflect the actual lecture times due to changes or erroneous imports.
        The service is provided as is, please ensure that the data is correct
        before relying on it.
       
        Back to your <a href="%(adavanced_url)s">schedule</a>.
       
        Go to <a href="%(advanced_url)s#courses">advanced options</a>
        to add and remove courses.
       
        Next semesters' lectures are now available, go to
        <a href="%(next_semester_url)s">%(next_semester_url)s</a>
        to start adding your courses.
       
      Code and design &copy; 2008-%(year)s <b>Thomas Adamcik</b>.
      This site has no official affiliation with %(institution)s.
       
      Please check that the courses that failed can be found at
      <a href="%(url)s">%(url)s</a> for this semster.
     
      Timetable generator for %(institution)s students
     
    %(slug)s%(ending)s
    %(type)s
    %(year)s schedule
   
    %(slug)s%(ending)s
    %(type)s
    %(year)s schedule
    for week %(week)s
   
    Go to <a href="%(groups_url)s">group selection page</a>
    to change groups/parallels.
   
    Statistics %(current)s
   
    The source code is freely available under the
    <a href="http://www.gnu.org/licenses/agpl-3.0.html">Affero General Public License</a>
    at <a href="%(SOURCE_URL)s">%(SOURCE_URL)s</a>.
     %(slug)s' %(semester)s %(year)s schedule for %(resources)s %(slug)s's %(semester)s %(year)s schedule for %(resources)s Active Add course Add courses Added Adding the following courses failed: Advanced options Alias All An error has occurred, sorry about the inconvenience. Built using: Change course groups Change groups Code Combination Couldn't add one or more courses Course Courses Current Day Description Done Due date Duration Duration in hours End time English Exam Exam date Exam time Exam type Exam types Exams Getting started Group Groups Handout date Handout time Hide advanced options Hide selected lectures Last import time Lecture Lecture list Lecture type Lecture types Lecture week Lecture weeks Lecturer Lecturers Multiple courses can be added at once by separating course codes with spaces. Name No courses have been added to any schedules yet. No groups None Norwegian Number of timetables Number of timetables over time Optional Page not found Please choose the course variants you belong to. Please enter the codes for the courses you want to attend Points Remove selected Room Rooms Save groups Select groups for your courses Semester Semesters Server error Show deadlines Simply click the calendar type you want and it will be added to Google calendar. Simply download or copy the link to the calendar you want and add it to any application that supports the Ical format. Slug Start Start time Student Students Subscription Subscriptions Switch to English Task The server administrator has already been notified of this error. Time Tips Total number of unique courses added Total number of unique timetables Type URL Update names Version Week day Week number Weeks Weeks: Year exams fall is run and hosted by lectures slugfall slugspring spring Project-Id-Version: Timeplan
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-09-13 17:39+0200
PO-Revision-Date: 2014-11-13 17:15+0100
Last-Translator: Torstein Husebø <torstein@huseboe.net>
Language-Team:  <timeplan@adamcik.no>
Language: nb_NO
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: Norwegian Bokmal
X-Poedit-Country: NORWAY
 
                Oppgi et kort navn for timeplanen din
                (f.eks. et brukernavn eller kallenavn). 
                Finn på et annet om det allerede er tatt.
               
            Et nytt semester er nå tilgjengelig, <a href="%(url)s">klikk her</a> for å komme igang.
           
         Eksporter kalenderfil:
         <a href="%(ical_lectures_url)s">forelesninger</a>,
         <a href="%(ical_exams_url)s">eksamener</a> eller
         <a href="%(ical_all_url)s">begge kombinert</a>.
       
        Visste du at du kan endre visningsnavn på emner under
        <a href="%(adavanced_url)s">avanserte innstillinger</a>?
        
        Visste du at du kan skjule forelesninger under
        <a href="%(adavanced_url)s">avanserte innstillinger</a>?
       
        Visste du at du kan velge hvilken parallell du tilhører,
        og at du kan velge mer enn én?
       
        Visste du at du alltid finner timeplanen din på: 
        <a href="%(shortcut_url)s">%(host)s%(shortcut_url)s</a>
       
          Gå til <a href="%(advanced_url)s#lectures">avanserte innstillinger</a>
          for å vise eller skjule forelesninger.
         
        Google Calendar:
        <a target="_blank" href="%(google_cal_prefix)s%(host)s%(ical_lectures_url)s">forelesninger</a>,
        <a target="_blank" href="%(google_cal_prefix)s%(host)s%(ical_exams_url)s">eksamener</a> eller
        <a target="_blank" href="%(google_cal_prefix)s%(host)s%(ical_all_url)s">begge kombinert</a>.
       
          Systemet kan dessverre ikke håndtere mer enn 
          %(max)s emner pr. timeplan.
         
        <a href="%(course_list_url)s">Emnelisten</a>
        viser alle emnene for inneværende semester (inkludert eksamensdatoer) 
        og lar deg enkelt legge dem til timeplanen.
       
            Hent en timeplan ved å oppgi samme navnet som da du             opprettet den.
           
            Topp %(limit)s emner for %(current)s
           
        <code>%(path)s</code> ble ikke funnet. Gå tilbake eller 
        prøv på nytt fra <a href="%(frontpage_url)s">hovedsiden</a>.
             
        Alle datoer og tider er hentet automatisk fra 
        <a href="%(url)s">%(institution)s nettsider</a>.
        Disse vil ikke alltid gjenspeile virkeligheten, grunnet endringer eller feilaktig dataimport.
        Tjenesten tilbys uten garantier, forviss deg om at dataene er riktige før du stoler på dem.
           
        Tilbake til <a href="%(adavanced_url)s">timeplanen</a>.
       
        Gå til <a href="%(advanced_url)s#courses">avanserte innstillinger</a>
        for å legge til eller fjerne emner.
             
        Neste semesters forelesninger er nå klare. 
        Gå til <a href="%(next_semester_url)s">%(next_semester_url)s</a>
        for å sette opp en timeplan.
       
      Kildekode og design &copy; 2008-%(year)s <b>Thomas Adamcik</b>.
      Siden har ingen offisiell tilknytning til %(institution)s.
       
      Kontroller om emnene som feilet finnes på 
      <a href="%(url)s">%(url)s</a>
      for dette semesteret.
         
      Timeplangenerator for %(institution)s-studenter
     
    %(slug)s%(ending)s timeplan for %(type)s %(year)s 
    %(slug)s%(ending)s timeplan for %(type)s %(year)s, uke %(week)s 
    Gå til <a href="%(groups_url)s">valg av paralleller</a>
    for å legge til eller fjerne paralleller.
   
    Statistikk for %(current)s
   
    Kildekoden deles under 
    <a href="http://www.gnu.org/licenses/agpl-3.0.html">Affero General Public License</a>
    på <a href="%(SOURCE_URL)s">%(SOURCE_URL)s</a>.
       %(slug)s' timeplan for %(semester)s %(year)s, %(resources)s %(slug)ss timeplan for %(semester)s %(year)s, %(resources)s Aktiv Legg til emne Legg til emne Lagt til Følgende emner ble ikke lagt inn: Avanserte innstillinger Alias Alle En feil oppstod, beklager bryderiet. Bygget ved hjelp av: Bytt paralleller for emner Endre paralleller Kode Kombinasjon Kunne ikke legge til ett eller flere emner Emne Emner Inneværende Dag Beskrivelse Ferdig Forfallsdato Varighet Varighet i timer Slutter engelsk Eksamen Eksamensdato Eksamenstid Eksamensform Eksamensformer Eksamener Kom i gang Parallell Paralleller Utleveringsdato Utleveringstid Skjul innstillinger Skjul valgte forelesninger Siste tidspunkt for import Forelesning Forelesningsliste Forelesningstype Forelesningstyper Forelesningsuke Forelesningsuker Foreleser Forelesere Legg til flere emner samtidig ved å skrive inn emnekoder adskilt med mellomrom. Navn Ingen timeplaner er opprettet enda. Ingen paralleller Ingen Norsk Antall timeplaner Antall timeplaner Valgfritt Siden kunne ikke finnes Velg din parallell. Oppgi emnekoder for emner du ønsker å vise Poeng Slett valgte Rom Rom Lagre paralleller Velg parallell Semester Semestre Serverfeil Vis frister Klikk lenken for å legge til i din Google Calendar. Last ned eller bruk lenken i valgfritt kalendersystem. (Må støtte ical-formatet). Timeplannavn Start Starter Student Studenter Abonnement Abonnementer Bytt til norsk Oppgave Serveradministrator er varslet om feilen. Tid Tips Antall unike emner lagt til Antall unike timeplaner Type URL Oppdater navn Versjon Ukedag Ukenummer Uker Uker:  År eksamener høsten drives på frivilig basis av forelesninger host var våren 