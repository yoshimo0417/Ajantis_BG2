
/* first meeting: upon entering Garren's hut with Ajantis the first time */
/* in C#AjanJ_pr.d */



/* second meeting: in Garren's hut */
CHAIN
IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",0)
Global("C#AjantisEilaFirstSpawn","GLOBAL",2)~ THEN C#AJEILA second_meeting
@0 DO ~SetGlobal("C#AjantisEilaSecondMeeting","GLOBAL",1) RealSetGlobalTimer("C#AjantisEilaMeetingTimer","GLOBAL",3600)~
== C#AjanJ @1
== C#AjanJ @2
== C#AJEILA @3
== C#AjanJ @4
== C#AJEILA @5
EXIT

/* second or third meeting: in the city, after timer "RealGlobalTimerExpired("C#AjantisEilaMeetingTimer","GLOBAL")" */

CHAIN
IF ~Global("C#AjantisEilaCityMeeting","GLOBAL",1)~ THEN C#AjanJ eila_meeting_city
@6 DO ~SetGlobal("C#AjantisEilaCityMeeting","GLOBAL",2)~ 
== C#AJEILA IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",0)~ THEN @7
== C#AjanJ IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",0)~ THEN @8
== C#AjanJ IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",0)~ THEN @2
== C#AJEILA IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",0)~ THEN @3
== C#AJEILA IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",1)~ THEN @9
== C#AjanJ @10
== C#AJEILA @11
== C#AJEILA IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",1)~ THEN @12 DO ~EscapeArea()~
== C#AjanJ IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",1)~ THEN @13 
== C#AJEILA IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",0)~ THEN @14
== C#AjanJ IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",0)~ THEN @4
== C#AJEILA IF ~Global("C#AjantisEilaSecondMeeting","GLOBAL",0)~ THEN @5 DO ~SetGlobal("C#AjantisEilaSecondMeeting","GLOBAL",1) EscapeArea()~
EXIT


/* optional meetings: in Garren's hut. Random encounter: Ajantis and Eila talk with each other */


CHAIN
IF ~RandomNum(10,1) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_01
@15
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @16
EXIT

CHAIN
IF ~RandomNum(10,2) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_02
@17
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @18
EXIT

CHAIN
IF ~RandomNum(10,3) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_03
@19
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @20
EXIT

CHAIN
IF ~RandomNum(10,4) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_04
@21
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @22
EXIT

CHAIN
IF ~RandomNum(10,5) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_05
@23
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @24
== C#AJEILA IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @25
EXIT

CHAIN
IF ~RandomNum(10,6) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_06
@26
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @27
EXIT

CHAIN
IF ~RandomNum(10,7) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_07
@15
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @28
== C#AJEILA IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @29
EXIT

CHAIN
IF ~RandomNum(10,8) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_08
@17
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @30
EXIT

CHAIN
IF ~RandomNum(10,9) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_09
@19
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @31
EXIT

CHAIN
IF ~RandomNum(10,10) Global("C#AjanEnderoldQuest","GLOBAL",0)~ THEN C#AJEILA random_10
@19
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @32
EXIT

/* GlobalGT("C#AjanEnderoldQuest","GLOBAL",0) GlobalLT("C#AjanEnderoldQuest","GLOBAL",6): Eila is in the Councel Building (AR1002) */

APPEND C#AJEILA
IF ~RandomNum(3,1) GlobalGT("C#AjanEnderoldQuest","GLOBAL",0) GlobalLT("C#AjanEnderoldQuest","GLOBAL",6)~ THEN eila_quest_01
SAY @33
IF ~~ THEN EXIT
END

IF ~RandomNum(3,2) GlobalGT("C#AjanEnderoldQuest","GLOBAL",0) GlobalLT("C#AjanEnderoldQuest","GLOBAL",6)~ THEN eila_quest_02
SAY @34
IF ~~ THEN EXIT
END

IF ~RandomNum(3,3) GlobalGT("C#AjanEnderoldQuest","GLOBAL",0) GlobalLT("C#AjanEnderoldQuest","GLOBAL",6)~ THEN eila_quest_03
SAY @35
IF ~~ THEN EXIT
END

END //APPEND



/* Ajantis talks about Garren's family. After the "city meeting dialogue". PC can react in different ways, depending on RA status.) 

not in Garren's hut*/
APPEND C#AjanJ 

IF ~Global("C#AjantisEilaCityMeeting","GLOBAL",3)~ THEN garrens_family
SAY @36
++ @37 DO ~SetGlobal("C#AjantisEilaCityMeeting","GLOBAL",4)~ + garrens_family_01
++ @38 DO ~SetGlobal("C#AjantisEilaCityMeeting","GLOBAL",4)~ + garrens_family_03
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @39 DO ~SetGlobal("C#AjantisEilaCityMeeting","GLOBAL",4)~ + garrens_family_04
++ @40 DO ~SetGlobal("C#AjantisEilaCityMeeting","GLOBAL",4)~ + garrens_family_04
++ @41 DO ~SetGlobal("C#AjantisEilaCityMeeting","GLOBAL",4)~ + garrens_family_02
END

IF ~~ THEN garrens_family_01
SAY @42
++ @38 + garrens_family_03
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @39 + garrens_family_04
++ @40 + garrens_family_04
++ @41 + garrens_family_02
END

IF ~~ THEN garrens_family_02
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN garrens_family_03
SAY @44
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @39 + garrens_family_04
++ @45 + garrens_family_04
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @46 + garrens_family_02
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @46 + garrens_family_08
++ @41 + garrens_family_02
END

IF ~~ THEN garrens_family_04
SAY @47
++ @48 + garrens_family_07
+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0)~ + @49 + garrens_family_06
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @50 + garrens_family_05
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @46 + garrens_family_02
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @46 + garrens_family_08
++ @41 + garrens_family_02
END

IF ~~ THEN garrens_family_05
SAY @51
IF ~~ THEN + garrens_family_08
END

IF ~~ THEN garrens_family_06
SAY @52
IF ~~ THEN EXIT
END

IF ~~ THEN garrens_family_07
SAY @53
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @46 + garrens_family_02
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @46 + garrens_family_08
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @54 + garrens_family_09
+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0)~ + @49 + garrens_family_06
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @50 + garrens_family_05
++ @41 + garrens_family_02
END

IF ~~ THEN garrens_family_08
SAY @55
= @56
IF ~~ THEN EXIT
END

IF ~~ THEN garrens_family_09
SAY @57
IF ~~ THEN EXIT
END

END //APPEND

/* PID-option (in C#AjanJ_PID.d): 

+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0) Global("C#AjanEnderoldQuest","GLOBAL",0)
Global("C#AjantisEilaSecondMeeting","GLOBAL",1)~ + ~You have some interest in Eila, don't you? What a fine looking woman.~ + eila_PID_
*/



/* In front of the City Council: Ajantis and the PC wittnesses the arrest of Lord Enderold. After that, meeting with Garren: Ajantis learns that the lord is Eila's fiance. */

BEGIN C#AJENDE //Lord Enderold
BEGIN C#AJWAC1 // talking soldier

CHAIN
IF ~Global("C#AjanEnderQuestSpawn","GLOBAL",1)~ THEN C#AJWAC1 enderolds_verhaftung
@58 DO ~SetGlobal("C#AjanEnderQuestSpawn","GLOBAL",2)~
== C#AJENDE @59
== C#AJWAC1 @60
== C#AJENDE @61
== C#AJWAC1 @62 DO ~ActionOverride("C#AJWAC2",EscapeArea()) EscapeArea()~
== C#AJENDE @63 DO ~SetGlobal("C#AjanEnderoldMove","GLOBAL",1)~
EXIT

APPEND GARREN 
IF WEIGHT #-1 
~Global("C#AjanEnderQuestSpawn","GLOBAL",2)~ THEN talking_enderold
SAY @64
++ @65 DO ~SetGlobal("C#AjanEnderQuestSpawn","GLOBAL",3)~ + talking_enderold_01
++ @66 DO ~SetGlobal("C#AjanEnderQuestSpawn","GLOBAL",3)~ + talking_enderold_01
++ @67 DO ~SetGlobal("C#AjanEnderQuestSpawn","GLOBAL",3)~ + talking_enderold_01
END

END //APPEND

CHAIN
IF ~~ THEN GARREN talking_enderold_01
@68
= @69
== C#AjanJ @70
== GARREN @71
== C#AjanJ @72
== C#AjanJ IF ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @73
== C#AjanJ @74
END
++ @75 EXTERN GARREN talking_enderold_03
++ @76 EXTERN GARREN talking_enderold_02
++ @77 EXTERN GARREN talking_enderold_04

APPEND GARREN
IF ~~ THEN talking_enderold_02
SAY @78
IF ~~ THEN + talking_enderold_03
END

IF ~~ THEN talking_enderold_03
SAY @79
= @80
IF ~~ THEN DO ~SetGlobal("C#AjanEnderoldQuest","GLOBAL",1) RealSetGlobalTimer("C#AjantisEilaMeetingTimer","GLOBAL",2000) EscapeArea()~ UNSOLVED_JOURNAL @10042 EXIT
END

IF ~~ THEN talking_enderold_04
SAY @81
IF ~~ THEN + talking_enderold_03
END

END //APPEND



/* only for RA = 0 (Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0)): Ajantis is devastated, since he fell in love with Eila. But there is no way he would try to break the engagement: a Helm follower has to fulfill his duty; contracts have to be fulfilled */

APPEND C#AjanJ
IF ~Global("C#AjanEnderQuestSpawn","GLOBAL",4)~ THEN ajantis_eila
SAY @82
++ @83 DO ~SetGlobal("C#AjanEnderQuestSpawn","GLOBAL",5)~ + ajantis_eila_01
++ @84 DO ~SetGlobal("C#AjanEnderQuestSpawn","GLOBAL",5)~ + ajantis_eila_02
++ @85 DO ~SetGlobal("C#AjanEnderQuestSpawn","GLOBAL",5)~ + ajantis_eila_04
END

IF ~~ THEN ajantis_eila_01
SAY @86
IF ~~ THEN + ajantis_eila_03
END

IF ~~ THEN ajantis_eila_02
SAY @87
IF ~~ THEN + ajantis_eila_03
END

IF ~~ THEN ajantis_eila_03
SAY @88
= @89
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_eila_04
SAY @90
IF ~~ THEN EXIT
END

END //APPEND



/* quest: proof the innocence of lord Enderold */


/* Brega */

EXTEND_BOTTOM HABREGA 0
+ ~GlobalGT("C#AjanEnderoldQuest","GLOBAL",0) GlobalLT("C#AjanEnderoldQuest","GLOBAL",6)~ + @91 + brega_enderold_01
+ ~PartyHasItem("C#AJRECE") Global("C#AjanEnderoldQuest","GLOBAL",5)~ + @92 + brega_enderold_02
+ ~Global("C#AjanEnderoldQuest","GLOBAL",2)~ + @181 + brega_enderold_05
END

APPEND HABREGA 
IF ~~ THEN brega_enderold_01
SAY @93
IF ~~ THEN EXIT
END

IF ~~ THEN brega_enderold_03
SAY @94
++ @95 + brega_enderold_04
++ @96 + brega_enderold_04
END

IF ~~ THEN brega_enderold_04
SAY @97
IF ~~ THEN + 26
END

IF ~~ THEN brega_enderold_05
SAY @182
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN HABREGA brega_enderold_02
@98
== C#AJEILA IF ~!StateCheck("C#AJEILA",CD_STATE_NOTVALID)~ THEN @99 DO ~EscapeArea()~
== HABREGA @100
END
++ @101 DO ~EraseJournalEntry(@10042)
EraseJournalEntry(@10043)
EraseJournalEntry(@10044)
EraseJournalEntry(@10045)
AddExperienceParty(35000) SetGlobal("C#AjanEnderoldQuest","GLOBAL",6) TakePartyItem("C#AJRECE") DestroyItem("C#AJRECE")~ SOLVED_JOURNAL @10046 + brega_enderold_03
++ @102 DO ~EraseJournalEntry(@10042)
EraseJournalEntry(@10043)
EraseJournalEntry(@10044)
EraseJournalEntry(@10045)
AddExperienceParty(35000) SetGlobal("C#AjanEnderoldQuest","GLOBAL",6) TakePartyItem("C#AJRECE") DestroyItem("C#AJRECE")~ SOLVED_JOURNAL @10046 + 26


/* prison keeper */

EXTEND_BOTTOM PRISONK1 0 
+ ~GlobalGT("C#AjanEnderoldQuest","GLOBAL",0) GlobalLT("C#AjanEnderoldQuest","GLOBAL",6)~ + @103 + 6
END

/* Lord Enderold in prison */

/* Areascript:

//AR1005.bcs
*/

APPEND C#AJENDE 
IF ~Global("C#AjanSpokenToEnderold","GLOBAL",0)~ THEN enderold
SAY @104
+ ~Global("C#AjanEnderoldQuest","GLOBAL",1)~ + @105 DO ~SetGlobal("C#AjanSpokenToEnderold","GLOBAL",1)~ + enderold_03
++ @106 DO ~SetGlobal("C#AjanSpokenToEnderold","GLOBAL",1)~ + enderold_02
++ @107 DO ~SetGlobal("C#AjanSpokenToEnderold","GLOBAL",1)~ + enderold_01
++ @180 DO ~SetGlobal("C#AjanSpokenToEnderold","GLOBAL",1)~ + enderold_01
END

IF ~~ THEN enderold_01
SAY @108
IF ~~ THEN EXIT
END

IF ~~ THEN enderold_02
SAY @109
+ ~Global("C#AjanEnderoldQuest","GLOBAL",1)~ + @105 + enderold_03
++ @110 + enderold_01
++ @180 + enderold_01
END

IF ~~ THEN enderold_03
SAY @111
= @112
= @113
IF ~~ THEN DO ~SetGlobal("C#AjanEnderoldQuest","GLOBAL",2)
SetGlobal("C#AjanSpokenToEnderold","GLOBAL",2)~ UNSOLVED_JOURNAL @10043 EXIT
END

IF ~Global("C#AjanSpokenToEnderold","GLOBAL",1)~ THEN enderold_04
SAY @114
++ @115 + enderold_03
++ @116 EXIT
++ @180 + enderold_01
END

IF ~GlobalGT("C#AjanEnderoldQuest","GLOBAL",1)
GlobalLT("C#AjanEnderoldQuest","GLOBAL",7)~ THEN enderold_05
SAY @117
+ ~Global("C#AjanEnderoldQuest","GLOBAL",3)~ + @118 + enderold_07
+ ~Global("C#AjanEnderoldQuest","GLOBAL",5)~ + @119 + enderold_09
++ @120 + enderold_06
END

IF ~~ THEN enderold_06
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN enderold_07
SAY @122
++ @123 + enderold_08
++ @124 + enderold_08
END

IF ~~ THEN enderold_08
SAY @125
= @126
IF ~~ THEN DO ~SetGlobal("C#AjanEnderoldQuest","GLOBAL",4)~ UNSOLVED_JOURNAL @10044 EXIT
END

IF ~~ THEN enderold_09
SAY @127
IF ~~ THEN EXIT
END

END //APPEND

/* guard (in the barracks): C#AJEFFL - Flinn AR0332 */

BEGIN C#AJEFFL
IF ~GlobalLT("C#AjanEnderoldQuest","GLOBAL",3)~ THEN flinn_elderon
SAY @128
+ ~Global("C#AjanEnderoldQuest","GLOBAL",2)~ + @129 + flinn_elderon_01
++ @183 + flinn_elderon_07
++ @102 EXIT
END

IF ~~ THEN flinn_elderon_01
SAY @130
= @131
++ @132 + flinn_elderon_03
++ @133 + flinn_elderon_02
END

IF ~~ THEN flinn_elderon_02
SAY @134
IF ~~ THEN + flinn_elderon_03
END

IF ~~ THEN flinn_elderon_03
SAY @135
= @136
IF ~~ THEN DO ~SetGlobal("C#AjanEnderoldQuest","GLOBAL",3)~ UNSOLVED_JOURNAL @10045 EXIT 
END

IF ~GlobalGT("C#AjanEnderoldQuest","GLOBAL",2) Global("C#AjanEnderQuestToldFlinn","GLOBAL",0)~ THEN flinn_elderon_04
SAY @137
IF ~GlobalLT("C#AjanEnderoldQuest","GLOBAL",6)~ THEN EXIT
+ ~GlobalGT("C#AjanEnderoldQuest","GLOBAL",5)~ + @138 + flinn_elderon_05
+ ~GlobalGT("C#AjanEnderoldQuest","GLOBAL",5)~ + @139 EXIT
END

IF ~~ THEN flinn_elderon_05
SAY @140
IF ~~ THEN DO ~SetGlobal("C#AjanEnderQuestToldFlinn","GLOBAL",1)~ EXIT
END

IF ~Global("C#AjanEnderQuestToldFlinn","GLOBAL",1)~ THEN flinn_elderon_06
SAY @141
IF ~~ THEN EXIT
END

IF ~~ THEN flinn_elderon_07
SAY @184
IF ~~ THEN EXIT
END


/* betraying buttler: C#AJELER - Erenal */

/* area script:  
//AR1007.bcs
 */


BEGIN C#AJELER
IF ~GlobalLT("C#AjanEnderoldQuest","GLOBAL",5)~ THEN erenal
SAY @142
+ ~Global("C#AjanEnderoldQuest","GLOBAL",4)~ + @143 + erenal_01
++ @144 EXIT
END

IF ~~ THEN erenal_01
SAY @145
++ @146 + erenal_03
++ @147 + erenal_02
END

IF ~~ THEN erenal_02
SAY @148
IF ~~ THEN + erenal_03
END

IF ~~ THEN erenal_03
SAY @149
++ @150 + erenal_04
++ @151 + erenal_05
++ @152 + erenal_06
END

IF ~~ THEN erenal_04
SAY @153
++ @151 + erenal_05
++ @154 + erenal_06
END

IF ~~ THEN erenal_05
SAY @155
++ @150 + erenal_04
++ @154 + erenal_06
END

IF ~~ THEN erenal_06
SAY @156
= @157
= @158
++ @159 + erenal_08
++ @160 + erenal_07
END

IF ~~ THEN erenal_07
SAY @161
IF ~~ THEN DO ~GiveItem("C#AJRECE",Player1) SetGlobal("C#AjanEnderoldQuest","GLOBAL",5) Enemy() EscapeArea()~ EXIT
END

IF ~~ THEN erenal_08
SAY @162
IF ~~ THEN DO ~GiveItem("C#AJRECE",Player1) SetGlobal("C#AjanEnderoldQuest","GLOBAL",5) EscapeArea()~ EXIT
END


/* Last meeting in Garren's hut: Eila and lord Enderold thank the PC and Ajantis for their help and leave for their wedding. */

/* areascript
// AR1204.bcs

*/

CHAIN
IF ~Global("C#AjanEnderoldQuest","GLOBAL",7)~ THEN C#AJENDE ending
@163 DO ~SetGlobal("C#AjanEnderoldQuest","GLOBAL",8)~
== C#AJEILA @164
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @165
== C#AJEILA IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @166
== C#AJENDE IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @167
== C#AJENDE @168
= @169 DO ~GiveItemCreate("potn45",Player1,1,0,0) GiveItemCreate("potn38",Player1,1,0,0) GiveItemCreate("potn33",Player1,1,0,0) GiveGoldForce(5000)~
END
++ @170 EXTERN C#AJEILA ending_01 
++ @171 EXTERN C#AJEILA ending_01 
++ @172 EXTERN C#AJEILA ending_01 

CHAIN
IF ~~ THEN C#AJEILA ending_01 
@173
== C#AJENDE @174
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @175
== C#AJEILA IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @176
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @177
== C#AJEILA IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @178
== C#AJEILA @179 DO ~SetGlobal("C#AjanEnderoldQuest","GLOBAL",8) ActionOverride("C#AJENDE",EscapeArea()) EscapeArea()~
EXIT




/* since I'm a sucker for happy endings, Eila will probably be met again in ToB (for RA = 0), now a widow. (or at last in the epilogue: Ajantis will marry her) */





