EXTEND_BOTTOM DSHOP02 0
IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisJahaboam","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisJahaboam","GLOBAL",1)~ + ajantis_jahaboam
IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisJahaboam","GLOBAL",1)~ THEN + 14

IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisNewRomMatch","GLOBAL",1)
Global("C#AjantisJahaboam","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisJahaboam","GLOBAL",1)~ + ajantis_jahaboam
IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisNewRomMatch","GLOBAL",1)
Global("C#AjantisJahaboam","GLOBAL",1)~ THEN + 14
END

CHAIN
IF ~~ THEN DSHOP02 ajantis_jahaboam
#61147 
= @12
= #26475 
== C#AjanJ @13
== DSHOP02 @14
== C#AjanJ IF ~Global("C#AjantisEngaged","GLOBAL",1)~ THEN @15
== DSHOP02 IF ~Global("C#AjantisEngaged","GLOBAL",1)~ THEN @16
== C#AjanJ IF ~!Global("C#AjantisEngaged","GLOBAL",1)~ THEN @34
== DSHOP02 IF ~!Global("C#AjantisEngaged","GLOBAL",1)~ THEN #26477
END
++ @17 + ajantis_jahaboam_01
+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @18 + ajantis_jahaboam_02
+ ~!Global("C#AjantisEngaged","GLOBAL",1)~ + @35 + ajantis_jahaboam_01


APPEND DSHOP02

IF ~~ THEN ajantis_jahaboam_01
SAY #9660 
IF ~~ THEN + ajantis_jahaboam_03
END

IF ~~ THEN ajantis_jahaboam_02
  SAY #26477 
IF ~~ THEN + ajantis_jahaboam_01
END

IF ~~ THEN ajantis_jahaboam_03
  SAY #9674 
+ ~PartyGoldGT(19)~ + @0 EXTERN C#AjanJ ajantis_jahaboam_04a
+ ~PartyGoldLT(20)~ + @0 EXTERN C#AjanJ ajantis_jahaboam_04b
++ @1 DO ~SetGlobal("C#AjantisJahaboamNo","GLOBAL",1)~ EXTERN C#AjanJ ajantis_jahaboam_04c
++ @2 DO ~SetGlobal("C#AjantisJahaboamNo","GLOBAL",1)~ EXTERN C#AjanJ ajantis_jahaboam_04c 
END

IF ~~ THEN ajantis_jahaboam_04
  SAY #9701 
++ @3 DO ~GiveItemCreate("C#MISC5W",LastTalkedToBy,0,0,0)~ + ajantis_jahaboam_05

+ ~GlobalLT("C#AjantisPCMarriage","GLOBAL",2) Global("C#AjantisEngaged","GLOBAL",1)~ + @4 DO ~GiveItemCreate("C#MISC5W",LastTalkedToBy,0,0,0)~ + ajantis_jahaboam_06
+ ~Global("C#AjantisPCMarriage","GLOBAL",2) Global("C#AjantisEngaged","GLOBAL",1)~ + @5 DO ~GiveItemCreate("C#MISC5W",LastTalkedToBy,0,0,0)~ + ajantis_jahaboam_06

+ ~Global("C#AjantisJahaboamNo","GLOBAL",1)~ + @6 EXTERN C#AjanJ ajantis_jahaboam_06c
END

IF ~~ THEN ajantis_jahaboam_05
  SAY #26491 
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN DSHOP02 ajantis_jahaboam_06
#9696 
== C#AjanJ @7
END
++ @8 EXTERN C#AjanJ ajantis_jahaboam_06a
++ @9 EXTERN C#AjanJ ajantis_jahaboam_06a
++ @10 EXTERN C#AjanJ ajantis_jahaboam_06b

CHAIN
IF ~~ THEN DSHOP02 ajantis_jahaboam_07
#9710 
== C#AjanJ @11 
END
IF ~~ THEN + ajantis_jahaboam_05





APPEND C#AjanJ

IF ~~ THEN ajantis_jahaboam_04a
SAY @19
IF ~~ THEN DO ~TakePartyGold(20)
GiveItemCreate("C#MISC5W",LastTalkedToBy,0,0,0)~ EXTERN DSHOP02 ajantis_jahaboam_07
END

IF ~~ THEN ajantis_jahaboam_04aa
SAY @20
IF ~~ THEN DO ~TakePartyGold(20)
GiveItemCreate("C#MISC5W",LastTalkedToBy,0,0,0)~ EXTERN DSHOP02 ajantis_jahaboam_07
END

IF ~~ THEN ajantis_jahaboam_04b
SAY @21
IF ~~ THEN EXTERN DSHOP02 ajantis_jahaboam_04
END

IF ~~ THEN ajantis_jahaboam_04bb
SAY @22
IF ~~ THEN EXTERN DSHOP02 ajantis_jahaboam_04
END

IF ~~ THEN ajantis_jahaboam_04c
SAY @23
+ ~PartyGoldGT(19)~ + @24 + ajantis_jahaboam_04aa
+ ~PartyGoldLT(20)~ + @24 + ajantis_jahaboam_04bb
++ @25 + ajantis_jahaboam_06c
++ @26 + ajantis_jahaboam_06c
END

IF ~~ THEN ajantis_jahaboam_06a
SAY @27
IF ~~ THEN EXTERN DSHOP02 ajantis_jahaboam_05
END

IF ~~ THEN ajantis_jahaboam_06b
SAY @28
IF ~~ THEN EXTERN DSHOP02 ajantis_jahaboam_05
END

IF ~~ THEN ajantis_jahaboam_06c
SAY @29
IF ~~ THEN EXTERN DSHOP02 ajantis_jahaboam_05
END

END


//------------
/* Medallion für Ajantis, "Global("C#AjantisMedallion","GLOBAL",1)" */

EXTEND_BOTTOM DSHOP02 14
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionDSHOP02","GLOBAL",0)~ + @30 DO ~SetGlobal("C#AjantisMedallionDSHOP02","GLOBAL",1)~ + ajantis_medallion_01
END

APPEND DSHOP02 
IF ~~ THEN ajantis_medallion_01
SAY @31
++ @32 EXIT
++ @33 DO ~StartStore("dshop02",LastTalkedToBy())
~ EXIT
END

END //APPEND DSHOP02
