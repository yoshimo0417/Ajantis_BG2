BEGIN C#RINGSM



IF ~Global("C#AjantisMedallion","GLOBAL",2)~ THEN ajantis_medallion_04
SAY @0
++ @1 DO ~SetGlobal("C#AjantisMedallion","GLOBAL",3) GiveItemCreate("C#AMUL02",Player1,1,0,0) TakePartyGold(50)~ + ajantis_medallion_05
++ @2 DO ~SetGlobal("C#AjantisMedallion","GLOBAL",3) GiveItemCreate("C#AMUL02",Player1,1,0,0) TakePartyGold(50)~ + ajantis_medallion_05
END

IF ~OR(3)
!InParty("C#Ajantis")
!InMyArea("C#Ajantis")
StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisTalkedToSurianko","GLOBAL",0)~ THEN goldsmith_01
SAY @3
= @4
++ @5 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",1)~ + goldsmith_03
+ ~Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRINGSM","GLOBAL",0)~ + @6 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",1) SetGlobal("C#AjantisMedallionRINGSM","GLOBAL",1)~ + ajantis_medallion_01
++ @7 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",1)~ + goldsmith_05
++ @8 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",1)~ + goldsmith_02
END

IF ~~ THEN goldsmith_02
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN goldsmith_03
SAY @10
++ @11 + goldsmith_06
++ @12 + goldsmith_04
++ @13 + goldsmith_05
++ @8 + goldsmith_02
END

IF ~~ THEN goldsmith_04
SAY @14
++ @15 + goldsmith_06
++ @16 + goldsmith_05
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",2)~ + @17 + goldsmith_10
++ @8 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",1)~ + goldsmith_02
END

IF ~~ THEN goldsmith_05
SAY @18
IF ~~ THEN DO ~StartStore("C#AJSTO1",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN goldsmith_06
SAY @19
++ @12 + goldsmith_04
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",2)~ + @20 + goldsmith_10
++ @13 + goldsmith_05
++ @8 + goldsmith_02
END

IF ~OR(3)
!InParty("C#Ajantis")
!InMyArea("C#Ajantis")
StateCheck("C#Ajantis",CD_STATE_NOTVALID)
GlobalGT("C#AjantisTalkedToSurianko","GLOBAL",0)~ THEN goldsmith_07
SAY @21
++ @22 + goldsmith_03
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",2)~ + @17 + goldsmith_10
++ @23 + goldsmith_05
+ ~Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRINGSM","GLOBAL",0)~ + @6 DO ~SetGlobal("C#AjantisMedallionRINGSM","GLOBAL",1)~ + ajantis_medallion_01
++ @24 + goldsmith_02
END


IF ~InParty("C#Ajantis")
InMyArea("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisTalkedToSurianko","GLOBAL",0)
!Global("C#AjantisHochzeitsPlanen","GLOBAL",2)~ THEN goldsmith_08
SAY @25
= @4
++ @26 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2) SetGlobal("C#AjantisSuriankosWare","GLOBAL",1)~ + goldsmith_chain_03b
++ @7 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2)~ + goldsmith_05
+ ~Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRINGSM","GLOBAL",0)~ + @6 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2) SetGlobal("C#AjantisMedallionRINGSM","GLOBAL",1)~ + ajantis_medallion_01
++ @8 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2)~ + goldsmith_02
END

IF ~InParty("C#Ajantis")
InMyArea("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisTalkedToSurianko","GLOBAL",1)
!Global("C#AjantisHochzeitsPlanen","GLOBAL",2)~ THEN goldsmith_09
SAY @27
++ @22 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2) SetGlobal("C#AjantisSuriankosWare","GLOBAL",1)~ + goldsmith_chain_03b
++ @7 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2)~ + goldsmith_05
+ ~Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRINGSM","GLOBAL",0)~ + @6 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2) SetGlobal("C#AjantisMedallionRINGSM","GLOBAL",1)~ + ajantis_medallion_01
++ @8 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2)~ + goldsmith_02
END

IF ~~ THEN goldsmith_10
SAY @28
IF ~~ THEN DO ~SetGlobal("C#AjantisPCSAWWeddingRings","GLOBAL",1) StartStore("C#AJSTO2",LastTalkedToBy(Myself))~ EXIT
END

IF ~InParty("C#Ajantis")
InMyArea("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisTalkedToSurianko","GLOBAL",2)
!Global("C#AjantisHochzeitsPlanen","GLOBAL",2)~ THEN goldsmith_11
SAY @29
+ ~GlobalGT("C#AjantisPCSAWWeddingRings","GLOBAL",0)~ + @30 + goldsmith_10
+ ~Global("C#AjantisSuriankosWare","GLOBAL",0)~ + @22 DO ~SetGlobal("C#AjantisSuriankosWare","GLOBAL",1)~ + goldsmith_chain_03b
+ ~Global("C#AjantisSuriankosWare","GLOBAL",1)~ + @22 + goldsmith_03
++ @23 + goldsmith_05
+ ~Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRINGSM","GLOBAL",0)~ + @6 DO ~SetGlobal("C#AjantisMedallionRINGSM","GLOBAL",1)~ + ajantis_medallion_01
++ @24 + goldsmith_02
END

IF ~InParty("C#Ajantis")
InMyArea("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisTalkedToSurianko","GLOBAL",2)
Global("C#AjantisHochzeitsPlanen","GLOBAL",2)
!Global("C#AjantisPCChoseRing","GLOBAL",2)
Global("C#AjantisPCChosesWeddingRing","GLOBAL",1)~ THEN goldsmith_12
SAY @29
++ @30 DO ~StartStore("C#AJSTO2",LastTalkedToBy(Myself))~ EXIT
+ ~Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRINGSM","GLOBAL",0)~ + @6 DO ~SetGlobal("C#AjantisMedallionRINGSM","GLOBAL",1)~ + ajantis_medallion_01
++ @24 + goldsmith_02
END

IF ~InParty("C#Ajantis")
InMyArea("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisTalkedToSurianko","GLOBAL",2)
Global("C#AjantisHochzeitsPlanen","GLOBAL",2)
GlobalGT("C#AjantisPCChoseRing","GLOBAL",1)~ THEN goldsmith_13
SAY @29
+ ~GlobalGT("C#AjantisMusterbeutel","GLOBAL",4) GlobalLT("C#AjantisPCMarriage","GLOBAL",1)~ + @31 + goldsmith_14
+ ~Global("C#AjantisSuriankosWare","GLOBAL",0)~ + @22 DO ~SetGlobal("C#AjantisSuriankosWare","GLOBAL",1)~ + goldsmith_chain_03b
+ ~Global("C#AjantisSuriankosWare","GLOBAL",1)~ + @22 + goldsmith_03
++ @23 + goldsmith_05
+ ~Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRINGSM","GLOBAL",0)~ + @6 DO ~SetGlobal("C#AjantisMedallionRINGSM","GLOBAL",1)~ + ajantis_medallion_01
++ @24 + goldsmith_02
END

IF ~~ THEN goldsmith_14
SAY @32
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_medallion_01
SAY @33
++ @34 + ajantis_medallion_02
++ @35 + ajantis_medallion_02
++ @36 + ajantis_medallion_02
END

IF ~~ THEN ajantis_medallion_02
SAY @37
+ ~PartyGoldGT(49)~ + @38 + ajantis_medallion_03
++ @39 + ajantis_medallion_03
END

IF ~~ THEN ajantis_medallion_03
SAY @40
IF ~~ THEN DO ~SetGlobal("C#AjantisMedallion","GLOBAL",2) ClearAllActions() StartCutSceneMode() Wait(2)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(1) ActionOverride("C#RINGSM",StartDialogNoSet(Player1))~ EXIT
END

IF ~~ THEN ajantis_medallion_05
SAY @41
IF ~~ THEN EXIT
END

CHAIN
IF ~InParty("C#Ajantis")
InMyArea("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisHochzeitsPlanen","GLOBAL",2)
!Global("C#AjantisPCChoseRing","GLOBAL",2)
Global("C#AjantisPCChosesWeddingRing","GLOBAL",0)~ THEN C#RINGSM goldsmith_chain_14
@42
== C#RINGSM IF ~Global("C#AjantisTalkedToSurianko","GLOBAL",0)~ THEN @43 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2)~
== C#RINGSM IF ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ THEN @44 DO ~SetGlobal("C#AjantisTalkedToSurianko","GLOBAL",2)~
== C#RINGSM IF ~Global("C#AjantisTalkedToSurianko","GLOBAL",2)~ THEN @45
== C#AjanJ @46 
END
IF ~~ THEN DO ~SetGlobal("C#AjantisPCChosesWeddingRing","GLOBAL",1)~ + goldsmith_10


CHAIN
IF ~~ THEN C#RINGSM goldsmith_chain_03b
@10
= @47
== C#AjanJ @48
== C#RINGSM IF ~Global("C#AjantisPCChoseRing","GLOBAL",0)~ THEN @49
== C#RINGSM IF ~GlobalGT("C#AjantisPCChoseRing","GLOBAL",0)~ THEN @50
END
++ @51 + goldsmith_05
+ ~Global("C#AjantisPCSAWWeddingRings","GLOBAL",0)~ + @52 + goldsmith_10
++ @11 + goldsmith_06
++ @12 + goldsmith_04
+ ~Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRINGSM","GLOBAL",0)~ + @6 DO ~SetGlobal("C#AjantisMedallionRINGSM","GLOBAL",1)~ + ajantis_medallion_01
++ @8 + goldsmith_02