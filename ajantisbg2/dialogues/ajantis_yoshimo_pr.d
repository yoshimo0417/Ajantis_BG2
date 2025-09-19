CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
Detect("C#Ajantis") InMyArea(Player1)
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#Ajantis_YoshimoBanter1","GLOBAL",0)~ THEN ~BYOSHIM~ ajantisyoshimo_01
@0 DO ~SetGlobal("C#Ajantis_YoshimoBanter1","GLOBAL",1)~
== C#AjanB @1
== BYOSHIM @2
== C#AjanB @3
== BYOSHIM @4
== C#AjanB @5
== BYOSHIM @6
== C#AjanB @7
== BYOSHIM @8
EXIT

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
Detect("C#Ajantis") InMyArea(Player1)
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#Ajantis_YoshimoBanter1","GLOBAL",1)~ THEN ~BYOSHIM~ ajantisyoshimo_02
@9 DO ~SetGlobal("C#Ajantis_YoshimoBanter1","GLOBAL",2)~
== C#AjanB @10
== BYOSHIM @11
== C#AjanB @12
== BYOSHIM @13
== C#AjanB @14
EXIT

CHAIN
IF WEIGHT #-1 ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("yoshimo")
Detect("yoshimo") InMyArea(Player1)
!StateCheck("yoshimo",CD_STATE_NOTVALID)
!Dead("yoshimo")
Global("C#Ajantis_YoshimoBanter1","GLOBAL",2)~ THEN ~C#AjanB~ ajantisyoshimo_03
@15 DO ~SetGlobal("C#Ajantis_YoshimoBanter1","GLOBAL",3)~
== BYOSHIM @16
== C#AjanB @17
== BYOSHIM @18
== C#AjanB @19
== BYOSHIM @20
== C#AjanB @21
== BYOSHIM @22
== C#AjanB @23
== BYOSHIM @24
EXIT

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
Detect("C#Ajantis") InMyArea(Player1)
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#Ajantis_YoshimoBanter1","GLOBAL",3)~ THEN ~BYOSHIM~ ajantisyoshimo_04
@25 DO ~SetGlobal("C#Ajantis_YoshimoBanter1","GLOBAL",4)~
== C#AjanB @26
== BYOSHIM @27
== C#AjanB @28
== BYOSHIM @29
== C#AjanB @30
== BYOSHIM @31
EXIT

