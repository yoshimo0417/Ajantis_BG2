APPEND C#AjanJ



//PC sided with Bodhi


IF ~Global("C#AjanPCWorkingBodhi","GLOBAL",1)~ THEN bodhi
SAY @2
= @3
= @4
IF ~Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjanPCWorkingBodhi","GLOBAL",2)~ + bodhi_01
IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjanPCWorkingBodhi","GLOBAL",2)~ + bodhi_02
END

IF ~~ THEN bodhi_01
SAY @5
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisScheidung","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~  SOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN bodhi_02
SAY @6
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ SOLVED_JOURNAL @10029 EXIT
END



//freiwillige Verwandlung des HCs in den Schlächter
/* 	Global("Slayer10","GLOBAL",2) */
IF ~Global("C#AjantisSlayer10","GLOBAL",1)~ THEN slayer_change
SAY @7
= @8
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayer10","GLOBAL",2)~ EXIT
END

IF ~Global("C#AjantisSlayer10","GLOBAL",3) Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN slayer_change_after
SAY @9
++ @10 + slayer_change_after_05
++ @11 + slayer_change_after_06
++ @12 + slayer_change_after_07
END

IF ~Global("C#AjantisSlayer10","GLOBAL",3) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN slayer_change_after
SAY @13
++ @10 + slayer_change_after_01
++ @11 + slayer_change_after_02
++ @12 + slayer_change_after_03
END

IF ~~ THEN slayer_change_after_01
SAY @14
IF ~~ THEN + slayer_change_after_04
END

IF ~~ THEN slayer_change_after_02
SAY @15
IF ~~ THEN + slayer_change_after_04
END

IF ~~ THEN slayer_change_after_03
SAY @16
IF ~~ THEN + slayer_change_after_04
END

IF ~~ THEN slayer_change_after_04
SAY @17
= @18
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayer10","GLOBAL",4)~ EXIT
END

IF ~~ THEN slayer_change_after_05
SAY @19
IF ~~ THEN + slayer_change_after_08
END

IF ~~ THEN slayer_change_after_06
SAY @20
IF ~~ THEN + slayer_change_after_08
END

IF ~~ THEN slayer_change_after_07
SAY @21
IF ~~ THEN + slayer_change_after_08
END

IF ~~ THEN slayer_change_after_08
SAY @22
= @18
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayer10","GLOBAL",4)~ EXIT
END


IF ~Global("C#AjantisSlayer10","GLOBAL",5)~ THEN slayer_change_two
SAY @23
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + slayer_change_two_01
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN + slayer_change_two_02
END

IF ~~ THEN slayer_change_two_01
SAY @24
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayer10","GLOBAL",6)
SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisScheidung","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~  SOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN slayer_change_two_02
SAY @25
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayer10","GLOBAL",6)
SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)~ EXIT
END



//Seelenklau

/* fires after Bodhi's dialogue at the beginning of the maze, after the stealing of the soul; PC just learned that Imoen is a child of Bhaal as well. 
ALL pATHs*/

IF ~Global("C#AjantisHCSeele","GLOBAL",1)~ THEN seelenklau
SAY @26
++ @27 DO ~SetGlobal("C#AjantisHCSeele","GLOBAL",2)~ + seelenklau_01
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @28 DO ~SetGlobal("C#AjantisHCSeele","GLOBAL",2)~ + seelenklau_03
++ @29 DO ~SetGlobal("C#AjantisHCSeele","GLOBAL",2)~ + seelenklau_04
++ @30 DO ~SetGlobal("C#AjantisHCSeele","GLOBAL",2)~ + seelenklau_05
++ @31 DO ~SetGlobal("C#AjantisHCSeele","GLOBAL",2)~ + seelenklau_05
END

IF ~~ THEN seelenklau_01
SAY @32
IF ~~ THEN + seelenklau_02
END

IF ~~ THEN seelenklau_02
SAY @33
IF ~~ THEN + seelenklau_06
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + seelenklau_07
END

IF ~~ THEN seelenklau_03
SAY @34
IF ~~ THEN + seelenklau_02
END

IF ~~ THEN seelenklau_04
SAY @35
IF ~~ THEN + seelenklau_02
END

IF ~~ THEN seelenklau_05
SAY @36
= @37
IF ~~ THEN + seelenklau_06
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + seelenklau_07
END

IF ~~ THEN seelenklau_06
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN seelenklau_07
SAY @268
IF ~~ THEN + seelenklau_06
END


//Dreamtalks

/* First dream.
*/

IF ~Global("C#AjantisHadImoenDream1","GLOBAL",1)~ THEN erster_traum
SAY @39 
++ @40 DO ~SetGlobal("C#AjantisHadImoenDream1","GLOBAL",2)~ + erster_traum_01
++ @41 DO ~SetGlobal("C#AjantisHadImoenDream1","GLOBAL",2)~ + erster_traum_04
++ @42 DO ~SetGlobal("C#AjantisHadImoenDream1","GLOBAL",2)~ + erster_traum_04
END

IF ~~ THEN erster_traum_01
SAY @43
++ @44 + erster_traum_02
++ @45 + erster_traum_02
++ @46 + erster_traum_03
++ @47 + erster_traum_03
END

IF ~~ THEN erster_traum_02
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN erster_traum_03
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN erster_traum_04
SAY @50
IF ~~ THEN EXIT
END

/* Second dream
*/

IF ~Global("C#AjantisHadJonDream1","GLOBAL",1)~ THEN zweiter_traum
SAY @51 
++ @52 DO ~SetGlobal("C#AjantisHadJonDream1","GLOBAL",2)~ + zweiter_traum_03
++ @53 DO ~SetGlobal("C#AjantisHadJonDream1","GLOBAL",2)~ + zweiter_traum_02
++ @54 DO ~SetGlobal("C#AjantisHadJonDream1","GLOBAL",2)~ + zweiter_traum_01
END

IF ~~ THEN zweiter_traum_01
SAY @55
IF ~~ THEN EXIT
END

IF ~~ THEN zweiter_traum_02
SAY @56
IF ~~ THEN EXIT
END

IF ~~ THEN zweiter_traum_03
SAY @57
IF ~~ THEN + zweiter_traum_02
END

/* Third dream.
*/

IF ~Global("C#AjantisHadJonDream2","GLOBAL",1)~ THEN dritter_traum
SAY @58 
++ @59 DO ~SetGlobal("C#AjantisHadJonDream2","GLOBAL",2)~ + dritter_traum_02
++ @60 DO ~SetGlobal("C#AjantisHadJonDream2","GLOBAL",2)~ + dritter_traum_03
++ @42 DO ~SetGlobal("C#AjantisHadJonDream2","GLOBAL",2)~ + dritter_traum_01
END

IF ~~ THEN dritter_traum_01
SAY @61
IF ~~ THEN EXIT
END

IF ~~ THEN dritter_traum_02
SAY @62
++ @63 + dritter_traum_04
++ @60 + dritter_traum_03
++ @64 + dritter_traum_04
END

IF ~~ THEN dritter_traum_03
SAY @65
IF ~~ THEN + dritter_traum_04
END

IF ~~ THEN dritter_traum_04
SAY @66
IF ~~ THEN EXIT
END

/* 4th dream. (Slayer dream)
*/

IF ~Global("C#AjantisHadSlayerDream","GLOBAL",1)~ THEN vierter_traum
SAY @67 
= @68
++ @69 DO ~SetGlobal("C#AjantisHadSlayerDream","GLOBAL",2)~ + vierter_traum_01
++ @70 DO ~SetGlobal("C#AjantisHadSlayerDream","GLOBAL",2)~ + vierter_traum_02
END

IF ~~ THEN vierter_traum_01
SAY @71
IF ~~ THEN + vierter_traum_03
END

IF ~~ THEN vierter_traum_02
SAY @72
IF ~~ THEN + vierter_traum_03
END

IF ~~ THEN vierter_traum_03
SAY @73
IF ~~ THEN EXIT
END

/* In case Ajantis was not in the group when this dream fired, he will notice the change after rejoining the group.
*/

IF ~Global("C#AjantisHadSlayerDream","GLOBAL",5)~ THEN slayer_traum
SAY @68 
++ @69 DO ~SetGlobal("C#AjantisHadSlayerDream","GLOBAL",2)~ + slayer_traum_01
++ @74 DO ~SetGlobal("C#AjantisHadSlayerDream","GLOBAL",2)~ + slayer_traum_02
END

IF ~~ THEN slayer_traum_01
SAY @71
IF ~~ THEN + slayer_traum_03
END

IF ~~ THEN slayer_traum_02
SAY @75
IF ~~ THEN + slayer_traum_03
END

IF ~~ THEN slayer_traum_03
SAY @76
IF ~~ THEN EXIT
END


/* 5th dream. (Ellisime)
*/

IF ~Global("C#AjanEllesimeDream1","GLOBAL",1)~ THEN fuenfter_traum
SAY @77 
++ @78 DO ~SetGlobal("C#AjanEllesimeDream1","GLOBAL",2)~ + fuenfter_traum_03
++ @79 DO ~SetGlobal("C#AjanEllesimeDream1","GLOBAL",2)~ + fuenfter_traum_01
++ @80 DO ~SetGlobal("C#AjanEllesimeDream1","GLOBAL",2)~ + fuenfter_traum_02
END

IF ~~ THEN fuenfter_traum_01
SAY @81 
IF ~~ THEN DO ~SetGlobal("C#AjanEllesimeDream1PID","Global",1)~ EXIT 
END

IF ~~ THEN fuenfter_traum_02
SAY @82 
IF ~~ THEN DO ~SetGlobal("C#AjanEllesimeDream1PID","Global",1)~ EXIT 
END

IF ~~ THEN fuenfter_traum_03
SAY @83
++ @84 + fuenfter_traum_04
++ @85 + fuenfter_traum_04
++ @86 + fuenfter_traum_01
END

IF ~~ THEN fuenfter_traum_04
SAY @87
IF ~~ THEN EXIT
END


/* PC got transformed into Bhaal's avatar without her will (Bodhi's maze) */

IF ~Global("C#AjanSlayerChangeAR1514","GLOBAL",1) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN first_slayer_change
SAY @88 
= @89 
++ @90 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + first_slayer_change_01
++ @91 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + first_slayer_change_01
++ @92 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + first_slayer_change_01
++ @93 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + first_slayer_change_03
END

IF ~~ THEN first_slayer_change_01
SAY @94
IF ~~ THEN + first_slayer_change_02
END

IF ~~ THEN first_slayer_change_02
SAY @95
IF ~~ THEN EXIT
END

IF ~~ THEN first_slayer_change_03
SAY @96
IF ~~ THEN + first_slayer_change_01
END

END //APPEND C#AjanJ


//Verwandlung in Avatar nach Rast
EXTEND_BOTTOM Player1 7
IF ~Global("C#AjantisPCAvatar2","GLOBAL",0)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN EXTERN C#AjanJ avatar_2
END

EXTEND_BOTTOM Player1 10
IF ~Global("C#AjantisPCNachAvatar2","GLOBAL",0)
Global("C#AjantisEndageredLovedOne","GLOBAL",1)
InParty("C#Ajantis") 
InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXTERN C#AjanJ nach_avatar_2
END

APPEND C#AjanJ


IF ~~ THEN avatar_2
SAY @97 
IF ~~ THEN DO ~SetGlobal("C#AjantisPCAvatar2","GLOBAL",1) 
SetGlobal("C#AjantisEndageredLovedOne","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END

IF ~Global("C#AjantisPCNachAvatar2","GLOBAL",1)~ THEN nach_avatar_2
SAY @98 
= @99
++ @100 DO ~SetGlobal("C#AjantisSlayerHow","LOCALS",1)~ + nach_avatar_2_05
++ @241 + nach_avatar_2_09
++ @102 DO ~SetGlobal("C#AjantisSlayerHug","LOCALS",1)~ + nach_avatar_2_02
++ @245 DO ~SetGlobal("C#AjantisSlayerHurt","LOCALS",1)~ + nach_avatar_2_08
++ @104 + nach_avatar_2_04
++ @243 + nach_avatar_2_07
END

IF ~~ THEN nach_avatar_2_01
SAY @105 
IF ~~ THEN DO ~SetGlobal("C#AjantisPCNachAvatar2","GLOBAL",2)
SetGlobal("C#AjantisSlayerLoveTalks","GLOBAL",1) 
SetGlobal("C#AjantisSlayerCycle","GLOBAL",1)
RealSetGlobalTimer("C#AjantisSlayerTimer","GLOBAL",600)~ EXIT
END

IF ~~ THEN nach_avatar_2_02
SAY @106
+ ~Global("C#AjantisSlayerHow","LOCALS",0)~ + @100 DO ~SetGlobal("C#AjantisSlayerHow","LOCALS",1)~ + nach_avatar_2_05
+ ~Global("C#AjantisSlayerFightMe","LOCALS",0)~ + @101 DO ~SetGlobal("C#AjantisSlayerFightMe","LOCALS",1)~ + nach_avatar_2_06
+ ~Global("C#AjantisSlayerHurt","LOCALS",0)~ + @245 DO ~SetGlobal("C#AjantisSlayerHurt","LOCALS",1)~ + nach_avatar_2_08
++ @103 + nach_avatar_2_03
++ @104 + nach_avatar_2_04
++ @243 + nach_avatar_2_07
END

IF ~~ THEN nach_avatar_2_03
SAY @107 
IF ~~ THEN + nach_avatar_2_01
END

IF ~~ THEN nach_avatar_2_04
SAY @108
IF ~~ THEN + nach_avatar_2_01
END

IF ~~ THEN nach_avatar_2_05
SAY @109
+ ~Global("C#AjantisSlayerFightMe","LOCALS",0)~ + @101 DO ~SetGlobal("C#AjantisSlayerFightMe","LOCALS",1)~ + nach_avatar_2_06
+ ~Global("C#AjantisSlayerHug","LOCALS",0)~ + @102 DO ~SetGlobal("C#AjantisSlayerHug","LOCALS",1)~ + nach_avatar_2_02
++ @103 + nach_avatar_2_03
++ @104 + nach_avatar_2_04
END

IF ~~ THEN nach_avatar_2_06
SAY @242
IF ~~ THEN + nach_avatar_2_01
END

IF ~~ THEN nach_avatar_2_07
SAY @244
IF ~~ THEN + nach_avatar_2_01
END

IF ~~ THEN nach_avatar_2_08
SAY @246
+ ~Global("C#AjantisSlayerHow","LOCALS",0)~ + @100 DO ~SetGlobal("C#AjantisSlayerHow","LOCALS",1)~ + nach_avatar_2_05
+ ~Global("C#AjantisSlayerHug","LOCALS",0)~ + @102 DO ~SetGlobal("C#AjantisSlayerHug","LOCALS",1)~ + nach_avatar_2_02
+ ~Global("C#AjantisSlayerFightMe","LOCALS",0)~ + @101 DO ~SetGlobal("C#AjantisSlayerFightMe","LOCALS",1)~ + nach_avatar_2_06
++ @103 + nach_avatar_2_03
++ @104 + nach_avatar_2_04
++ @243 + nach_avatar_2_07
END

IF ~~ THEN nach_avatar_2_09
SAY @247 
+ ~Global("C#AjantisSlayerHow","LOCALS",0)~ + @100 DO ~SetGlobal("C#AjantisSlayerHow","LOCALS",1)~ + nach_avatar_2_05
+ ~Global("C#AjantisSlayerFightMe","LOCALS",0)~ + @101 DO ~SetGlobal("C#AjantisSlayerFightMe","LOCALS",1)~ + nach_avatar_2_06
+ ~Global("C#AjantisSlayerHurt","LOCALS",0)~ + @245 DO ~SetGlobal("C#AjantisSlayerHurt","LOCALS",1)~ + nach_avatar_2_08
++ @103 + nach_avatar_2_03
++ @104 + nach_avatar_2_04
++ @243 + nach_avatar_2_07
END


IF ~Global("C#AjantisSlayerLoveTalks","GLOBAL",2)~ THEN slayer_LT1
SAY @110 
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayerLoveTalks","GLOBAL",3)~ EXIT
END

IF ~Global("C#AjantisSlayerLoveTalks","GLOBAL",4)~ THEN slayer_LT2
SAY @111 
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayerLoveTalks","GLOBAL",5)~ EXIT
END

IF ~Global("C#AjantisSlayerLoveTalks","GLOBAL",6)~ THEN slayer_LT3
SAY @112 
= @116
= @252
++ @113 + slayer_LT3_01
++ @114 + slayer_LT3_01
++ @115 + slayer_LT3_01
END

IF ~~ THEN slayer_LT3_01
SAY @117
++ @118 + slayer_LT3_02
++ @119 + slayer_LT3_02
++ @120 + slayer_LT3_02
++ @121 + slayer_LT3_02
END

IF ~~ THEN slayer_LT3_02
SAY @122
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayerLoveTalks","GLOBAL",7)~ EXIT
END

IF ~Global("C#AjantisSlayerLoveTalks","GLOBAL",8)~ THEN slayer_LT4
SAY @248 
= @249
= @250
++ @251 DO ~SetGlobal("C#AjantisSlayer4Hug","LOCALS",1)~ + slayer_LT4_01 
++ @256 DO ~SetGlobal("C#AjantisSlayer4Zweifel","LOCALS",1)~ + slayer_LT4_03 
++ @258 DO ~SetGlobal("C#AjantisSlayer4Reuen","LOCALS",1)~ + slayer_LT4_04 
++ @262 DO ~SetGlobal("C#AjantisSlayer4Weh","LOCALS",1)~ + slayer_LT4_05
++ @255 DO ~SetGlobal("C#AjantisSlayer4OK","LOCALS",1)~ + slayer_LT4_06
++ @260 + slayer_LT4_02 
END

IF ~~ THEN slayer_LT4_01
SAY @253
+ ~Global("C#AjantisSlayer4Zweifel","LOCALS",0)~ + @256 DO ~SetGlobal("C#AjantisSlayer4Zweifel","LOCALS",1)~ + slayer_LT4_03 
+ ~Global("C#AjantisSlayer4Reuen","LOCALS",0)~ + @258 DO ~SetGlobal("C#AjantisSlayer4Reuen","LOCALS",1)~ + slayer_LT4_04 
+ ~Global("C#AjantisSlayer4Weh","LOCALS",0)~ + @262 DO ~SetGlobal("C#AjantisSlayer4Weh","LOCALS",1)~ + slayer_LT4_05
+ ~Global("C#AjantisSlayer4OK","LOCALS",0)~ + @255 DO ~SetGlobal("C#AjantisSlayer4OK","LOCALS",1)~ + slayer_LT4_06 
++ @265 + slayer_LT4_02 
++ @260 + slayer_LT4_02 
END

IF ~~ THEN slayer_LT4_02
SAY @261
= @254
IF ~~ THEN DO ~SetGlobal("C#AjantisSlayerLoveTalks","GLOBAL",9) SetGlobal("C#AjantisSlayerCycle","GLOBAL",2)~ EXIT
END

IF ~~ THEN slayer_LT4_03
SAY @257
+ ~Global("C#AjantisSlayer4Hug","LOCALS",0)~ + @251 DO ~SetGlobal("C#AjantisSlayer4Hug","LOCALS",1)~ + slayer_LT4_01 
+ ~Global("C#AjantisSlayer4Reuen","LOCALS",0)~ + @258 DO ~SetGlobal("C#AjantisSlayer4Reuen","LOCALS",1)~ + slayer_LT4_04 
+ ~Global("C#AjantisSlayer4Weh","LOCALS",0)~ + @262 DO ~SetGlobal("C#AjantisSlayer4Weh","LOCALS",1)~ + slayer_LT4_05
+ ~Global("C#AjantisSlayer4OK","LOCALS",0)~ + @255 DO ~SetGlobal("C#AjantisSlayer4OK","LOCALS",1)~ + slayer_LT4_06 
++ @265 + slayer_LT4_02 
++ @260 + slayer_LT4_02 
END

IF ~~ THEN slayer_LT4_04
SAY @259
+ ~Global("C#AjantisSlayer4Hug","LOCALS",0)~ + @251 DO ~SetGlobal("C#AjantisSlayer4Hug","LOCALS",1)~ + slayer_LT4_01 
+ ~Global("C#AjantisSlayer4Zweifel","LOCALS",0)~ + @256 DO ~SetGlobal("C#AjantisSlayer4Zweifel","LOCALS",1)~ + slayer_LT4_03 
+ ~Global("C#AjantisSlayer4Weh","LOCALS",0)~ + @262 DO ~SetGlobal("C#AjantisSlayer4Weh","LOCALS",1)~ + slayer_LT4_05
+ ~Global("C#AjantisSlayer4OK","LOCALS",0)~ + @255 DO ~SetGlobal("C#AjantisSlayer4OK","LOCALS",1)~ + slayer_LT4_06 
++ @265 + slayer_LT4_02 
++ @260 + slayer_LT4_02 
END

IF ~~ THEN slayer_LT4_05
SAY @263
+ ~Global("C#AjantisSlayer4Hug","LOCALS",0)~ + @251 DO ~SetGlobal("C#AjantisSlayer4Hug","LOCALS",1)~ + slayer_LT4_01 
+ ~Global("C#AjantisSlayer4Zweifel","LOCALS",0)~ + @256 DO ~SetGlobal("C#AjantisSlayer4Zweifel","LOCALS",1)~ + slayer_LT4_03 
+ ~Global("C#AjantisSlayer4Reuen","LOCALS",0)~ + @258 DO ~SetGlobal("C#AjantisSlayer4Reuen","LOCALS",1)~ + slayer_LT4_04 
+ ~Global("C#AjantisSlayer4OK","LOCALS",0)~ + @255 DO ~SetGlobal("C#AjantisSlayer4OK","LOCALS",1)~ + slayer_LT4_06 
++ @265 + slayer_LT4_02 
++ @260 + slayer_LT4_02 
END

IF ~~ THEN slayer_LT4_06
SAY @264
+ ~Global("C#AjantisSlayer4Hug","LOCALS",0)~ + @251 DO ~SetGlobal("C#AjantisSlayer4Hug","LOCALS",1)~ + slayer_LT4_01 /*(Nehmt Ajantis wortlos in die Arme.)*/
+ ~Global("C#AjantisSlayer4Zweifel","LOCALS",0)~ + @256 DO ~SetGlobal("C#AjantisSlayer4Zweifel","LOCALS",1)~ + slayer_LT4_03 /* Zweifelt Ihr an meiner Kraft?*/
+ ~Global("C#AjantisSlayer4Reuen","LOCALS",0)~ + @258 DO ~SetGlobal("C#AjantisSlayer4Reuen","LOCALS",1)~ + slayer_LT4_04 /*Bereut Ihr, mit einer Tochter des Bhaal liiert zu sein?*/
+ ~Global("C#AjantisSlayer4Weh","LOCALS",0)~ + @262 DO ~SetGlobal("C#AjantisSlayer4Weh","LOCALS",1)~ + slayer_LT4_05
++ @265 + slayer_LT4_02 
++ @260 + slayer_LT4_02 
END





/* in hell... romance case */

IF ~Global("C#AjantisInHell","GLOBAL",2)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN hell_rom
SAY @123 
++ @124 DO ~SetGlobal("C#AjantisInHell","GLOBAL",3)~ + hell_rom_01
++ @125 DO ~SetGlobal("C#AjantisInHell","GLOBAL",3)~ + hell_rom_03
++ @126 DO ~SetGlobal("C#AjantisInHell","GLOBAL",3)~ + hell_rom_01
++ @127 DO ~SetGlobal("C#AjantisInHell","GLOBAL",3)~ + hell_rom_04
END

IF ~~ THEN hell_rom_01
SAY @128
IF ~~ THEN + hell_rom_02
END

IF ~~ THEN hell_rom_02
SAY @129
= @130
IF ~~ THEN EXIT
END

IF ~~ THEN hell_rom_03
SAY @131
IF ~~ THEN + hell_rom_02
END

IF ~~ THEN hell_rom_04
SAY @132
IF ~~ THEN + hell_rom_02
END

/* PC failed the Order of the Radiant Heart, engaged romance case */
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",2) 
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjanPCOrderKickOut","GLOBAL",1)~ THEN order_failed_ER
SAY @133
= @134
= @135
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisFailedPaladinOrder","GLOBAL",2) LeaveParty() Escapearea()~ EXIT
END

/* CHARNAME was cleric of church of Helm and got kicked out of the church (CODED)
OR(2)
Global("Stripped","GLOBAL",2)
Global("Talonwar","GLOBAL",5) 
-> moved to C#AjanJ.d
*/


//Ajantis defended <CHARNAME> in a fight (for HPPercentLT(Player1,15))
IF ~Global("C#AjantisBeschuetzerTalk","GLOBAL",1)~ THEN beschuetzer
SAY @136 
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @137 + beschuetzer_01
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @137 + beschuetzer_02
++ @138 + beschuetzer_03
++ @139 + beschuetzer_04
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_01
SAY @140
++ @141 + beschuetzer_06
++ @142 + beschuetzer_07
++ @143 + beschuetzer_08
++ @144 + beschuetzer_05
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_02
SAY @145
++ @141 + beschuetzer_06
++ @142 + beschuetzer_07
++ @143 + beschuetzer_08
++ @144 + beschuetzer_05
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_03
SAY @146
++ @141 + beschuetzer_06
++ @142 + beschuetzer_07
++ @143 + beschuetzer_08
++ @144 + beschuetzer_05
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_04
SAY @147
++ @141 + beschuetzer_06
++ @142 + beschuetzer_07
++ @143 + beschuetzer_08
++ @148 + beschuetzer_05
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_05
SAY @149
++ @141 + beschuetzer_06
++ @142 + beschuetzer_07
++ @143 + beschuetzer_08
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_06
SAY @150
++ @151 + beschuetzer_10
++ @152 + beschuetzer_13
++ @153 + beschuetzer_10
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_07
SAY @154
++ @151 + beschuetzer_10
++ @152 + beschuetzer_13
++ @153 + beschuetzer_10
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_08
SAY @155
++ @156 + beschuetzer_06
++ @157 + beschuetzer_07
++ @158 + beschuetzer_09 
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_09
SAY @159
++ @151 + beschuetzer_10
++ @152 + beschuetzer_13
++ @153 + beschuetzer_10
++ @266 + beschuetzer_14
END

IF ~~ THEN beschuetzer_10
SAY @160
IF ~HPPercentLT(Player1,100)~ THEN + beschuetzer_11
IF ~HPPercentGT(Player1,99)~ THEN + beschuetzer_12
END

IF ~~ THEN beschuetzer_11
SAY @161
IF ~~ THEN DO ~SetGlobal("C#AjantisBeschuetzerTalk","GLOBAL",2) SetGlobalTimer("C#AjantisNighttalkWundeT","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN beschuetzer_12
SAY @162
IF ~~ THEN DO ~SetGlobal("C#AjantisBeschuetzerTalk","GLOBAL",2) SetGlobalTimer("C#AjantisNighttalkWundeT","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ THEN beschuetzer_13
SAY @163
IF ~HPPercentLT(Player1,100)~ THEN + beschuetzer_11
IF ~HPPercentGT(Player1,99)~ THEN + beschuetzer_12
END

IF ~~ THEN beschuetzer_14
SAY @267
IF ~HPPercentLT(Player1,100)~ THEN DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + beschuetzer_11
IF ~HPPercentGT(Player1,99)~ THEN DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + beschuetzer_12
END

//Keldorn's quest

IF ~Global("C#AjantisKeldornTurmoil","GLOBAL",2)~ THEN keldorns_quest
SAY @164
= @165
+ ~OR(2) Class(Player1,PALADIN) Global("PaladinOrder","GLOBAL",1)~ + @236 DO ~SetGlobal("C#AjantisKeldornTurmoil","GLOBAL",3)~ + keldorns_quest_20
+ ~!Class(Player1,PALADIN) !Global("PaladinOrder","GLOBAL",1)~ + @236 DO ~SetGlobal("C#AjantisKeldornTurmoil","GLOBAL",3)~ + keldorns_quest_21
++ @166 DO ~SetGlobal("C#AjantisKeldornTurmoil","GLOBAL",3)~ + keldorns_quest_07
++ @167 DO ~SetGlobal("C#AjantisKeldornTurmoil","GLOBAL",3)~ + keldorns_quest_01
++ @168 DO ~SetGlobal("C#AjantisKeldornTurmoil","GLOBAL",3)~ + keldorns_quest_08
++ @169 DO ~SetGlobal("C#AjantisKeldornTurmoil","GLOBAL",3)~ + keldorns_quest_09
END

IF ~~ THEN keldorns_quest_01
SAY @170
++ @166 + keldorns_quest_07
++ @171 + keldorns_quest_08
++ @172 + keldorns_quest_02
++ @173 + keldorns_quest_11
END

IF ~~ THEN keldorns_quest_02
SAY @174
++ @175 + keldorns_quest_03
++ @176 + keldorns_quest_11
END

IF ~~ THEN keldorns_quest_03
SAY @177
++ @178 + keldorns_quest_04
++ @179 + keldorns_quest_05
++ @180 + keldorns_quest_12
END

IF ~~ THEN keldorns_quest_04
SAY @181
++ @179 + keldorns_quest_05
++ @182 + keldorns_quest_12
END

IF ~~ THEN keldorns_quest_05
SAY @183
++ @184 + keldorns_quest_06
++ @185 + keldorns_quest_13
++ @186 +  keldorns_quest_14
END

IF ~~ THEN keldorns_quest_06
SAY @187
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_quest_07
SAY @188
+ ~OR(2) Class(Player1,PALADIN) Global("PaladinOrder","GLOBAL",1)~ + @236 + keldorns_quest_20
+ ~!Class(Player1,PALADIN) !Global("PaladinOrder","GLOBAL",1)~ + @236 + keldorns_quest_21
++ @171 + keldorns_quest_08
++ @172 + keldorns_quest_02
++ @173 + keldorns_quest_11
END

IF ~~ THEN keldorns_quest_08
SAY @189
++ @178 + keldorns_quest_04
++ @179 + keldorns_quest_05
++ @180 + keldorns_quest_12
END

IF ~~ THEN keldorns_quest_09
SAY @190
+ ~OR(2) Class(Player1,PALADIN) Global("PaladinOrder","GLOBAL",1)~ + @236 + keldorns_quest_20
+ ~!Class(Player1,PALADIN) !Global("PaladinOrder","GLOBAL",1)~ + @236 + keldorns_quest_21
++ @166 + keldorns_quest_07
++ @191 + keldorns_quest_01
++ @168 + keldorns_quest_08
++ @192 + keldorns_quest_10
END

IF ~~ THEN keldorns_quest_10
SAY @193
IF ~~ THEN + keldorns_quest_05
END

IF ~~ THEN keldorns_quest_11
SAY @194
++ @195 + keldorns_quest_03
++ @196 + keldorns_quest_15
END

IF ~~ THEN keldorns_quest_12
SAY @197
IF ~~ THEN + keldorns_quest_05
END

IF ~~ THEN keldorns_quest_13
SAY @198
++ @199 + keldorns_quest_06
++ @186 + keldorns_quest_14
END

IF ~~ THEN keldorns_quest_14
SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_quest_15
SAY @201
++ @202 + keldorns_quest_03
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @203 + keldorns_quest_16
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @204 + keldorns_quest_17
END

IF ~~ THEN keldorns_quest_16
SAY @205
++ @206 + keldorns_quest_16b
++ @207 + keldorns_quest_16b
++ @208 + keldorns_quest_16b
++ @209 + keldorns_quest_18
END

IF ~~ THEN keldorns_quest_16b
SAY @210
= @211
= @212
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisRomanceGestorben","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN keldorns_quest_17 //(Scheidung) Trennung
SAY @213
++ @206 + keldorns_quest_17b 
++ @207 + keldorns_quest_17b 
++ @214 + keldorns_quest_17b 
++ @209 + keldorns_quest_18
END

IF ~~ THEN keldorns_quest_17b 
SAY @215
= @216
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisScheidung","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ SOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN keldorns_quest_18
SAY @217
++ @218 + keldorns_quest_03
++ @219 + keldorns_quest_19
END

IF ~~ THEN keldorns_quest_19
SAY @220
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_quest_20
SAY @237 
= @238
= @239
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_quest_21
SAY @240 
= @238
= @239
IF ~~ THEN EXIT
END


/* player1 was offered a place in the Order and rejected Global("PaladinOrder","GLOBAL",2) */

IF ~Global("C#AjanPCOrderRejected","GLOBAL",1)~ THEN order_rejected_ER
SAY @221
++ @222 DO ~SetGlobal("C#AjanPCOrderRejected","GLOBAL",2)~ + order_rejected_ER_01
++ @223 DO ~SetGlobal("C#AjanPCOrderRejected","GLOBAL",2)~ + order_rejected_ER_01
++ @224 DO ~SetGlobal("C#AjanPCOrderRejected","GLOBAL",2)~ + order_rejected_ER_02
++ @225 DO ~SetGlobal("C#AjanPCOrderRejected","GLOBAL",2)~ + order_rejected_ER_02
END 

IF ~~ THEN order_rejected_ER_01
SAY @226 
IF ~~ THEN + order_rejected_ER_02
END

IF ~~ THEN order_rejected_ER_02
SAY @227
IF ~~ THEN EXIT
END


//PC nahm Service in den Lustkammern an

IF ~Global("C#AjanLustChamber","GLOBAL",2)~ THEN dadrow21
SAY @228
= @229
IF ~~ THEN DO ~SetGlobal("C#AjanLustChamber","GLOBAL",3)~ EXIT
END





END //APPEND C#AjanJ

//-----------------
/* Verwandlung in Drow. 
Triggert nach der Verwandlung, ausserhalb von Adalons Höhle -> verschoben nach C#AjanJ.d, da es für romance und nicht-romance getriggert wird. */

//---------------
/* Underworld, "chambers of lust" */

INTERJECT DADROW21 2 C#AjanLustChamber1
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",1) 
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @230   
== DADROW21 @231
END
++ @232 + lust_chamber_01
++ @233 + lust_chamber_02

APPEND DADROW21 
IF ~~ THEN lust_chamber_01
SAY @234
IF ~~ THEN + lust_chamber_02
END

IF ~~ THEN lust_chamber_02
SAY @235
COPY_TRANS DADROW21 2
END
END //APPEND DADROW21 

ADD_TRANS_ACTION DADROW21 BEGIN 4 END BEGIN END ~SetGlobal("C#AjanLustChamber","GLOBAL",1)~
