//Mazzy - Valygar "squire ship"

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
!Dead("valygar")
InParty("valygar")
See("valygar")
!StateCheck("valygar",CD_STATE_NOTVALID)
InParty("mazzy")
!Dead("mazzy")
Global("C#AjantisValygarSquire","GLOBAL",0)
Global("C#AjantisMazzySquire","GLOBAL",1) //banter with Mazzy fired
GlobalGT("MazzyValygar","GLOBAL",0)~ THEN ~C#AJANB~ AjantisValygarSquire
@0
DO ~SetGlobal("C#AjantisValygarSquire","GLOBAL",1)~
== BVALYGA @1
== C#AjanB @2
== BVALYGA @3
== C#AjanB @4
EXIT


//(Night, wilderness area)

CHAIN 
IF ~Global("C#AjantisValygarWeather","GLOBAL",1)~ THEN ~C#AJANJ~ AjantisValygarWeather
@5
DO ~SetGlobal("C#AjantisValygarWeather","GLOBAL",2)~
== BVALYGA @6
== C#AJANJ @7
== BVALYGA @8
== C#AJANJ @9
== BVALYGA @10
== C#AJANJ @11
== BVALYGA @12
== C#AJANJ @13
EXIT


//#2
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
Global("C#AjantisValygar","GLOBAL",0)~ THEN ~BVALYGA~ AjantisValygar1
@14
DO ~SetGlobal("C#AjantisValygar","GLOBAL",1)~
== C#AJANB @15
== BVALYGA @16
== C#AJANB @17
== BVALYGA @18
== C#AJANB @19
EXIT


//#3
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
!Dead("valygar")
InParty("valygar")
See("valygar")
!StateCheck("valygar",CD_STATE_NOTVALID)
Global("C#AjantisValygar","GLOBAL",1)~ THEN ~C#AJANB~ AjantisValygar2
@20
DO ~SetGlobal("C#AjantisValygar","GLOBAL",2)~
== BVALYGA @21
== C#AjanB @22
== BVALYGA @23
== C#AjanB @24
== BVALYGA @25
== C#AjanB @26
== BVALYGA @27
EXIT

//#4
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
Global("C#AjantisValygar","GLOBAL",2)~ THEN ~BVALYGA~ AjantisValygar3
@28
DO ~SetGlobal("C#AjantisValygar","GLOBAL",3)~
== C#AjanB @29
== BVALYGA @30
== C#AjanB @31
== BVALYGA @32
== C#AjanB @33
== BVALYGA @34
= @35
== C#AjanB @36
= @37
== BNALIA IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID) !Dead("nalia")~ @38
== BJAN IF ~InParty("jan") !StateCheck("jan",CD_STATE_NOTVALID) !Dead("jan")~ @39
== C#AjanB IF ~InParty("jan") !StateCheck("jan",CD_STATE_NOTVALID) !Dead("jan")~ @40
== BVALYGA @41
EXIT




