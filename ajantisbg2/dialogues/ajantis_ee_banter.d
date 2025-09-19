/* Ajantis - Dorn romance conflict */


/* committed: Global("DornRomanceActive","GLOBAL",2)
Global("OHD_dornsex","GLOBAL",1) */
/* Global("DornLovetalks","GLOBAL",18): sets Global("DornRomanceActive","GLOBAL",2)! */

/* Global("DornLovetalks","GLOBAL",8), 118: I can wait no longer. I would have you as mine, <CHARNAME>. */
EXTEND_BOTTOM DORNJ 118 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @0 /* ~No way. I am engaged to Ajantis. Keep your distance!~ */+ 126
END

/* Global("DornLovetalks","GLOBAL",8), 121: I will give you pleasure as none have before. */
EXTEND_BOTTOM DORNJ 121 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @0 + 126
END

/* You intrigue me, <CHARNAME>. I've waited a long time to find one such as you. */
EXTEND_BOTTOM DORNJ 131
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @1 /* ~Dorn, I am engaged to a man I dearly love and miss. I do not wish any liaison with you.~ */ + 134
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @2 /*~And only to find that I am alreay taken. What a shame.~ */ + 134
END


/* 207: Will you share my bedroll tonight? I assure you... you will not regret it. */
EXTEND_BOTTOM DORNJ 207
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @0 + 210 
END

/* 214: Share my bedroll once more. You know you will not regret it.*/
EXTEND_BOTTOM DORNJ 214
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @3 /* ~Sharing it once was a huge, huge mistake. I am engaged to Ajantis. Keep your distance!~ */ + 210
END


/* Ajantis in party if meeting Dorn */

I_C_T DORN 0 C#AjantisDORN0
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @4 /*~That blood-thirsty Blackguard. <CHARNAME>, let us move away from him, before he gives me a reason to draw my weapon!~ */
END

I_C_T DORN 6 C#AjantisDORN6
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @5 /* ~There is both the temple of Helm and the headquarters of the Order of the Radiant Heart in reach, and I very well hope you are not referring to either of these with your infamous insinuation!~ */
END

I_C_T DORN 27 C#AjantisDORN27
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @6 /* ~Never! Never will we agree to such evil doing! <CHARNAME>?...~ */
END


/* Dorn was taken into the party - Ajantis confronts the PC after he joins the party */ 

APPEND C#AjanJ

IF ~Global("C#Ajantis_Dorn","GLOBAL",1)~ THEN dorn
SAY @7 /* ~<CHARNAME>, I am very surprised to see this... this Blackguard amongst us. I am a force of good and righteousness. We cannot combine forces with such a source of evil.~ */
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
Global("C#AjantisEngaged","GLOBAL",1) 
!Global("OHD_dornsex","GLOBAL",1) 
!Global("DornRomanceActive","GLOBAL",2)~ + @8 /* ~Dorn served me well so far, Ajantis.~ */ + dorn_01
+ ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ + @8 + dorn_01
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
Global("C#AjantisEngaged","GLOBAL",1) 
!Global("OHD_dornsex","GLOBAL",1) 
!Global("DornRomanceActive","GLOBAL",2)~ + @9 /* ~He was here before you. End of discussion.~ */ + dorn_02
+ ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ + @9 + dorn_02
+  ~Global("C#AjantisRomanceActive","GLOBAL",2) 
Global("C#AjantisEngaged","GLOBAL",1)
!Global("OHD_dornsex","GLOBAL",1) 
!Global("DornRomanceActive","GLOBAL",2)~ + @10 /* ~You are right. Dorn, you need to go.~ */ EXTERN DORNJ kick_out 
+ ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ + @10 EXTERN DORNJ kick_out   
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
Global("OHD_dornsex","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)~ + @11 /* ~I combined more than fighting forces with this man while you were away, Ajantis.~ */ + dorn_05
END

IF ~~ THEN dorn_01
SAY @12 /* ~I guess he did, or he would not be here. I am concerned about what will be.~ */
IF ~~ THEN + dorn_03
END

IF ~~ THEN dorn_02
SAY @13 /* ~No, the discussion is not over.~ */
IF ~~ THEN + dorn_03
END

IF ~~ THEN dorn_03
SAY @14 /* ~Do you not remember his blood-lust from the Sword Coast? I am afraid you will have to chose.~ */
++ @15 /* ~I will not chose.~ */ + dorn_04
++ @16 /* ~Then I want you to leave, Ajantis.~ */ + dorn_04
++ @10 EXTERN DORNJ kick_out  
END

IF ~~ THEN dorn_04
SAY @17 /* ~Then I will go. Next time we meet, I hope I will not be forced to confront you as an enemy.~ */
IF ~~ THEN DO ~SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~ EXIT
END 

IF ~~ THEN dorn_05
SAY @18 /* ~What... what do you mean by that, my love?~ */
++ @19 /* ~Well, I am no longer your love is what I mean.~ */ + dorn_06
+ ~!Global("DornRomanceActive","GLOBAL",3)~ + @20 /* ~I did a mistake but I know well enough that you wouldn't forgive me. Our relation ship is over.~ */ + dorn_06
+ ~Global("DornRomanceActive","GLOBAL",2)~ + @21 /* ~I found a better companion, you know. One that really understands who I am.~ */ + dorn_07
END

IF ~~ THEN dorn_06
SAY @22 /* ~I... I lose my one true love. I have to go, <CHARNAME>, and seek forgetting in any fights the Order will send me... Forgive me.~ */
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~ SOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN dorn_07
SAY @23 /* ~What? Him?! Do you not remember his blood-lust from the Sword Coast? Or is this what you are now?~ */
IF ~~ THEN + dorn_07_b
END

IF ~~ THEN dorn_07_b
SAY @24
= @32 /* ~I cannot tolerate this. You gave in to your evil heritage! I failed you! I failed!~ */
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ SOLVED_JOURNAL @10041 EXIT
END

END //APPEND

APPEND DORNJ

IF ~~ THEN kick_out
SAY @25/* ~You want me to go? Because of him?!~ */
= #74657 /* ~If that's how it is, I'll take my leave of you.~ [OH74657] */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()~ EXIT
END

END //APPEND

/* romance additions */
EXTEND_BOTTOM HEXXATJ 29 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @26 /* ~If you mean what I think you mean, I should tell you that I am engaged to Ajantis.~ */ + 30
END

EXTEND_BOTTOM HEXXATJ 31 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @26 + 30
END

EXTEND_BOTTOM HEXXATJ 115 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @27 /* ~You are a fighting companion, Hexxat. Maybe a friend, if that is possible. But nothing more.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)~ + 121
END


/* Ajantis - Hexxat conflict */

I_C_T HEXXAT 0 C#AjantisHexxat0
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @34 /* ~This creature reaks of evil! It just killed an innocent woman. <CHARNAME>, we need to stop it! Do not let yourself be lured into believing anything it says.~ */
END

I_C_T HEXXAT 2 C#AjantisHexxat2
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @28 /* ~We would work together with this evil creature?! <CHARNAME>, you cannot be serious.~ */
END

I_C_T HEXXAT 63 C#AjantisHexxat63
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @29 /* ~How can you say she was a nobody! <CHARNAME>, talking to this evil creature tires me!~ */
END 

I_C_T HEXXAT 172 C#AjantisHexxat172
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @30 /* ~What... By Helm! What evil is this?!~ */
END



/* Hexxat is in party */

APPEND C#AjanJ

IF ~Global("C#Ajantis_Hexxat","GLOBAL",1)~ THEN hexxat
SAY @31 /* ~This... this creature of evil would be our companion? <CHARNAME>, what has become of you?!~ */
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + hexxat_02
IF ~Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN + hexxat_01
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)~ + hexxat_01
END

IF ~~ THEN hexxat_01
SAY @24
IF ~~ THEN DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN hexxat_02
SAY @24
= @32
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ SOLVED_JOURNAL @10041 EXIT
END

END //APPEND

/* Ajantis - Rasaad Romance conflict */


EXTEND_BOTTOM RASAADJ 67 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @35 /* ~You are a good friend to me, Rasaad.~ */ + 72
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @33 /* ~Wait, what? I think I should tell you that I am engaged to Ajantis, Rasaad.~ */ + 75
END

EXTEND_BOTTOM RASAADJ 68 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @36 /* ~I wouldn't want to lose you for the world, Rasaad. You are a really, really good friend to me.~ */ + 72
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @33 + 75
END

EXTEND_BOTTOM RASAADJ 130 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @37 /* ~Thank you, Rasaad. Although I do see you as a good friend, which makes compliments of this sort a bit awkward.~ */ + 132
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @33 + 75
END

EXTEND_BOTTOM RASAADJ 166
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)	Global("C#AjantisEngaged","GLOBAL",1)~ + @33 DO ~IncrementGlobal("RasaadLovetalks","GLOBAL",1)~ + 75
END



/* Ajantis - Rasaad - Rasaad romance was committed although PC and Ajantis were engaged */
CHAIN 
IF WEIGHT #-1
	~InParty(Myself)
	InMyArea("Rasaad")
	!See([ENEMY])
	!Range([NEUTRAL],10)
	CombatCounter(0)
	InParty("Rasaad")
	!StateCheck("Rasaad",CD_STATE_NOTVALID)
	Global("C#AjantisRomanceActive","GLOBAL",3) 
	Global("C#AjantisEngaged","GLOBAL",1)
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("RasaadRomanceActive","GLOBAL",2)
	Global("C#Ajantis_RasaadRomance","GLOBAL",0)~ THEN C#AjanB rasaad_romance
@38 DO ~SetGlobal("C#Ajantis_RasaadRomance","GLOBAL",1)~
== BRASAAD @39
= @40
== C#AjanB @41
= @42
EXIT



/* Ajantis - Rasaad */

//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
Global("C#AjantisRasaad","GLOBAL",0)~ THEN ~C#AjanB~ AjantisRasaad1
@43
DO ~SetGlobal("C#AjantisRasaad","GLOBAL",1)~
== BRASAAD @44
== C#AjanB @45
== BRASAAD @46
== C#AjanB @47
EXIT


/* Ajantis - Neera */


//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
GlobalGT("OHN_ENTER_REFUGE","GLOBAL",0)
Global("C#AjantisNeera","GLOBAL",0)~ THEN ~C#AjanB~ AjantisNeera1
@48
DO ~SetGlobal("C#AjantisNeera","GLOBAL",1)~
== BNEERA IF ~Global("OHN_REFUGE_BURNED","GLOBAL",0)~ THEN @49
== BNEERA IF ~Global("OHN_REFUGE_BURNED","GLOBAL",1)~ THEN @50
== C#AjanB @51
== BNEERA IF ~Global("OHN_REFUGE_BURNED","GLOBAL",0)~ THEN @52
== C#AjanB IF ~Global("OHN_REFUGE_BURNED","GLOBAL",0)~ THEN @53
== BNEERA IF ~Global("OHN_REFUGE_BURNED","GLOBAL",0) !Dead("Tolger") !Dead("Tolger2")~ THEN @54
== BNEERA IF ~Global("OHN_REFUGE_BURNED","GLOBAL",1)~ THEN @55
== C#AjanB IF ~Global("OHN_REFUGE_BURNED","GLOBAL",1)~ THEN @56
== BNEERA IF ~Global("OHN_REFUGE_BURNED","GLOBAL",1)~ THEN @57
== C#AjanB IF ~Global("OHN_REFUGE_BURNED","GLOBAL",1)~ THEN @58
== BNEERA IF ~Global("OHN_REFUGE_BURNED","GLOBAL",1)~ THEN @59
== C#AjanB IF ~Global("OHN_REFUGE_BURNED","GLOBAL",1)~ THEN @60
== BNEERA IF ~OR(2)
Dead("Tolger") Dead("Tolger2")~ THEN @61
== BNEERA @62
== BNEERA @63
== C#AjanB @64
== BNEERA @65
EXIT

/* Ajantis - Wilson */

//#1
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Wilson")
See("Wilson")
!StateCheck("Wilson",CD_STATE_NOTVALID)
Global("C#AjantisWilson","GLOBAL",0)~ THEN ~C#AjanB~ AjantisWilson1
@66
DO ~SetGlobal("C#AjantisWilson","GLOBAL",1)~
== BWILSON @67
== C#AjanB @68
EXIT

/* Ajantis - Rasaad new beginnings romance conflict */

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",1)
Global("C#AjanRasaadRomConflict","GLOBAL",0)~ THEN ~C#AjanB~ AjantisRasaad1
@69
DO ~SetGlobal("C#AjanRasaadRomConflict","GLOBAL",1)~
== BRASAAD @70
== C#AjanB @71
== BRASAAD @72
== C#AjanB @73
== BRASAAD @74
== C#AjanB @75
== BRASAAD @76
== C#AjanB @77
== BRASAAD @78
== C#AjanB @79
== BRASAAD @80
EXIT 

/* Ajantis - Neera, after camp was destroyed */

//#2
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("OHN_REFUGE_BURNED","GLOBAL",1)
Global("C#AjantisNeera","GLOBAL",1)~ THEN BNEERA AjantisNeera2
@81
DO ~SetGlobal("C#AjantisNeera","GLOBAL",2)~
== C#AjanB @82
= @83
== BNEERA @84
EXIT 


/* Ajantis - Rasaad */

//#2
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
Global("C#AjantisRasaad","GLOBAL",1)~ THEN ~C#AjanB~ AjantisRasaad2
@85
DO ~SetGlobal("C#AjantisRasaad","GLOBAL",2)~
== BRASAAD @86
== C#AjanB @87
== BRASAAD @88
== C#AjanB @89
== BRASAAD @90
EXIT


/* Ajantis - Neera */

//#3
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisNeera","GLOBAL",2)~ THEN BNEERA AjantisNeera3
@91
DO ~SetGlobal("C#AjantisNeera","GLOBAL",3)~
== C#AjanB @92
== BNEERA @93
== C#AjanB @94
== BNEERA @95
EXIT



/* Ajantis - Wilson */

//#2
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Wilson")
See("Wilson")
!StateCheck("Wilson",CD_STATE_NOTVALID)
Global("C#AjantisWilson","GLOBAL",1)~ THEN ~C#AjanB~ AjantisWilson2
@96
DO ~SetGlobal("C#AjantisWilson","GLOBAL",2)~
== BWILSON @67
== C#AjanB @97
END
++ @98 + AjantisWilson2_2
++ @99 + AjantisWilson2_2
++ @100 + AjantisWilson2_2

CHAIN
IF ~~ THEN ~C#AjanB~ AjantisWilson2_2
@101
== BWILSON @102
== C#AjanB @103
EXIT


/* Ajantis - Neera */

//#3
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
Global("C#AjantisNeera","GLOBAL",3)~ THEN BNEERA AjantisNeera4
@104
DO ~SetGlobal("C#AjantisNeera","GLOBAL",4)~
== BNEERA @105
== C#AjanB @106
== BNEERA @107
== C#AjanB @108
== BNEERA @109
EXIT

