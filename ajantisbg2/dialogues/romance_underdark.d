//Ajantis Underdark quest


/* chastidy belt: C#AJCHBE.ITM */


APPEND C#AjanJ

IF ~Global("C#AjantisUDBelt","GLOBAL",1)~ THEN beltquest_start
SAY @0
= @1
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",2) StartCutScene("C#AJCUD1") StartCutSceneMode()~ EXIT 
END

END

/*
//----------------"C#AJCUD1".baf
IF
      True()
THEN
    RESPONSE #100
	CutSceneId(Player1)
	ClearAllActions()
	CreateCreatureOffscreen("C#AJUDZO")
	ActionOverride("C#AJUDZO",MoveToObject("C#Ajantis"))
	Wait(3)	
	EndCutSceneMode()
	ActionOverride("C#AJUDZO",StartDialogNoSet("C#Ajantis"))
END

//----------------------

*/
BEGIN C#AJUDZO

CHAIN
IF ~Global("C#AjantisUDBelt","GLOBAL",2)~ THEN C#AJUDZO punishment
@2
== C#AjanJ @3
== C#AJUDZO @4
== C#AjanJ @5
END
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",3) StartCutScene("C#AJCUD3") StartCutSceneMode()~ EXIT 
IF ~DifficultyLT(HARD)~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",3) StartCutScene("C#AJCUD2") StartCutSceneMode()~ EXIT 
IF ~DifficultyGT(NORMAL)~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",3) StartCutScene("C#AJCUD3") StartCutSceneMode()~ EXIT 

/*

HPPercentLT(Player1,30)


//----------------"C#AJCUD2".baf
IF
      True()
THEN
    RESPONSE #100
	CutSceneId(Player1)
	ClearAllActions()
	FadeToColor([20.0],0)
	Wait(1)
	ActionOverride("C#Ajantis",DropInventory()) 
	Wait(2)
	ApplyDamagePercent("C#Ajantis",90,CRUSHING)
	ActionOverride("C#Ajantis",CreateItem("C#AJCHBE"))	
	ActionOverride("C#Ajantis",TakePartyItem("C#AJCHBE"))
	ActionOverride("C#Ajantis",FillSlot(SLOT_BELT))
	Wait(2)
	ActionOverride("C#Ajantis",PlayDead(5))
	FadeFromColor([20.0],0)
	Wait(1)
	EndCutSceneMode()	
	ActionOverride("C#AJUDZO",StartDialogNoSet(Player1))
END
*/

//------------------------
CHAIN
IF ~Global("C#AjantisUDBelt","GLOBAL",3) !Dead("C#Ajantis")~ THEN C#AJUDZO punishment_2
@6
== C#AjanJ @7
END
IF ~~ THEN + punishment_4



APPEND C#AJUDZO
IF ~Global("C#AjantisUDBelt","GLOBAL",3) Dead("C#Ajantis")~ THEN punishment_3
SAY @8
IF ~~ THEN + punishment_4
END

IF ~~ THEN punishment_4
SAY @9
++ @10 + punishment_5
++ @11 + punishment_5
++ @12 + punishment_5
END

IF ~~ THEN punishment_5
SAY @13
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",4) EscapeArea()~ EXIT
END
END

/* Ajantis is conscious again */
APPEND C#AjanJ

IF ~Global("C#AjantisUDBelt","GLOBAL",5)~ THEN belt
SAY @14 
++ @15 + belt_01
++ @16 + belt_01
++ @17 + belt_01
++ @18 + belt_01
++ @19 + belt_05
END

IF ~~ THEN belt_01
SAY @20
IF ~~ THEN + belt_04
END

IF ~~ THEN belt_02
SAY @21
= @22
IF ~~ THEN DO ~CreateItem("C#AJCHBE",1,0,0) TakePartyItem("C#AJCHBE") FillSlot(SLOT_BELT) SetGlobal("C#AjantisUDBelt","GLOBAL",6)~ EXIT
END

IF ~~ THEN belt_03
SAY @23
IF ~~ THEN + belt_02
END

IF ~~ THEN belt_04
SAY @24
IF ~~ THEN + belt_03
END

IF ~~ THEN belt_05
SAY @25
IF ~~ THEN + belt_04
END

/* after Underdark exit and Elhan intermezzo
*/

IF ~Global("C#AjantisUDBelt","GLOBAL",7)~ THEN getridofbelt
SAY @26 
++ @27 + getridofbelt_01
++ @28 + getridofbelt_02
++ @29 + getridofbelt_03
++ @30 + getridofbelt_03
END

IF ~~ THEN getridofbelt_01
SAY @31
++ @32 + getridofbelt_04
++ @33 + getridofbelt_05
END

IF ~~ THEN getridofbelt_02
SAY @34
IF ~~ THEN + getridofbelt_01
END

IF ~~ THEN getridofbelt_03
SAY @35
IF ~~ THEN + getridofbelt_01
END

IF ~~ THEN getridofbelt_04
SAY @36
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",8) SetGlobalTimer("C#AjanUDBeltTimer","GLOBAL",TWO_DAYs)~ EXIT
END

IF ~~ THEN getridofbelt_05
SAY @37
++ @32 + getridofbelt_04
++ @38 + getridofbelt_07
++ @39 + getridofbelt_06
END

IF ~~ THEN getridofbelt_06
SAY @40
= @41
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",19) SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END

IF ~~ THEN getridofbelt_07
SAY @42
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",8) SetGlobalTimer("C#AjanUDBeltTimer","GLOBAL",TWO_DAYs)~ EXIT
END

IF ~Global("C#AjantisUDBelt","GLOBAL",9)~ THEN getridofbelt2
SAY @43
++ @44 + getridofbelt2_01
++ @45 + getridofbelt2_02
++ @46 + getridofbelt_06
END


IF ~~ THEN getridofbelt2_01
SAY @47
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",10)~ EXIT
END

IF ~~ THEN getridofbelt2_02
SAY @48
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",10)~ EXIT
END


/* You are so beautiful... NoIntimacy = 0*/

IF ~Global("C#AjantisUDBeltBeautiful","GLOBAL",1)~ THEN beautiful
SAY @49 
++ @50 DO ~SetGlobal("C#AjantisBelt5","LOCALS",1) SetGlobal("C#AjantisUDBeltBeautiful","GLOBAL",2)~ + beautiful_05
++ @51 DO ~SetGlobal("C#AjantisUDBeltBeautiful","GLOBAL",2)~ + beautiful_01
++ @52 DO ~SetGlobal("C#AjantisUDBeltBeautiful","GLOBAL",2)~ + beautiful_07
END

IF ~~ THEN beautiful_01
SAY @53
+ ~Global("C#AjantisBelt5","LOCALS",0)~ + @50 DO ~SetGlobal("C#AjantisBelt5","LOCALS",1)~ + beautiful_05
++ @54 + beautiful_07
++ @55 + beautiful_02
++ @56 + beautiful_06
END

IF ~~ THEN beautiful_02
SAY @57
IF ~~ THEN + beautiful_03
END

IF ~~ THEN beautiful_03
SAY @58
= @59
++ @60 + beautiful_04
++ @61 + beautiful_04
++ @62 + beautiful_04
END

IF ~~ THEN beautiful_04
SAY @63
IF ~~ THEN EXIT
END

IF ~~ THEN beautiful_05
SAY @64
++ @51 + beautiful_01
++ @52 + beautiful_07
++ @56 + beautiful_06
END

IF ~~ THEN beautiful_06
SAY @65
IF ~~ THEN EXIT
END

IF ~~ THEN beautiful_07
SAY @66
+ ~Global("C#AjantisBelt5","LOCALS",0)~ + @50 DO ~SetGlobal("C#AjantisBelt5","LOCALS",1)~ + beautiful_05
++ @55 + beautiful_02
++ @56 + beautiful_06
END


END



CHAIN
IF ~Global("C#AjantisUDBelt","GLOBAL",11)~ THEN C#AjanJ belt_cromwell
@67 
== WSMITH01 @68
== C#AjanJ @69
== WSMITH01 @70 DO ~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0) Wait(1)~
= @71
== C#AjanJ @72
== WSMITH01 @73
== C#AjanJ @74
== WSMITH01 @75
== C#AjanJ @76
== WSMITH01 @77
= @78
== C#AjanJ @79
== C#AjanJ IF ~PartyGoldLT(100)~ THEN @80
== WSMITH01 @81
== C#AjanJ @82 DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",12)~
EXIT

APPEND C#AjanJ
IF ~Global("C#AjantisUDBelt","GLOBAL",13)~ THEN belt_again
SAY @83
++ @84 + belt_again_01
++ @85 + belt_again_02
++ @86 + belt_again_01
END

IF ~~ THEN belt_again_01
SAY @87
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",14)~ EXIT
END

IF ~~ THEN belt_again_02
SAY @88
IF ~~ THEN + belt_again_01
END

/*
script: outdoor area, no city, no friendly but blue in range (in addition to the usual triggers. "No weather" ? */

IF ~Global("C#AjantisUDBelt","GLOBAL",15)~ THEN remove_belt
SAY @89 
= @90 
= @91
= @92
= @93
IF ~Global("C#AjantisNoIntimacy","GLOBAL",0)
!Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~TakeItemReplace("DWDust","C#AJCHBE","C#Ajantis")~ + remove_belt_02
IF ~GlobalGT("C#AjantisNoIntimacy","GLOBAL",0)
!Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~TakeItemReplace("DWDust","C#AJCHBE","C#Ajantis")~ + remove_belt_01
IF ~Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~TakeItemReplace("DWDust","C#AJCHBE","C#Ajantis")~ + remove_belt_03
END

IF ~~ THEN remove_belt_01
SAY @94
++ @95 + remove_belt_03
++ @96 + remove_belt_03
++ @97 + remove_belt_07
END

IF ~~ THEN remove_belt_02
SAY @98
= @99
++ @100 + remove_belt_05
++ @96 + remove_belt_06
++ @101 + remove_belt_04
END

IF ~~ THEN remove_belt_03
SAY @102
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",16) SetGlobal("C#AjantisUDBelt","GLOBAL",16)~ EXIT
END

IF ~~ THEN remove_belt_04
SAY @103
IF ~~ THEN + remove_belt_03
END

IF ~~ THEN remove_belt_05
SAY @104
IF ~~ THEN + remove_belt_03
END

IF ~~ THEN remove_belt_06
SAY @105
IF ~~ THEN + remove_belt_05
END

IF ~~ THEN remove_belt_07
SAY @106
IF ~~ THEN DO ~SetGlobal("C#AjantisNoIntimacy","GLOBAL",0)~ + remove_belt_03
END 

END //APPEND

/* rest talk -> Romance_nighttalks.d*/



/* If Ajantis went to Athkatla on is own. PC meets him on the Order -> C#AjanP */

