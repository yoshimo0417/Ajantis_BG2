/* New beginnings romance


BGT / EET:

Ajantis will start new beginnings romance but will comment on the PC's non-interest in BG1 for:
	OR(2)
		!Global("X#AjantisRomNoInterestFlirt","GLOBAL",1)
		!Global("X#AjantisRomanceNoInterest","GLOBAL",1) 

Ajantis will start new beginnings romance and will note that he broke the romance due to Bhaal heritage for:
		Global("X#AjantisRomanceBhaal","GLOBAL",1) //Bhaal talk in BG1


Ajantis will comment on other BG1 romance for:
	OR(4)
		Global("X#AjantisRomanceOtherMan","GLOBAL",1)
		GlobalGT("X#AjantisRomanceInactiveOtherRom","GLOBAL",0)
		Global("X#AjantisCoranChallenge","GLOBAL",2)
		Global("X#XAAjantisBreak","GLOBAL",2)

Ajantis might comment on: Race(Player1,HALFORC)


There was no BG1 romance as in "not existent" for:
OR(2)
	Global("ENDOFBG1","GLOBAL",0) //new BGII game
	Global("X#AjantisRomanceActive","GLOBAL",0) //BGT game, but no BG1NPC romance

*/





/* core dialogues: along friendship path  (gecoded)*/


/* additonal NB dialogues */
APPEND C#AjanJ


/* leaf */

IF ~Global("C#AjantisNPCLeafInHair","GLOBAL",1)~ THEN leaf
SAY @0 
++ @1 DO ~SetGlobal("C#AjantisNPCLeafInHair","GLOBAL",2)~ + leaf_01
++ @2 DO ~SetGlobal("C#AjantisNPCLeafInHair","GLOBAL",2)~ + leaf_01
++ @3 DO ~SetGlobal("C#AjanLeafTouch","LOCALS",1) SetGlobal("C#AjantisNPCLeafInHair","GLOBAL",2)~ + leaf_02
END

IF ~~ THEN leaf_01
SAY @4
IF ~~ THEN + leaf_03
END

IF ~~ THEN leaf_02
SAY @5
IF ~~ THEN + leaf_03
END

IF ~~ THEN leaf_03
SAY @6
++ @7 DO ~IncrementGlobal("C#AjantisPCHasInterest","GLOBAL",1)~ + leaf_06
++ @8 + leaf_04
++ @9 + leaf_04
++ @10 + leaf_05
+ ~Global("C#AjanLeafTouch","LOCALS",1)~ + @11 DO ~IncrementGlobal("C#AjantisPCHasInterest","GLOBAL",-2)~ + leaf_05
END

IF ~~ THEN leaf_04
SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN leaf_05
SAY @13
IF ~~ THEN EXIT
END

IF ~~ THEN leaf_06
SAY @14
IF ~~ THEN + leaf_04
END

//"Is that your twenty?" Try to make a dialogue out of an idea
IF ~Global("C#AjantisNBTwenty","GLOBAL",1)~ THEN your_twenty
SAY @15 
++ @16 DO ~SetGlobal("C#AjantisNBTwenty","GLOBAL",2)~ + your_twenty_01
++ @17 DO ~SetGlobal("C#AjantisNBTwenty","GLOBAL",2)~ + your_twenty_01
++ @18 DO ~SetGlobal("C#AjantisNBTwenty","GLOBAL",2)~ + your_twenty_02
END

IF ~~ THEN your_twenty_01
SAY @19
++ @20 + your_twenty_05
++ @21 + your_twenty_03
++ @22 + your_twenty_04
++ @18 + your_twenty_02
END

IF ~~ THEN your_twenty_02
SAY @23
IF ~~ THEN EXIT
END

IF ~~ THEN your_twenty_03
SAY @24
++ @25 + your_twenty_05
++ @22 + your_twenty_04
++ @18 + your_twenty_02
END

IF ~~ THEN your_twenty_04
SAY @26
IF ~~ THEN EXIT
END

IF ~~ THEN your_twenty_05
SAY @27
= @28
= @29 
++ @30 + your_twenty_06
++ @31 + your_twenty_07
++ @32 + your_twenty_09
END

IF ~~ THEN your_twenty_06
SAY @33
++ @34 + your_twenty_10
++ @35 + your_twenty_08
++ @32 + your_twenty_09
END

IF ~~ THEN your_twenty_07
SAY @36
IF ~~ THEN + your_twenty_06
END

IF ~~ THEN your_twenty_08
SAY @37
IF ~~ THEN EXIT
END

IF ~~ THEN your_twenty_09
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN your_twenty_10
SAY @39
= @40
= @41
IF ~~ THEN EXIT
END




/* Ajantis initiated flirts (cycle 1) */

IF ~RandomNum(8,1) Global("C#AjantisNBFlirtCycle","GLOBAL",2)~ THEN NB_flirts1
SAY @42 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",1)~ EXIT
END

IF ~RandomNum(8,2) Global("C#AjantisNBFlirtCycle","GLOBAL",2)~ THEN NB_flirts1_2
SAY @43 
= @44
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",1)~ EXIT
END

IF ~RandomNum(8,3) Global("C#AjantisNBFlirtCycle","GLOBAL",2)~ THEN NB_flirts1_3
SAY @45 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",1)~ EXIT
END

IF ~RandomNum(8,4) Global("C#AjantisNBFlirtCycle","GLOBAL",2)~ THEN NB_flirts1_4
SAY @46 
= @47
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",1)~ EXIT
END

IF ~RandomNum(8,5) Global("C#AjantisNBFlirtCycle","GLOBAL",2)~ THEN NB_flirts1_5
SAY @48 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",1)~ EXIT
END

IF ~RandomNum(8,6) Global("C#AjantisNBFlirtCycle","GLOBAL",2)~ THEN NB_flirts1_6
SAY @49 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",1)~ EXIT
END

IF ~RandomNum(8,7) Global("C#AjantisNBFlirtCycle","GLOBAL",2)~ THEN NB_flirts1_7
SAY @50 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",1)~ EXIT
END

IF ~RandomNum(8,8) Global("C#AjantisNBFlirtCycle","GLOBAL",2)~ THEN NB_flirts1_8
SAY @51 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",1)~ EXIT
END

/* "DSHOP02": Angebot des Medallions (in C#DSHOP02_pr.d) */




/* PC got transformed into Bhaal's avatar without her will (Bodhi's maze). Triggering in Romance_core_baf.baf */

IF ~Global("C#AjanSlayerChangeAR1514","GLOBAL",1) Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN first_slayer_change_NBR
SAY @52 
= @53 
++ @54 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + first_slayer_change_01
++ @55 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + first_slayer_change_01
++ @56 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + first_slayer_change_01
++ @57 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + first_slayer_change_03
END

IF ~~ THEN first_slayer_change_01
SAY @58
IF ~~ THEN + first_slayer_change_02
END

IF ~~ THEN first_slayer_change_02
SAY @59
IF ~~ THEN EXIT
END

IF ~~ THEN first_slayer_change_03
SAY @60
IF ~~ THEN + first_slayer_change_01
END

END //APPEND

//PC changes into the slayer after rest
I_C_T Player1 7 C#AjanNBRSlayerChange2
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @61
END


APPEND C#AjanJ


/* After rest turning into the slayer-dialogue */
IF ~Global("C#AjanNBRSlayerChange2","GLOBAL",2)~ THEN slayer_change_2
SAY @62 
++ @63 + nach_avatar_2_05
++ @64 + nach_avatar_2_05
++ @65 + nach_avatar_2_02
++ @66 + nach_avatar_2_03
++ @67 + nach_avatar_2_04
END

IF ~~ THEN nach_avatar_2_01
SAY @68
IF ~~ THEN + nach_avatar_2_07
END

IF ~~ THEN nach_avatar_2_02
SAY @69
++ @63 + nach_avatar_2_05
++ @64 + nach_avatar_2_05
++ @66 + nach_avatar_2_03
++ @67 + nach_avatar_2_04
++ @70 + nach_avatar_2_06
END

IF ~~ THEN nach_avatar_2_03
SAY @71 
IF ~~ THEN + nach_avatar_2_05
END

IF ~~ THEN nach_avatar_2_04
SAY @72
IF ~~ THEN + nach_avatar_2_05
END

IF ~~ THEN nach_avatar_2_05
SAY @73
IF ~~ THEN + nach_avatar_2_01
END

IF ~~ THEN nach_avatar_2_06
SAY @74
IF ~~ THEN + nach_avatar_2_07
END

IF ~~ THEN nach_avatar_2_07
SAY @75 
IF ~~ THEN DO ~SetGlobal("C#AjanNBRSlayerChange2","GLOBAL",3)
SetGlobal("C#AjantisSlayerNBLoveTalks","GLOBAL",1) 
SetGlobal("C#AjantisSlayerNBCycle","GLOBAL",1)
RealSetGlobalTimer("C#AjantisSlayerNBTimer","GLOBAL",800)~ EXIT
END



/* slayer change cycle. Ajantis realises he cares */

IF ~Global("C#AjantisSlayerNBLoveTalks","GLOBAL",2)~ THEN slayer_LT1
SAY @76 
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayerNBLoveTalks","GLOBAL",3)~ EXIT
END

IF ~Global("C#AjantisSlayerNBLoveTalks","GLOBAL",4)~ THEN slayer_LT2
SAY @77 
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayerNBLoveTalks","GLOBAL",5)~ EXIT
END

IF ~Global("C#AjantisSlayerNBLoveTalks","GLOBAL",6)~ THEN slayer_LT3
SAY @78 
++ @79 + slayer_LT3_01
++ @80 + slayer_LT3_01
++ @81 + slayer_LT3_01
END

IF ~~ THEN slayer_LT3_01
SAY @82
= @83
++ @84 + slayer_LT3_02
++ @85 + slayer_LT3_02
++ @86 + slayer_LT3_02
++ @87 + slayer_LT3_02
++ @88 + slayer_LT3_03
END

IF ~~ THEN slayer_LT3_02
SAY @89
= @231
= @232
= @233
= @230
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayerNBLoveTalks","GLOBAL",7)~ EXIT
END

IF ~~ THEN slayer_LT3_03
SAY @90
++ @91 + slayer_LT3_04
++ @92 + slayer_LT3_02
END

IF ~~ THEN slayer_LT3_04
SAY @93
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3)  
SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("C#AjantisSlayerNBLoveTalks","GLOBAL",7)~ EXIT
END


/* rep < 16: Ajantis "meckert" */
IF ~Global("C#AjantisNBRepWarning","GLOBAL",1)~ THEN NB_repwarning
SAY @94 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBRepWarning","GLOBAL",2)~ EXIT
END

/* rep decreases again: romance breaks. */
IF ~Global("C#AjantisNBRomRepDown","GLOBAL",1)~ THEN NB_repwarning
SAY @95 
= @96
IF ~~ THEN DO ~SetGlobal("C#AjantisNBRomRepDown","GLOBAL",2)
SetGlobal("C#AjantisRomanceActive","GLOBAL",3) 
SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)~ EXIT
END

END //APPEND
/* Unterreich : Reaktion zu den Lustkammern: in Romance_Add.baf / .d (gecoded)*/


/* Nach dem Verlassen dess Unterreichs */

/* der Bote überbringt die Nachricht seiner Eltern */
CHAIN
IF ~Global("C#AjantisNBMessenger","GLOBAL",1)~ THEN C#AJDOUG NB_bote
@97
== C#AjanJ @98 
= @99
= @100 
END
++ @101 EXTERN C#AjanJ NB_bote_01
++ @102 EXTERN C#AjanJ NB_bote_01
++ @103 EXTERN C#AjanJ NB_bote_01


APPEND C#AjanJ

IF ~~ THEN NB_bote_01
SAY @104
= @105
IF ~~ THEN DO ~SetGlobal("C#AjantisNBMessenger","GLOBAL",2) SetGlobal("C#AjantisNBThinking","GLOBAL",1) 
SetGlobal("C#AjantisNBThinkingCycle","GLOBAL",1)
RealSetGlobalTimer("C#AjantisNBThinkingTimer","GLOBAL",600)
ActionOverride("C#AJDOUG",EscapeArea())~ EXIT
END


/* Ajantis versucht, seine Gefühle zu verstehen */

IF ~Global("C#AjantisNBThinkingCycle","GLOBAL",2)~ THEN verstehen1
SAY @106 
++ @107 + verstehen1_01
++ @108 + verstehen1_03
++ @109 + verstehen1_02
END

IF ~~ THEN verstehen1_01
SAY @110 
IF ~~ THEN + verstehen1_03
END

IF ~~ THEN verstehen1_02
SAY @111
IF ~~ THEN DO ~SetGlobal("C#AjantisNBThinkingCycle","GLOBAL",3)~ EXIT
END

IF ~~ THEN verstehen1_03
SAY @112
= @113
= @114
IF ~~ THEN + verstehen1_02
END



IF ~Global("C#AjantisNBThinkingCycle","GLOBAL",4)~ THEN verstehen2
SAY @115 
++ @116 + verstehen2_01
++ @117 + verstehen2_03
++ @118 + verstehen2_05
++ @119 + verstehen2_08
++ @120 + verstehen2_09
END

IF ~~ THEN verstehen2_01
SAY @121
++ @122 + verstehen2_02
++ @123 + verstehen2_07
++ @117 + verstehen2_03
++ @118 + verstehen2_05
++ @119 + verstehen2_08
++ @120 + verstehen2_09
END

IF ~~ THEN verstehen2_02
SAY @124
++ @123 + verstehen2_07
++ @117 + verstehen2_03
++ @118 + verstehen2_05
++ @119 + verstehen2_08
++ @120 + verstehen2_09
++ @125 + verstehen2_04
END

IF ~~ THEN verstehen2_03
SAY @126
IF ~~ THEN + verstehen2_06
END

IF ~~ THEN verstehen2_04
SAY @127
IF ~~ THEN + verstehen2_06
END

IF ~~ THEN verstehen2_05
SAY @128
IF ~~ THEN + verstehen2_06
END

IF ~~ THEN verstehen2_06
SAY @129
IF ~~ THEN DO ~SetGlobal("C#AjantisNBThinkingCycle","GLOBAL",5)~ EXIT
END

IF ~~ THEN verstehen2_07
SAY @130
++ @117 + verstehen2_03
++ @118 + verstehen2_05
++ @119 + verstehen2_08
++ @120 + verstehen2_09
END

IF ~~ THEN verstehen2_08
SAY @131
IF ~~ THEN + verstehen2_06
END

IF ~~ THEN verstehen2_09
SAY @132
IF ~~ THEN + verstehen2_06
END



IF ~Global("C#AjantisNBThinkingCycle","GLOBAL",6)~ THEN verstehen3
SAY @133 
++ @134 + verstehen3_01
++ @135 + verstehen3_03
++ @136 + verstehen3_02
++ @137 + verstehen3_05
++ @138 + verstehen3_07
END

IF ~~ THEN verstehen3_01
SAY @139
++ @140 + verstehen3_06
++ @135 + verstehen3_03
++ @136 + verstehen3_02
++ @137 + verstehen3_05
++ @138 + verstehen3_07
END

IF ~~ THEN verstehen3_02
SAY @141
IF ~~ THEN + verstehen3_04
END

IF ~~ THEN verstehen3_03
SAY @142
IF ~~ THEN + verstehen3_04
END

IF ~~ THEN verstehen3_04
SAY @143
IF ~~ THEN DO ~SetGlobal("C#AjantisNBThinkingCycle","GLOBAL",7)~ EXIT
END

IF ~~ THEN verstehen3_05
SAY @144
IF ~~ THEN + verstehen3_04
END

IF ~~ THEN verstehen3_06
SAY @145
IF ~~ THEN + verstehen3_04
END

IF ~~ THEN verstehen3_07
SAY @146
IF ~~ THEN + verstehen3_04
END



IF ~Global("C#AjantisNBThinkingCycle","GLOBAL",8)~ THEN verstehen4
SAY @147 
= @148
= @149
IF ~~ THEN DO ~SetGlobal("C#AjantisNBThinking","GLOBAL",2) SetGlobal("C#AjantisNBThinkingCycle","GLOBAL",9)
SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",4)
RealSetGlobalTimer("C#AjantisNBFlirtTimer","GLOBAL",500)~ EXIT
END

/* Ajantis initiated flirts (cycle 2): After end of "thinking" cycle */

IF ~RandomNum(7,1) Global("C#AjantisNBFlirtCycle","GLOBAL",5)~ THEN NB_flirts
SAY @42 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",4)~ EXIT
END

IF ~RandomNum(7,2) Global("C#AjantisNBFlirtCycle","GLOBAL",5)~ THEN NB_flirts_2
SAY @150 
= @44
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",4)~ EXIT
END

IF ~RandomNum(7,3) Global("C#AjantisNBFlirtCycle","GLOBAL",5)~ THEN NB_flirts_3
SAY @151 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",4)~ EXIT
END

IF ~RandomNum(7,4) Global("C#AjantisNBFlirtCycle","GLOBAL",5)~ THEN NB_flirts_4
SAY @152 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",4)~ EXIT
END

IF ~RandomNum(7,5) Global("C#AjantisNBFlirtCycle","GLOBAL",5)~ THEN NB_flirts_5
SAY @153 
= @154
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",4)~ EXIT
END

IF ~RandomNum(7,6) Global("C#AjantisNBFlirtCycle","GLOBAL",5)~ THEN NB_flirts_6
SAY @155 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",4)~ EXIT
END

IF ~RandomNum(7,7) Global("C#AjantisNBFlirtCycle","GLOBAL",5)~ THEN NB_flirts_7
SAY @153 
= @44
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",4)~ EXIT
END



/* queen of love and beauty */
/* Global("C#Ajantis_NBRomRibbon","GLOBAL",1) */

IF ~Global("C#Ajantis_NBRomRibbon","GLOBAL",2)~ THEN ribbon
SAY @245 /* ~(You notice Ajantis working on some ribbons of his armor. Your gaze lasts long enough to notice that it is your ribbon he is fastening - the one you tied to his arm when you were talking about his queen of beauty.)~ */
= @246 /* ~My lady... Forgive me. I am still wearing your ribbon you so generously bestowed on me. It reminds me... (clears his throat). I will treasure it always, my lady. But for now, we have important things to do. We have to get your soul back, my lady, so you can be yourself again. Before that... before that happens, a knight should not ask you to be his queen of love and beauty, my lady. A true knight should not force such a decision upon you while you are not whole. Let... let us move on.~ */
IF ~~ THEN DO ~SetGlobal("C#Ajantis_NBRomRibbon","GLOBAL",3)~ EXIT
END


/* Heiratsantrag (Hölle) */
//after the test. PC did not chose evil solutions, obviously.

IF ~Global("C#AjanNBMarriageProposal","GLOBAL",1)~ THEN heiratsantrag
SAY @156 
= @157
= @158
++ @159 + heiratsantrag_01
++ @160 + heiratsantrag_01
++ @161 + heiratsantrag_02
END

END //APPEND C#AjanJ


CHAIN
IF ~~ THEN C#AjanJ heiratsantrag_01
@162
= @163
= @164
= @165
== C#AjanJ IF ~OR(2) 
	GlobalGT("X#AjantisRomanceBhaal","GLOBAL",0)
	Global("X#AjantisRomanceActive","GLOBAL",0)
!Global("X#AjantisRomanceOtherMan","GLOBAL",1)
!GlobalGT("X#AjantisRomanceInactiveOtherRom","GLOBAL",0)
!Global("X#AjantisCoranChallenge","GLOBAL",2)
!Global("X#XAAjantisBreak","GLOBAL",2)
!Global("X#AjantisRomNoInterestFlirt","GLOBAL",1)
!Global("X#AjantisRomanceNoInterest","GLOBAL",1)~ THEN @241
== C#AjanJ IF ~Race(Player1,HALFORC)~ THEN @242
== C#AjanJ IF ~OR(4)
		Global("X#AjantisRomanceOtherMan","GLOBAL",1)
		GlobalGT("X#AjantisRomanceInactiveOtherRom","GLOBAL",0)
		Global("X#AjantisCoranChallenge","GLOBAL",2)
		Global("X#XAAjantisBreak","GLOBAL",2)~ THEN @243
== C#AjanJ IF ~OR(2)
		Global("X#AjantisRomNoInterestFlirt","GLOBAL",1)
		Global("X#AjantisRomanceNoInterest","GLOBAL",1)~ THEN @244
== C#AjanJ @166
= @167
= @168
= @169
= @170
= @171
= @172
END
++ @173 + heiratsantrag_03
++ @174 + heiratsantrag_04
++ @175 + heiratsantrag_06
++ @176 + heiratsantrag_07
++ @177 + heiratsantrag_08



APPEND C#AjanJ

IF ~~ THEN heiratsantrag_02
SAY @178
IF ~~ THEN + heiratsantrag_01
END

IF ~~ THEN heiratsantrag_03
SAY @179
++ @180 + heiratsantrag_05
++ @175 + heiratsantrag_06
++ @176 + heiratsantrag_07
++ @177 + heiratsantrag_08
END

IF ~~ THEN heiratsantrag_04
SAY @181
++ @180 + heiratsantrag_05
++ @175 + heiratsantrag_06
++ @176 + heiratsantrag_07
++ @177 + heiratsantrag_08
END

IF ~~ THEN heiratsantrag_05
SAY @182
= @183
++ @175 + heiratsantrag_06
++ @176 + heiratsantrag_07
++ @177 + heiratsantrag_08
END

IF ~~ THEN heiratsantrag_06
SAY @184
= @185
++ @234 + heiratsantrag_10
++ @235 + heiratsantrag_09 
END

IF ~~ THEN heiratsantrag_07
SAY @186
++ @175 + heiratsantrag_06
++ @187 + heiratsantrag_08
END

IF ~~ THEN heiratsantrag_08
SAY @188
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) 
SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("C#AjantisConfessionNewRom","LOCALS",3) SetGlobal("C#AjanNBMarriageProposal","GLOBAL",2)
SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",3)~ EXIT
END

IF ~~ THEN heiratsantrag_09
SAY @236
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",2) SetGlobal("C#AjantisConfessionNewRom","LOCALS",3)
GiveItemCreate("C#AJNBRI",Player1,1,0,0) SetGlobal("C#AjanNBMarriageProposal","GLOBAL",2)
SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",3)~ EXIT
END

IF ~~ THEN heiratsantrag_10
SAY @237
= @238
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",2) SetGlobal("C#AjantisConfessionNewRom","LOCALS",3)
GiveItemCreate("C#AJNBRI",Player1,1,0,0) SetGlobal("C#AjanNBMarriageProposal","GLOBAL",2)
SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",3)~ EXIT
END

//Ajantis defended <CHARNAME> in a fight (for HPPercentLT(Player1,25))
IF ~Global("C#AjantisNBBeschuetzerTalk","GLOBAL",1)~ THEN beschuetzer
SAY @189  
++ @190 DO ~SetGlobal("C#AjantisNBBeschuetzerTalk","GLOBAL",2)~ + beschuetzer_01
++ @191 DO ~SetGlobal("C#AjantisNBBeschuetzerTalk","GLOBAL",2)~ + beschuetzer_02
++ @192 DO ~SetGlobal("C#AjantisNBBeschuetzerTalk","GLOBAL",2)~ + beschuetzer_03
++ @193 DO ~SetGlobal("C#AjantisNBBeschuetzerTalk","GLOBAL",2)~ + beschuetzer_04
++ @239 DO ~SetGlobal("C#AjantisNBBeschuetzerTalk","GLOBAL",2)~ + beschuetzer_06
END

IF ~~ THEN beschuetzer_01
SAY @194
IF ~~ THEN + beschuetzer_05
END

IF ~~ THEN beschuetzer_02
SAY @195
IF ~~ THEN + beschuetzer_05
END

IF ~~ THEN beschuetzer_03
SAY @197
IF ~~ THEN + beschuetzer_01
END

IF ~~ THEN beschuetzer_04
SAY @198
IF ~~ THEN + beschuetzer_05
END

IF ~~ THEN beschuetzer_05
SAY @196
IF ~~ THEN EXIT
END

IF ~~ THEN beschuetzer_06
SAY @240
IF ~~ THEN DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",1)~ EXIT
END


/* new beginnings romance, restbanter */
/* Ajantis is cooking */
IF ~Global("C#AjantisNBCooking","GLOBAL",1)~ THEN cooking
SAY @199 
++ @200 DO ~SetGlobal("C#AjantisNBCooking","GLOBAL",2)~ + cooking_02
++ @201 DO ~SetGlobal("C#AjantisNBCooking","GLOBAL",2)~ + cooking_03
++ @202 DO ~SetGlobal("C#AjantisNBCooking","GLOBAL",2)~ + cooking_01
END

IF ~~ THEN cooking_01
SAY @203
IF ~~ THEN + cooking_04
END 

IF ~~ THEN cooking_02
SAY @204 
IF ~~ THEN + cooking_03
END

IF ~~ THEN cooking_03
SAY @205
IF ~~ THEN + cooking_04
END

IF ~~ THEN cooking_04
SAY @206
++ @207 + cooking_06
++ @208 + cooking_07
++ @209 + cooking_05
END

IF ~~ THEN cooking_05
SAY @210
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN cooking_06
SAY @211
++ @212 + cooking_09
++ @213 + cooking_07
++ @214 + cooking_05
END

IF ~~ THEN cooking_07
SAY @215
IF ~~ THEN + cooking_12
END

IF ~~ THEN cooking_08
SAY @221 
IF ~~ THEN + cooking_05
END

IF ~~ THEN cooking_09
SAY @222
++ @223 + cooking_12
++ @224 + cooking_11
++ @225 + cooking_10
END

IF ~~ THEN cooking_10
SAY @226
IF ~~ THEN + cooking_05
END

IF ~~ THEN cooking_11
SAY @227
IF ~~ THEN + cooking_05
END


END //APPEND

CHAIN
IF ~~ THEN C#AjanJ cooking_12
@228
= @216
= @217
== BIMOEN2 IF ~InParty("imoen2")
See("imoen2") 
!StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @229
== C#AjanJ @218
END
++ @219 + cooking_08
++ @220 + cooking_08