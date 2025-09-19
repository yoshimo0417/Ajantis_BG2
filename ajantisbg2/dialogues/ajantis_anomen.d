//Ajantis - Anomen banter


//Anomen is knight
CHAIN
IF ~Global("C#AjantisAnomenCongratulations","GLOBAL",0)
Global("C#AjantisAnomenCongrats","GLOBAL",1)~ THEN C#AjanJ Ajantis_anomen_congratulations
@0 DO ~SetGlobal("C#AjantisAnomenCongratulations","GLOBAL",1) SetGlobal("C#AjantisAnomenCongrats","GLOBAL",2)~
== ANOMENJ @1
EXIT


//Ajantis-Anomen "sword banter"

/* Anomen passed test and is now Sir Anomen - independent of relationship status (at best, Anomen has his heart's desire, even if he does not have the support of his family; at worst, they are on equal footing) */

CHAIN
IF ~Global("C#AjantisAnomenSwordBanter","GLOBAL",1) Global("AnomenIsKnight","GLOBAL",1)~ THEN C#AjanJ AjantisSwordBanter1
@2
DO ~SetGlobal("C#AjantisAnomenSwordBanter","GLOBAL",2)~
== BANOMEN @3
= @4
== C#AjanJ @5
EXIT

/* Anomen failed test  */
/* Ajantis is still trying to be nice, hoping that even if Anomen has failed his test, he might still be reconciled with the Order. */

CHAIN
IF ~Global("C#AjantisAnomenSwordBanter","GLOBAL",1) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN C#AjanJ AjantisSwordBanter2
@2
DO ~SetGlobal("C#AjantisAnomenSwordBanter","GLOBAL",2)~
== BANOMEN @6
== BANOMEN IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN @7
== C#AjanJ @8
== BANOMEN @9
== BANOMEN IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @10
EXIT


/* Anomen- Ajantis banter */
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
!Dead("anomen")
InParty("anomen")
See("anomen")
!StateCheck("anomen",CD_STATE_NOTVALID)
Global("C#AjantisAnomen1","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~C#AJANB~ ajantis_anomen_1
@11 DO ~SetGlobal("C#AjantisAnomen1","GLOBAL",1)~ 
== BANOMEN @12
== C#AjanJ @13
= @14
EXIT

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
!Dead("C#Ajantis")
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisAnomen1","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~BANOMEN~ ajantis_anomen_2
@15 DO ~SetGlobal("C#AjantisAnomen1","GLOBAL",2)~ 
== C#AjanJ @16
== BANOMEN @17
== C#AjanJ @18
== BANOMEN @19
== C#AjanJ @20
= @21
EXIT



/* CN Anomen */

CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
!Dead("anomen")
InParty("anomen")
See("anomen")
!StateCheck("anomen",CD_STATE_NOTVALID)
Global("C#AjantisCNAnomen1","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~C#AjanJ~ ajantis_anomen_CN0
@30 DO ~SetGlobal("C#AjantisCNAnomen1","GLOBAL",1)~ 
== BANOMEN @31
== C#AjanJ @32
== BANOMEN @33
EXIT


CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
!Dead("C#Ajantis")
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisCNAnomen1","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~BANOMEN~ ajantis_anomen_CN1
@22 DO ~SetGlobal("C#AjantisCNAnomen1","GLOBAL",2)~ 
== C#AjanJ @23
EXIT

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
!Dead("C#Ajantis")
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisCNAnomen1","GLOBAL",2)
Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~BANOMEN~ ajantis_anomen_CN2
@24 DO ~SetGlobal("C#AjantisCNAnomen1","GLOBAL",3)~
== C#AjanJ @25
== BANOMEN @26
== C#AjanJ @27
== BANOMEN @28
= @29
EXIT
