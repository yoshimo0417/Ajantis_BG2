//Minsc/Ajantis #1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("minsc")
See("minsc")
!StateCheck("minsc",CD_STATE_NOTVALID)
!Dead("Minsc")
Global("C#AjantisMinsk","GLOBAL",0)~ THEN ~C#AjanB~ AjantisMinsk1
@0
DO ~SetGlobal("C#AjantisMinsk","GLOBAL",1)~
== BMINSC @1
== C#AjanB @2
== BMINSC IF ~InParty("aerie") !Dead("aerie") Global("MinscWitch","GLOBAL",1)~ THEN @3
== BAERIE IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID) !Dead("aerie") Global("MinscWitch","GLOBAL",1) See("aerie")~ THEN @4
== BMINSC @5
== C#AjanB @6
== BMINSC @7
== C#AjanB @8
== BMINSC @9
== C#AjanB @10
== BMINSC @11
== C#AjanB @12
EXIT

//Minsc/Ajantis #2
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("minsc")
See("minsc")
!StateCheck("minsc",CD_STATE_NOTVALID)
!Dead("Minsc")
Global("C#AjantisMinsk","GLOBAL",1)~ THEN ~C#AjanB~ AjantisMinsk2
@13
DO ~SetGlobal("C#AjantisMinsk","GLOBAL",2)~
== BMINSC @14
== C#AjanB @15
== BMINSC @16
== BJAN IF ~InParty("jan") !Dead("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @17
== BMINSC IF ~InParty("jan") !Dead("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @18
== C#AjanB @19
== BMINSC @20
== C#AjanB @21
= @22
== BMINSC @23
= @24
== C#AjanB @25
EXIT



//This would be a before rest banter #3

CHAIN 
IF ~Global("C#AjantisMinsk3","GLOBAL",1)~ THEN ~C#AJANJ~ AjantisMinsk3
@26
DO ~SetGlobal("C#AjantisMinsk3","GLOBAL",2)~
== BMINSC @27
== C#AjanB @28
== BMINSC @29 DO ~RestParty()~
EXIT


//#4
//Wilderness area, especially somewhere like the Forest of Thetyr, where getting somewhere is a bit tough, maybe start a timer when the party enters, have it set for something like 1800 real time, and have it stop if the party leaves the area (i.e. goes straight on to Sudanessellar).

CHAIN 
IF WEIGHT #-1 ~Global("C#AjantisMinsc4Area","GLOBAL",6)~ THEN ~MINSCJ~ AjantisMinsk4
@30
DO ~SetGlobal("C#AjantisMinsc4Area","GLOBAL",7)~
== C#AjanB @31
== BMINSC @32
== C#AjanB @33 
EXIT


