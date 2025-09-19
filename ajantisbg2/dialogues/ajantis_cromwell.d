EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("C#AJSHLD")~ THEN GOTO PartyHasAjantisShield
IF ~PartyHasItem("C#AJ0012")~ THEN GOTO PartyHasSword
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasAjantisShield
SAY @0
 IF ~OR(2)
     PartyHasItem("AMUL14")
     PartyHasItem("RING06")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("AMUL14")
     !PartyHasItem("RING06")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @1
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @2
IF ~PartyHasItem("AMUL14")
!PartyHasItem("RING06")~ THEN + PartyHasAllParts_01 
IF ~!PartyHasItem("AMUL14")
PartyHasItem("RING06")~ THEN + PartyHasAllParts_02
IF ~PartyHasItem("AMUL14")
PartyHasItem("RING06")~ THEN + PartyHasAllParts_03
END

IF ~~ THEN BEGIN PartyHasAllParts_01 
SAY @3
++ @4 GOTO HowMuch_necklace
++ @5 + MovingRightAlong
++ @6 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02
SAY @7
++ @4 GOTO HowMuch_ring
++ @8 + MovingRightAlong
++ @6 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03
SAY @9
++ @10 GOTO HowMuch_ring
++ @11 GOTO HowMuch_necklace
++ @8 + MovingRightAlong
++ @6 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_ring 
SAY @12
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("C#AjanForgeShieldRing","GLOBAL",1)
                                 TakePartyGold(5000)
                                 DestroyGold(5000)~ REPLY @13 GOTO 56
 IF ~~ THEN REPLY @6 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_necklace 
SAY @12
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("C#AjanForgeShieldAmulet","GLOBAL",1)
                                 TakePartyGold(5000)
                                 DestroyGold(5000)~ REPLY @13 GOTO 56
 IF ~~ THEN REPLY @6 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @14
COPY_TRANS WSMITH01 13
END


//sword
IF ~~ THEN BEGIN PartyHasSword 
SAY @15
 IF ~PartyHasItem("SCRL94")~ THEN GOTO PartyHasAllPartsSword
 IF ~!PartyHasItem("SCRL94")~ THEN GOTO PartyDoesNotHaveAllPartsSword
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllPartsSword
SAY @16
 IF ~~ THEN GOTO MovingRightAlongSword
END

IF ~~ THEN BEGIN PartyHasAllPartsSword
SAY @17
++ @4 GOTO HowMuch
++ @6 GOTO MovingRightAlongSword
END

IF ~~ THEN BEGIN HowMuch
SAY @12
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("C#AjanForgeSword","GLOBAL",1)
                                 TakePartyGold(5000)
                                 DestroyGold(5000)~ REPLY @13 GOTO 56
 IF ~~ THEN REPLY @6 GOTO MovingRightAlongSword
END

IF ~~ THEN BEGIN MovingRightAlongSword
SAY @14
COPY_TRANS WSMITH01 13
IF ~PartyHasItem("C#AJSHLD")~ THEN GOTO PartyHasAjantisShield
END

IF WEIGHT #-1
~OR(3)
Global("C#AjanForgeShieldRing","GLOBAL",1)
Global("C#AjanForgeShieldAmulet","GLOBAL",1)
Global("C#AjanForgeSword","GLOBAL",1)~ THEN BEGIN done
  SAY #59797 /* ~Well, there ye go, me friend.  Use it well.  And if ye comes across anything else of interest, ye knows where to bring it, aye?~ */
  IF ~~ THEN DO ~SetGlobal("C#AjanForgeShieldRing","GLOBAL",0)
SetGlobal("C#AjanForgeShieldAmulet","GLOBAL",0)
SetGlobal("C#AjanForgeSword","GLOBAL",0)~ EXIT
END


END