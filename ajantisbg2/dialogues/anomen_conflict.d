//Anomen - Ajantis romance conflict, i.e. both are romancing PC


//Anomen is squire

CHAIN 
IF WEIGHT #-1
~Global("C#AjanAnomenConflictSquire","GLOBAL",1)~ THEN ~C#AJANJ~ ajantis_anomen_conflict_squire
@0 DO ~SetGlobal("C#AjanAnomenConflictSquire","GLOBAL",2)~
== BANOMEN @1
== C#AjanJ @2
== BANOMEN @3
== C#AjanJ @4
== BANOMEN @5
== C#AjanJ @6
EXIT


//Anomen is knighted, shortly before his first confession to <CHARNAME>:
//no talk at this stage for CN Anomen

CHAIN 
IF WEIGHT #-1
~Global("C#AjanAnomenConflictKnight","GLOBAL",1)~ THEN ~ANOMENJ~ ajantis_anomen_conflict_knight
@7 DO ~SetGlobal("C#AjanAnomenConflictKnight","GLOBAL",2)~
== C#AjanJ @8
== BANOMEN @9
== C#AjanJ @10
== BANOMEN @11
== C#AjanJ @12
EXIT

//If Ajantis joins the party shortly before the love confession
//Sir Anomen (LG)
CHAIN 
IF WEIGHT #-1
~Global("C#AjanAnomenConflictKnight2","GLOBAL",1)~ THEN ~C#AJANJ~ ajantis_anomen_conflict_knight2
@13 DO ~SetGlobal("C#AjanAnomenConflictKnight2","GLOBAL",2)~
== BANOMEN @14
== C#AjanJ @15
== BANOMEN @16
== C#AjanJ @4
== BANOMEN @17
== C#AjanJ @18
== BANOMEN @19
== C#AjanJ @10
== BANOMEN @11
== C#AjanJ @12
EXIT


//If Ajantis joins the party shortly before the love confession
//CN - Anomen 

CHAIN 
IF WEIGHT #-1
~Global("C#AjanAnoConflictNotKnight","GLOBAL",1)~ THEN ~C#AJANJ~ ajantis_anomen_conflict_knight
@20 DO ~SetGlobal("C#AjanAnoConflictNotKnight","GLOBAL",2)~
== BANOMEN @21
== C#AjanJ @22
== BANOMEN @23
EXIT


//PC chooses Anomen over Ajantis
//After PC told Anomen "I love you" (second Anomen night talk)

//LG Anomen
CHAIN 
IF WEIGHT #-1
~Global("C#AjantisPCChoseAnomen","GLOBAL",2) Global("AnomenIsKnight","GLOBAL",1)~ THEN ~C#AJANJ~ ajantis_anomen_conflict_anoromance1
@24 DO ~SetGlobal("C#AjantisPCChoseAnomen","GLOBAL",3)~
== BANOMEN @25
== C#AjanJ @26
== BANOMEN @27
== C#AjanJ @28
= @29
= @30
EXIT

//CN Anomen

CHAIN 
IF WEIGHT #-1
~Global("C#AjantisPCChoseAnomen","GLOBAL",2) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~C#AJANJ~ ajantis_anomen_conflict_anoromance2
@31 DO ~SetGlobal("C#AjantisPCChoseAnomen","GLOBAL",3)~
== BANOMEN @32
== C#AjanJ @33
== BANOMEN @34
== C#AjanJ @35
== BANOMEN @36
== C#AjanJ @37
EXIT


/* Additions to BANOMEN.dlg */

/* Add action states if PC slept with Anomen */

ADD_TRANS_ACTION BANOMEN BEGIN 432 434 366 END BEGIN END ~SetGlobal("C#AjantisPCSleptWithAno","GLOBAL",1)~

/* adding action states to ensure AnomenRomanceActive has the right value depending on the PC's behaviour */

ADD_TRANS_ACTION BANOMEN BEGIN 434 END BEGIN END ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~

ADD_TRANS_ACTION BANOMEN BEGIN 464 437 399 END BEGIN END ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~


/* adding interjection if PC kissed CN Anomen - why does this guy have to be so complicated? */

INTERJECT BANOMEN 350 C#AnomenKissedPC
== ~C#AjanJ~ IF ~InParty("C#Ajantis") !Dead("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) !Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)~ THEN 
@38 
END BANOMEN pc_kuss

CHAIN 
IF ~~ THEN BANOMEN pc_kuss
@39
= @40
== ~C#AjanJ~ @41
END
++ @42 EXTERN C#AjanJ ajantis_pc_kuss_01
++ @43 EXTERN C#AjanJ ajantis_pc_kuss_02
++ @44 EXTERN C#AjanJ ajantis_pc_kuss_02
++ @45 EXTERN C#AjanJ ajantis_pc_kuss_03

APPEND C#AjanJ
IF ~~ THEN ajantis_pc_kuss_01
SAY @46
IF ~~ THEN EXTERN BANOMEN pc_kuss_01
END

IF ~~ THEN ajantis_pc_kuss_02
SAY @47
IF ~~ THEN EXTERN BANOMEN pc_kuss_01
END

IF ~~ THEN ajantis_pc_kuss_03
SAY @48
IF ~~ THEN EXTERN BANOMEN pc_kuss_01
END

END

APPEND BANOMEN 
IF ~~ THEN pc_kuss_01
SAY @49
COPY_TRANS BANOMEN 350
END

END

EXTEND_BOTTOM BANOMEN 80 //Ajantis still far away
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ + @50 + banomen_80
END

EXTEND_BOTTOM BANOMEN 80 //Ajantis seems dead
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)	
Global("C#AjantisEngaged","GLOBAL",1)
GlobalGT("DomainPaladinBattle","GLOBAL",0) 
Global("C#AjantisExistiert","GLOBAL",0)~ + @51 + banomen_80_02
END

EXTEND_BOTTOM BANOMEN 347
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ + @52 + 354
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)~ + @53 + 354
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) InParty("C#Ajantis") !Dead("C#Ajantis")~ + @54 + 354
END

EXTEND_BOTTOM BANOMEN 361
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) InParty("C#Ajantis")~ + @55 + 371
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) InParty("C#Ajantis")~ + @56 + 368
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) 
!InParty("C#Ajantis")
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ + @57 + 371
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1) 
!InParty("C#Ajantis")~ + @58 + 368
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) 
!InParty("C#Ajantis")
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)~ + @59 + 366
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) 
!InParty("C#Ajantis")
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)~ + @60 + 371
END

EXTEND_BOTTOM BANOMEN 411
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ + @61 + banomen_411
END

EXTEND_BOTTOM BANOMEN 416
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @62 + 421
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ + @63 + 418
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)~ + @64 + 418
END

EXTEND_BOTTOM BANOMEN 429
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) InParty("C#Ajantis")~ + @65 + 438
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ + @66 + 438
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) !InParty("C#Ajantis")
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)~ + @67 + 438
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) !InParty("C#Ajantis")
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)~ + @59 + 433
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ + @58 + 436
END


APPEND BANOMEN

IF ~~ THEN banomen_80
SAY @68
COPY_TRANS BANOMEN 80
END

IF ~~ THEN banomen_80_02
SAY @69
COPY_TRANS BANOMEN 80
++ @70 + banomen_80_03
END

IF ~~ THEN banomen_80_03
SAY @71
IF ~~ THEN EXIT
END

IF ~~ THEN banomen_411
SAY @72
IF ~~ THEN + 414 
END

IF ~~ THEN banomen_106_01
SAY @73
COPY_TRANS BANOMEN 106
END

IF ~~ THEN banomen_416
SAY @72
IF ~~ THEN + 414 
END

END


I_C_T BANOMEN 99 C#Banomen_Add_99_01
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",1)~ THEN @74
END

I_C_T BANOMEN 99 C#Banomen_Add_99_02
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)~ THEN @75
END

I_C_T BANOMEN 106 C#Banomen_Add_106_01
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ THEN @76
END

INTERJECT BANOMEN 106 C#Banomen_Add_106_02
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)~ THEN @77
END
++ @78 + banomen_106_01
++ @79 + banomen_106_01
++ @80 + 113

I_C_T BANOMEN 343 C#Banomen_Add_343
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",1)~ THEN @81
END

I_C_T BANOMEN 360 C#Banomen_Add_360
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) InParty("C#Ajantis") !Dead("C#Ajantis")~ THEN @82
END

I_C_T BANOMEN 427 C#Banomen_Add_427_01
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	GlobalGT("C#AjanAnomenConflictKnight","GLOBAL",0)
	GlobalGT("C#AjanAnomenConflictKnight2","GLOBAL",0)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)~ THEN @83
END

I_C_T BANOMEN 427 C#Banomen_Add_427_02
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
	Global("DomainPaladinBattle","GLOBAL",0)
	Global("C#AjantisExistiert","GLOBAL",1)
Global("C#AjanAnomenConflictKnight","GLOBAL",0)
Global("C#AjanAnomenConflictKnight2","GLOBAL",0)~ THEN @84
END

I_C_T BANOMEN 427 C#Banomen_Add_427_03
== ~BANOMEN~ IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisExistiert","GLOBAL",0) GlobalGT("DomainPaladinBattle","GLOBAL",0)~ THEN @85
END

