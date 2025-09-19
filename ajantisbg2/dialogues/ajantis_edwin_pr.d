//#1 (at rest)
CHAIN 
IF ~Global("C#AjantisEdwinRest","GLOBAL",1)~ THEN ~C#AJANJ~ AjantisEdwinRest
@0
DO ~SetGlobal("C#AjantisEdwinRest","GLOBAL",2)~
== BEDWIN @1
== C#AjanB @2
== BEDWIN @3
== C#AjanB @4
== BEDWIN @5
== C#AjanB @6
== BEDWIN @7
== C#AjanB @8
== BEDWIN @9
== C#AjanB @10 DO ~RestParty()~
EXIT


//#2
//code so that it only happened in a city, and for EdwinRomance not active, and Edwin = male
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Gender(Myself,MALE)
AreaType(CITY) 
!Global("EdwinRomance","GLOBAL",1)//(Edwin romance from SHS not active)  
!Global("EdwinRomance","GLOBAL",2)
Global("C#AjantisEdwin2","GLOBAL",0)~ THEN ~BEDWIN~ AjantisEdwin2
@11
DO ~SetGlobal("C#AjantisEdwin2","GLOBAL",1)~
== C#AjanB @12
== BEDWIN @13
== C#AjanB @14
== BEDWIN @15
== C#AjanB @16
== BEDWIN @17
== C#AjanB @18
EXIT

//#3 Ajantis comments on Edwin's power trip
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Gender(Myself,MALE)
GlobalGT("TalkedDegardan","GLOBAL",1) //after edwina 
Global("C#AjantisEdwin3","GLOBAL",0)~ THEN ~BEDWIN~ AjantisEdwin3
@19
DO ~SetGlobal("C#AjantisEdwin3","GLOBAL",1)~
== C#AjanB @20
== BEDWIN @21
== C#AjanB @22
== BEDWIN @23
= @24
== C#AjanB @25
= @26
EXIT
