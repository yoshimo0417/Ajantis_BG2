//Mazzy-Valygar "squire ship"
CHAIN
IF WEIGHT #-1 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) 
InParty("mazzy")
Detect("mazzy") InMyArea(Player1)
!StateCheck("mazzy",CD_STATE_NOTVALID)
!Dead("mazzy")
InParty("valygar")
!Dead("valygar")
GlobalGT("MazzyValygar","GLOBAL",0) //after Mazzy-Valygar "squire" banter
Global("C#AjantisMazzySquire","GLOBAL",0)~ THEN ~C#AjanB~ mazzy_squire
@0
DO ~SetGlobal("C#AjantisMazzySquire","GLOBAL",1)~
== BMAZZY @1
== C#AjanB @2
== BMAZZY @3
== C#AjanB @4
== BMAZZY @5
== C#AjanB @6
== BMAZZY @7
EXIT

//#1
CHAIN
IF WEIGHT #-1 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("mazzy")
Detect("mazzy") InMyArea(Player1)
!StateCheck("mazzy",CD_STATE_NOTVALID)
!Dead("mazzy")
Global("C#Ajantis_MazzyBanter","GLOBAL",0)~ THEN ~C#AjanB~ ajantismazzy_01
@8 DO ~SetGlobal("C#Ajantis_MazzyBanter","GLOBAL",1)~
== BMAZZY @9
== C#AjanB @10
== BMAZZY @11
== C#AjanB @12
EXIT

//#2
CHAIN
IF WEIGHT #-1 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("mazzy")
See("mazzy") 
!StateCheck("mazzy",CD_STATE_NOTVALID)
!Dead("mazzy")
Global("C#Ajantis_JanBanter","GLOBAL",1) //after Jan-banter
Global("C#Ajantis_MazzyBanter2","GLOBAL",0)~ THEN ~C#AjanB~ ajantismazzy_03 
@13 DO ~SetGlobal("C#Ajantis_MazzyBanter2","GLOBAL",1)~
== BMAZZY @14
== C#AjanB @15
== BMAZZY @16
== C#AjanB @17
== BMAZZY @18
== C#AjanB @19
== BMAZZY @20
EXIT

//#3
//Ajantis-Mazzy4
/* Mazzy wants to go to Waterdeep */
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Detect("C#Ajantis") InMyArea(Player1)
!Dead("C#Ajantis")
Global("C#Ajantis_MazzyBanter","GLOBAL",1)~ THEN BMAZZY AjantisMazzy04
@21
DO ~SetGlobal("C#Ajantis_MazzyBanter","GLOBAL",2)~
== C#AjanB @22
== BMAZZY @23
== C#AjanB @24
== BMAZZY @25
== C#AjanB @26
== BMAZZY @27
EXIT

//#4
CHAIN
IF WEIGHT #-1 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("mazzy")
Detect("mazzy") InMyArea(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("mazzy",CD_STATE_NOTVALID)
!Dead("mazzy")
Global("C#Ajantis_MazzyBanter","GLOBAL",2)~ THEN ~C#AjanB~ ajantismazzy_02
@28 DO ~SetGlobal("C#Ajantis_MazzyBanter","GLOBAL",3)~
== BMAZZY @29
== C#AjanB @30 
== BMAZZY @31
== C#AjanB @32
== BMAZZY @33
EXIT
