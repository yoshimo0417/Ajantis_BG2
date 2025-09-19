//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("korgan")
Detect("korgan") InMyArea(Player1)
!StateCheck("korgan",CD_STATE_NOTVALID)
!Dead("korgan")
Global("C#AjantisKorgan","GLOBAL",0)~ THEN ~C#AjanB~ AjantisKorgan1
@0
DO ~SetGlobal("C#AjantisKorgan","GLOBAL",1)~
== BKORGAN @1
== C#AjanB @2
== BKORGAN @3
== C#AjanB @4
== BKORGAN @5
== C#AjanB @6
== BKORGAN @7
== C#AjanB @8
== BKORGAN @9
== C#AjanB @10
== BKORGAN @11
EXIT

//Ajantis-Korgan #2

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
Detect("C#Ajantis") InMyArea(Player1)
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#AjantisKorgan","GLOBAL",1)~ THEN ~BKORGAN~ ajantiskorgan_01
@12  DO ~SetGlobal("C#AjantisKorgan","GLOBAL",2)~
== C#AjanB @13
== BKORGAN @14
EXIT

CHAIN
IF WEIGHT #-1 ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("korgan")
Detect("korgan") InMyArea(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
!StateCheck("korgan",CD_STATE_NOTVALID)
!Dead("korgan")
Global("C#AjantisKorgan","GLOBAL",2)~ THEN ~C#AjanB~ ajantiskorgan_02
@15 DO ~SetGlobal("C#AjantisKorgan","GLOBAL",3)~
== BKORGAN @16
== C#AjanB @17
== BKORGAN @18
END
++ @19 EXIT
++ @20 EXIT
++ @21 EXIT  