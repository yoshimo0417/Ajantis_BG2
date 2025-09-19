//#1, Haer'Dalis is tired
CHAIN 
IF ~Global("C#AjantisHaerDalis1","GLOBAL",1)~ THEN ~C#AJANJ~ AjantisHaerDalis1
@0
DO ~SetGlobal("C#AjantisHaerDalis1","GLOBAL",2)~
== ~BHAERDA~ @1
== ~C#AJANJ~ @2
== ~BHAERDA~ @3
== ~C#AJANJ~ @4
END
++ @5 EXTERN C#AJANJ C#AHD1.1
++ @6 EXTERN C#AJANJ C#AHD1.2
++ @7 EXTERN C#AJANJ C#AHD1.3

APPEND C#AJANJ
IF ~~ THEN BEGIN C#AHD1.1
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AHD1.2
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AHD1.3
SAY @10
IF ~~ THEN EXIT
END

END//APPEND C#AJANJ


//Ajantis-Haer'Dalis 2 INN

CHAIN 
IF ~Global("C#AjantisHaerDalis2","GLOBAL",2)~ THEN ~C#AJANJ~ AjantisHaerDalis2
@11
DO ~SetGlobal("C#AjantisHaerDalis2","GLOBAL",3)~
== ~BHAERDA~ @12
== ~C#AJANJ~ @13
== ~BHAERDA~ @14
== ~C#AJANJ~ @15
== ~BHAERDA~ @16
== ~C#AJANJ~ @17
== ~Bimoen2~ IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @18
== ~C#AJANJ~ IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @19
== ~BHAERDA~ @20
== ~C#AJANJ~ @21 DO ~RestParty()~ 
EXIT


//Ajantis-Haer'Dalis 3

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
!Dead("haerdalis")
InParty("haerdalis")
See("haerdalis")
!StateCheck("haerdalis",CD_STATE_NOTVALID)
Global("C#AjantisHaerDalis3","GLOBAL",0)~ THEN ~C#AJANB~ AjantisHaerDalis3
@22
DO ~SetGlobal("C#AjantisHaerDalis3","GLOBAL",1)~
== ~BHAERDA~ @23
== ~C#AjanB~ @24
== ~BHAERDA~ @25
== ~C#AjanB~ @26
== ~BHAERDA~ @27
== ~C#AjanB~ @28
== ~BHAERDA~ @29
EXIT


//Ajantis-Haer'Dalis 4
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis") 
!Dead("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisHaerDalis3","GLOBAL",1)~ THEN ~BHAERDA~ AjantisHaerDalis4
@30
DO ~SetGlobal("C#AjantisHaerDalis3","GLOBAL",2)~
== C#AjanB @31 
== BHAERDA @32
== C#AjanB @33
== BHAERDA @34
== C#AjanB @35
EXIT


//for Aerie - Haer'Dalis romance
CHAIN 
IF ~Global("C#AjantisHaerDalAerie","GLOBAL",2)~ THEN ~C#AJANJ~ AjantisHaerDalisAerie
@36
DO ~SetGlobal("C#AjantisHaerDalAerie","GLOBAL",3)~
== ~BHAERDA~ @37
== C#AJANJ @38
== ~BHAERDA~ @39
== C#AJANJ @40
EXIT
