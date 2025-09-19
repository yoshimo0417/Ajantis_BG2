//#1

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
AreaType(CITY)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisCernd1","GLOBAL",0)~ THEN ~BCERND~ AjantisCernd1
@0
DO ~SetGlobal("C#AjantisCernd1","GLOBAL",1)~
== C#AjanB @1
== BCERND @2
== C#AjanB @3
== BCERND @4
== C#AjanB @5
== BCERND @6
== C#AjanB @7
== BCERND @8
EXIT

//#2
//Conditions: after defeating Faldorn

//Dead("CEFALD01")

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("C#AjantisCernd2","GLOBAL",0)
Dead("CEFALD01")
~ 
THEN ~C#AjanB~ AjantisCernd2
@9
DO ~SetGlobal("C#AjantisCernd2","GLOBAL",1)~
== BCERND @10
== C#AjanB @11
== BCERND @12
= @22
== C#AjanB @13
== BCERND @14
== C#AjanB @15
EXIT


//#3
//Conditions: if Cernd rejoins the party after placing Ashdale in the care of the druids at the Grove

//GlobalGT("CerndSpawnAfterBabyDelivered","GLOBAL",0)

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("C#AjantisCernd3","GLOBAL",0)
GlobalGT("CerndSpawnAfterBabyDelivered","GLOBAL",0)
~ 
THEN ~C#AjanB~ AjantisCernd3
@16
DO ~SetGlobal("C#AjantisCernd3","GLOBAL",1)~
== BCERND @17
== C#AjanB @18
== BCERND @19
== C#AjanB @20
== BCERND @21
EXIT
