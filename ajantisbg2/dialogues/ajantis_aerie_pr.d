//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
!Dead("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisAerie","GLOBAL",0)~ THEN ~BAERIE~ AjantisAerie1
@0
DO ~SetGlobal("C#AjantisAerie","GLOBAL",1)~
== C#AjanB @1
== BAERIE @2
== C#AjanB @3
== BAERIE @4
== C#AjanB @5
== BAERIE @6
== C#AjanB @7
== BAERIE @8
EXIT

//#2 
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("aerie")
!Dead("aerie")
See("aerie")
!StateCheck("aerie",CD_STATE_NOTVALID)
AreaType(DUNGEON) 
Global("C#AjantisAerie2","GLOBAL",0)~ THEN ~C#AjanB~ AjantisAerie2
@9
DO ~SetGlobal("C#AjantisAerie2","GLOBAL",1)~
== BAERIE @10
== C#AjanB @11
== BAERIE @12
== C#AjanB @13
== BKORGAN IF ~InParty("korgan") !Dead("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @14
== BANOMEN IF ~InParty("anomen") !Dead("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @15
== BKELDOR IF ~InParty("keldorn") !Dead("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @16
== BCERND IF ~InParty("cernd") !Dead("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @17
== BEDWIN IF ~InParty("edwin") !Dead("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @18
== BNALIA IF ~InParty("nalia") !Dead("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @19
== BAERIE @20
EXIT


//Aerie - HD romance

CHAIN 
IF WEIGHT #-1 ~Global("C#AjantisHaerDalAerie1","GLOBAL",2)~ THEN ~C#AJANJ~ AjantisHaerDalisAerie1
@21
DO ~SetGlobal("C#AjantisHaerDalAerie1","GLOBAL",3)~
== BAERIE @22
== C#AJANJ @23
== BAERIE @24
== C#AJANJ @25
= @26
== BAERIE @27
== C#AJANJ @28
= @29
== BAERIE @30
== C#AJANJ @31
EXIT
