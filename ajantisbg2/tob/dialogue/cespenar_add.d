/* Cespenar */

EXTEND_BOTTOM BOTSMITH 4  // 82?
IF ~OR(2) PartyHasItem("C#AJSHLD") PartyHasItem("c#ajshl2")~ THEN GOTO PartyHasAjantisShield
IF ~OR(2) PartyHasItem("C#AJ0012") PartyHasItem("C#AJ012A")~ THEN GOTO PartyHasSword
END

APPEND BOTSMITH

IF ~~ THEN BEGIN PartyHasAjantisShield
SAY @0
IF ~PartyHasItem("SHLD29")
~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("SHLD29")~ THEN GOTO PartyDoesNotHaveAllParts
IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjanToB_CespenarInterjection","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjanToB_CespenarInterjection","GLOBAL",1)~ EXTERN c#aja25j ajantis_interjection
END

END

APPEND c#aja25j


IF ~~ THEN ajantis_interjection
SAY @15
++ @16 + ajantis_interjection_02
++ @17 + ajantis_interjection_02
++ @18 + ajantis_interjection_01
END

IF ~~ THEN ajantis_interjection_01
SAY @19
IF ~~ THEN + ajantis_interjection_03
END

IF ~~ THEN ajantis_interjection_02
SAY @20
IF ~~ THEN + ajantis_interjection_03
END

IF ~~ THEN ajantis_interjection_03
SAY @21
IF ~PartyHasItem("SHLD29")
~ THEN EXTERN BOTSMITH PartyHasAllParts
 IF ~!PartyHasItem("SHLD29")~ THEN EXTERN BOTSMITH PartyDoesNotHaveAllParts
END

END //APPEND


APPEND BOTSMITH

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @1
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @2
= @3
+ ~PartyGoldGT(4999)~ + #66760 /* ~Sure, go ahead.~ */ 
DO ~SetGlobal("C#AjanToB_ItemMaker","GLOBAL",1)
TakePartyGold(5000)
TakePartyItem("C#AJSHLD")
TakePartyItem("c#ajshl2")
     TakePartyItemNum("SHLD29",1)
     DestroyItem("C#AJSHLD")
     DestroyItem("c#ajshl2")
     DestroyItem("SHLD29")
DestroyGold(5000)~ GOTO 11
+ ~PartyGoldLT(5000)~ + @4 + MovingRightAlong
++ @5 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN MovingRightAlong SAY @14
COPY_TRANS BOTSMITH 4
END



////////////////////////////////////////////////////////////////////////
//sword
IF ~~ THEN BEGIN PartyHasSword 
SAY #66590 /* ~Oo!  Is nice sword, maybe...~ [BOTSM21] */
IF ~PartyHasItem("C#AJ0012")~ + PartyHasSword_SvA
IF ~PartyHasItem("C#AJ012A")~ THEN GOTO PartyHasSword_ToB
END


IF ~~ THEN BEGIN PartyDoesNotHaveAllPartsSword_SvA
SAY @13
 IF ~~ THEN GOTO MovingRightAlongSword
END

IF ~~ THEN BEGIN PartyHasSword_SvA
SAY @6
 IF ~PartyHasItem("SCRL94") PartyHasItem("SCRL1E") PartyHasItem("SW1H02")~ THEN GOTO PartyHasAllPartsSword_SvA
 IF ~OR(3) !PartyHasItem("SCRL94") !PartyHasItem("SCRL1E") !PartyHasItem("SW1H02")~ THEN GOTO PartyDoesNotHaveAllPartsSword_SvA
END


IF ~~ THEN BEGIN PartyHasAllPartsSword_SvA
SAY @12
+ ~PartyGoldGT(4999)~ + #66760 /* ~Sure, go ahead.~ */
DO ~SetGlobal("C#AjanToB_ItemMaker","GLOBAL",2)
TakePartyGold(5000)
TakePartyItem("C#AJ0012")
     TakePartyItemNum("SCRL94",1)
     TakePartyItemNum("SCRL1E",1)
     TakePartyItemNum("SW1H02",1)
     DestroyItem("C#AJ0012")
     DestroyItem("SCRL94")
     DestroyItem("SCRL1E")
     DestroyItem("SW1H02")
DestroyGold(5000)~ GOTO 11
+ ~PartyGoldLT(5000)~ + @4 + MovingRightAlongSword
++ @5 GOTO MovingRightAlongSword
END



IF ~~ THEN BEGIN PartyDoesNotHaveAllPartsSword_ToB
SAY @7
 IF ~~ THEN GOTO MovingRightAlongSword
END

IF ~~ THEN BEGIN PartyHasSword_ToB
SAY @9
 IF ~PartyHasItem("SCRL1E") PartyHasItem("SW1H02")~ THEN GOTO PartyHasAllPartsSword_ToB
 IF ~OR(2) !PartyHasItem("SCRL1E") !PartyHasItem("SW1H02")~ THEN GOTO PartyDoesNotHaveAllPartsSword_ToB
END


IF ~~ THEN BEGIN PartyHasAllPartsSword_ToB
SAY @8
+ ~PartyGoldGT(4999)~ + #66760 /* ~Sure, go ahead.~ */
DO ~SetGlobal("C#AjanToB_ItemMaker","GLOBAL",2)
TakePartyGold(5000)
TakePartyItem("C#AJ012A")
     TakePartyItemNum("SCRL1E",1)
     TakePartyItemNum("SW1H02",1)
     DestroyItem("C#AJ012A")
     DestroyItem("SCRL1E")
     DestroyItem("SW1H02")
DestroyGold(5000)~ GOTO 11
+ ~PartyGoldLT(5000)~ + @4 + MovingRightAlongSword
++ @5 GOTO MovingRightAlongSword
END

IF ~~ THEN BEGIN MovingRightAlongSword
SAY @14
COPY_TRANS BOTSMITH 4
IF ~OR(2) PartyHasItem("C#AJSHLD") PartyHasItem("c#ajshl2")~ THEN GOTO PartyHasAjantisShield
END


IF WEIGHT #-1
~GlobalGT("C#AjanToB_ItemMaker","GLOBAL",0)~ THEN BEGIN 143_ajantis
  SAY #70888 /* ~Enjoy!!  Now Cespenar goes back to his duties, oh yes!  Lots of goodies to find, lots to collect!~ [BOTSM10] */
  IF ~~ THEN DO ~//AddXP2DA("smith")
SetGlobal("C#AjanToB_ItemMaker","GLOBAL",0)~ EXIT
END



END