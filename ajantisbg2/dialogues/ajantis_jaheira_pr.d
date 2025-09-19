//Jaheira/Ajantis 


//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#AjantisJaheira","GLOBAL",0)~ THEN ~BJAHEIR~ AjantisJaheira1
@0
DO ~SetGlobal("C#AjantisJaheira","GLOBAL",1)~
== C#AjanB @1
== BJAHEIR @2
== C#AjanB @3
== BJAHEIR @4
== C#AjanB @5
== BJAHEIR @6
EXIT

//#2
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("jaheira")
See("jaheira")
!StateCheck("jaheira",CD_STATE_NOTVALID)
!Dead("jaheira")
AreaType(OUTDOOR)
!AreaType(CITY)
Global("C#AjantisJaheira","GLOBAL",1)~ THEN ~C#AjanB~ AjantisJaheira2
@7
DO ~SetGlobal("C#AjantisJaheira","GLOBAL",2)~
== BJAHEIR @8
== C#AjanB @9
== BJAHEIR @10
== BYOSHIM IF ~InParty("yoshimo")
See("yoshimo")
!StateCheck("yoshimo",CD_STATE_NOTVALID)~ @11
== C#AjanB @12 DO ~ApplySpellRES("c#aj012b","C#Ajantis")~
== BJAHEIR @13
== C#AjanB @14
== BJAHEIR @15
EXIT


//#3
/* Ajantis and Jaheira argue about whose turn it is to cook dinner */
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
See("C#Ajantis")
!Dead("C#Ajantis")
Global("C#AjantisJaheira","GLOBAL",2)~ THEN BJAHEIR AjantisJaheiraBanter_03
@16
DO ~SetGlobal("C#AjantisJaheira","GLOBAL",3)~
== C#AjanB @17
== BJAHEIR @18
== C#AjanB @19
== BJAHEIR @20
== C#AjanB @21
== BJAHEIR @22
== C#AjanB @23
== BJAHEIR @24
== C#AjanB @26
== BJAHEIR @27
== C#AjanB @25
EXIT