//Ajantis-Nalia


//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
AreaType(CITY)
!AreaCheck("AR0300") //Excludes the Docks
!AreaCheck("AR0400") //Excludes the Slums
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisNalia","GLOBAL",0)~ THEN ~BNALIA~ AjantisNaliaOrder
@0
DO ~SetGlobal("C#AjantisNalia","GLOBAL",1)~
== C#AjanB @1
== BNALIA @2
== C#AjanB @3
== BNALIA @4
== C#AjanB @5
= @6
== BNALIA @7
== C#AjanB @8
EXIT



//#2
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
AreaType(CITY)
!See([ENEMY])
InParty("nalia")
See("nalia")
!StateCheck("nalia",CD_STATE_NOTVALID)
Global("C#AjantisNalia","GLOBAL",1)~ THEN ~C#AjanB~ AjantisNalia2
@9
DO ~SetGlobal("C#AjantisNalia","GLOBAL",2)~
== BNALIA @10
== C#AjanB @11
== BNALIA @12
== C#AjanB @13
== BNALIA @14
== C#AjanB @15
== BNALIA @16
EXIT


//#3
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
See("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#AjantisNalia","GLOBAL",2)~ THEN ~BNALIA~ ajantisnalia_03
@17 DO ~SetGlobal("C#AjantisNalia","GLOBAL",3)~
== C#AjanB @18
== BNALIA @19
== C#AjanB @20
== BNALIA @21
== C#AjanB @22
=@23
== BNALIA @24
EXIT


//#4
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
See("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#AjantisNalia","GLOBAL",3)~ THEN ~BNALIA~ ajantisnalia_04
@25 DO ~SetGlobal("C#AjantisNalia","GLOBAL",4)~
== C#AjanB @26
== BNALIA @27
== C#AjanB @28
== BNALIA @29
== C#AjanB @30
== BNALIA @31
== C#AjanB @32
== C#AjanB @33
== BNALIA @34
== C#AjanB @35
== BNALIA @36
EXIT
