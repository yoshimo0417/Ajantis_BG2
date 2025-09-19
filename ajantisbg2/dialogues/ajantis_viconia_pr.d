CHAIN
IF WEIGHT #-1 ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("viconia")
Detect("viconia") InMyArea(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
!StateCheck("viconia",CD_STATE_NOTVALID)
!Dead("viconia")
Global("C#Ajantis_ViconiaBanter","GLOBAL",0)~ THEN ~C#AjanB~ ajantisviconia_01
@0 DO ~SetGlobal("C#Ajantis_ViconiaBanter","GLOBAL",1)~ 
== BVICONI @1
== C#AjanB @2
== BVICONI @3
== C#AjanB @4
END
++ @5 EXTERN BVICONI ajantis_viconia_01
++ @6 EXTERN C#AjanB ajantis_viconia_02

APPEND BVICONI
IF ~~ THEN ajantis_viconia_01
SAY @7
IF ~~ THEN EXIT
END
END

APPEND C#AjanB
IF ~~ THEN ajantis_viconia_02
SAY @8
IF ~~ THEN EXIT
END
END


//#2
CHAIN
IF WEIGHT #-1 ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("viconia")
Detect("viconia") InMyArea(Player1)
!StateCheck("viconia",CD_STATE_NOTVALID)
!Dead("viconia")
Global("C#Ajantis_ViconiaBanter","GLOBAL",1)~ THEN ~C#AjanB~ ajantisviconia_02
@9 DO ~SetGlobal("C#Ajantis_ViconiaBanter","GLOBAL",2)~ 
== BVICONI @10
== C#AjanB @11
== BVICONI @12
== C#AjanB @13
== BVICONI @14
== C#AjanB @15
EXIT