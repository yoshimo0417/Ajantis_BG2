//Imoen; Romanzencheck Irenicus Dungeon


/* Imoen's dialogue about Ajantis in ID*/
/* Imoen.bcs */
//eternal imoen from BGT: imoen2j.dlg for BGT!

APPEND %IMOENJ%

IF WEIGHT #-1
~Global("C#AJ_ImoenAjantisCheck","GLOBAL",1)~ THEN ajantischeck_01
SAY @0
= @1
= @2
++ @15 DO ~SetGlobal("C#AJ_ImoenAjantisCheck","GLOBAL",2)~ + ajantischeck_03
++ @3 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",1) SetGlobal("C#AJ_ImoenAjantisCheck","GLOBAL",2)~ + ajantischeck_02
++ @4 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AJ_ImoenAjantisCheck","GLOBAL",2)~ + ajantischeck_02
++ @14 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AJ_ImoenAjantisCheck","GLOBAL",2)~ + ajantischeck_02

++ @5 DO ~
SetGlobal("C#AjantisEngaged","GLOBAL",2)
SetGlobal("C#AjantisRomanceActive","GLOBAL",0)
SetGlobal("C#AjanEngagementBrokenBG1","GLOBAL",1) 
SetGlobal("C#AJ_ImoenAjantisCheck","GLOBAL",2)~ + ajantischeck_02
END 


IF ~~ THEN ajantischeck_02
SAY @6
IF ~~ THEN EXIT
END

IF ~~ THEN ajantischeck_03
SAY @16
++ @19 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",1)~ + ajantischeck_02
++ @17 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2)~ + ajantischeck_02
++ @18 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2)~ + ajantischeck_02
++ @20 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) 
SetGlobal("C#AjantisRomanceActive","GLOBAL",0)
SetGlobal("C#AjanEngagementBrokenBG1","GLOBAL",1)~ + ajantischeck_02
END

END



//Bystander 2 (Lady Beth)

EXTEND_BOTTOM BYSTAND2 3
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @7 + bystander_01
END

EXTEND_BOTTOM BYSTAND2 7
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @7 + bystander_02
END

APPEND BYSTAND2 

IF ~~ THEN bystander_01
SAY @8
COPY_TRANS BYSTAND2 3
END

IF ~~ THEN bystander_02
SAY @8
COPY_TRANS BYSTAND2 7
END

END

//Bystander 1

EXTEND_BOTTOM BYSTAND1 0
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @7 + bystander1_01
END

EXTEND_BOTTOM BYSTAND1 1
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @7 + bystander1_02
END

APPEND BYSTAND1 

IF ~~ THEN bystander1_01
SAY @8
COPY_TRANS BYSTAND1 0
END

IF ~~ THEN bystander1_02
SAY @8
COPY_TRANS BYSTAND1 1
END

END

//Jaheira:  the Order of the Most Radiant Heart
INTERJECT JAHEIRAJ 17 C#AjantisJaheiraOrder
== JAHEIRAJ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisPCBrokeRomance","GLOBAL",1) !Global("C#AjanEngagementBrokenBG1","GLOBAL",1)~ THEN @9
END
++ @10 + orden_athkatla
++ @11 + orden_athkatla
++ @12 + orden_athkatla

APPEND JAHEIRAJ

IF ~~ THEN orden_athkatla
SAY @13
COPY_TRANS JAHEIRAJ 17
END

END
