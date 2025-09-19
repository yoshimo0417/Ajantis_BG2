//Ajantis - Jan #1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("jan")
Detect("jan") 
InMyArea(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("jan",CD_STATE_NOTVALID)
!Dead("jan")
Global("C#Ajantis_JanBanter","GLOBAL",0)~ THEN ~C#AjanB~ ajantisjan_01
@0 DO ~SetGlobal("C#Ajantis_JanBanter","GLOBAL",1)~
== BJAN @1
== C#AjanB @2
== BJAN @3
== C#AjanB @4
== BJAN @5
== C#AjanB @6
== BJAN @7
= @8
== C#AjanB @9
EXIT


//Ajantis - Jan #2

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("jan")
Detect("jan") 
InMyArea(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("jan",CD_STATE_NOTVALID)
!Dead("jan")
Global("C#Ajantis_JanBanter","GLOBAL",1)~ THEN ~C#AjanB~ ajantisjan_02
@10 DO ~SetGlobal("C#Ajantis_JanBanter","GLOBAL",2)~
== BJAN @11
== C#AjanB @12
== C#AjanB IF ~OR (2) !InParty("anomen") Alignment("anomen",CHAOTIC_NEUTRAL)~ THEN @13
== BJAN IF ~OR (2) !InParty("anomen") Alignment("anomen",CHAOTIC_NEUTRAL)~ THEN @14
== C#AjanB IF ~InParty("anomen") !Alignment("anomen",CHAOTIC_NEUTRAL)~ THEN @15
== BJAN IF ~InParty("anomen") !Alignment("anomen",CHAOTIC_NEUTRAL)~ THEN @16
== C#AjanB @17
== BJAN @18
== C#AjanB @19
== BJAN @20
== C#AjanB @21
== BJAN @22
EXIT

//Ajantis - Jan #3

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
Detect("C#Ajantis") 
InMyArea(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#Ajantis_JanBanter","GLOBAL",2)~ THEN ~BJAN~ ajantisjan_03
@23 DO ~SetGlobal("C#Ajantis_JanBanter","GLOBAL",3)~
== C#AjanB @24
== BJAN @25
== C#AjanB @26
== BJAN @27
== C#AjanB @28
== BJAN @29
== C#AjanB @30
== BJAN @31
== C#AjanB @32
== BJAN @33
== C#AjanB @34
EXIT