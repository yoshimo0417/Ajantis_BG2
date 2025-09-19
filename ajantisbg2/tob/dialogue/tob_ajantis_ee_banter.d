/* Ajantis - Rasaad ToB */


//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
GlobalGT("OHR_FINALE","GLOBAL",22)
Global("C#AjantisRasaadToB","GLOBAL",0)~ THEN ~C#Aja25B~ AjantisRasaadToB1
@0
DO ~SetGlobal("C#AjantisRasaadToB","GLOBAL",1)~
== BRASAA25 @1
== C#Aja25B @2
== BRASAA25 @3
= @4
== C#Aja25B @5
EXIT


/* Ajantis - Neera ToB*/


//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
Dead("OHNVICRO")
Global("C#AjantisNeeraToB","GLOBAL",0)~ THEN ~C#Aja25B~ AjantisNeeraToB1
@6
DO ~SetGlobal("C#AjantisNeeraToB","GLOBAL",1)~
== BNEERA25 @7
== C#Aja25B @8
== BNEERA25 @9
EXIT

/* Ajantis - Wilson ToB */

//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Wilson")
See("Wilson")
!StateCheck("Wilson",CD_STATE_NOTVALID)
Global("C#AjantisWilsonToB","GLOBAL",0)~ THEN ~C#Aja25B~ AjantisWilsonToB1
@10
DO ~SetGlobal("C#AjantisWilsonToB","GLOBAL",1)~
== BWILSO25 #79174 /* ~Growl?~ */
== C#Aja25B @11
= @12
EXIT
