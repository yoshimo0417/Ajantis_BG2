/* After windspear fight */

ADD_TRANS_TRIGGER KELDORJ 102 ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4)~

EXTEND_BOTTOM KELDORJ 102
  IF ~GlobalGT("C#AjantisIsDeadBG1","GLOBAL",3)~ THEN EXTERN ~GARREN~ 2
END

ADD_TRANS_TRIGGER KELDORJ 103 ~GlobalGT("C#AjantisIsDeadBG1","GLOBAL",2)~


EXTEND_BOTTOM KELDORJ 103
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
!Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisPCBrokeRomance","GLOBAL",1) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @0 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10000 + keldorn_ajantis_erkennen_01
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisPCBrokeRomance","GLOBAL",1) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @2 + keldorn_ajantis_erkennen_01
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
~ + @3 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ + keldorn_ajantis_erkennen_02
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
OR(2) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @5 + keldorn_ajantis_erkennen_02
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
Global("C#AjantisPCBrokeRomance","GLOBAL",1)~ + @6 + keldorn_ajantis_erkennen_02
END

/* Keldorn first meeting */

ADD_TRANS_TRIGGER KELDOR 3 ~OR(4) !GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) 
!Global("C#AjantisExistiert","GLOBAL",0) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
GlobalGT("DomainPaladinBattle","GLOBAL",0)~

EXTEND_BOTTOM KELDOR 3 
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
Global("C#AjantisExistiert","GLOBAL",0) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("DomainPaladinBattle","GLOBAL",0)~ + @1 + keldorn_ajantis_romanzeninfo
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) //only if mod will trigger
Global("C#AjantisExistiert","GLOBAL",0) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("DomainPaladinBattle","GLOBAL",0)~ + @101 + keldorn_ajantis_romanzeninfo_09
END

APPEND KELDOR

IF ~~ THEN keldorn_ajantis_romanzeninfo
SAY @7
++ @8 DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",5)~ + keldorn_ajantis_romanzeninfo_01
++ @9 DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",5)~ + keldorn_ajantis_romanzeninfo_01
+ ~GlobalGT("DomainPaladinBattle","GLOBAL",0) Global("C#AjantisRitterSuche","GLOBAL",0)~ + @10 DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",5)~ + keldorn_ajantis_romanzeninfo_08
+ ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0)~ + @11 DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",5)~ + keldorn_ajantis_romanzeninfo_08
END

IF ~~ THEN keldorn_ajantis_romanzeninfo_01
SAY @12
++ @13 + keldorn_ajantis_romanzeninfo_02
++ @14 + keldorn_ajantis_romanzeninfo_05
END 

IF ~~ THEN keldorn_ajantis_romanzeninfo_02
SAY @15
= @16
++ @17 + keldorn_ajantis_romanzeninfo_03
++ @18 + keldorn_ajantis_romanzeninfo_04
++ @19 + keldorn_ajantis_romanzeninfo_06
++ @14 + keldorn_ajantis_romanzeninfo_07
END

IF ~~ THEN keldorn_ajantis_romanzeninfo_03
SAY @20
++ @21 + keldorn_ajantis_romanzeninfo_04
++ @19 + keldorn_ajantis_romanzeninfo_06
++ @22 + keldorn_ajantis_romanzeninfo_07
END

IF ~~ THEN keldorn_ajantis_romanzeninfo_04
SAY @23
++ @24 + keldorn_ajantis_romanzeninfo_07
++ @25 + keldorn_ajantis_romanzeninfo_07
END

IF ~~ THEN keldorn_ajantis_romanzeninfo_05
SAY @26
COPY_TRANS KELDOR 3
END

IF ~~ THEN keldorn_ajantis_romanzeninfo_06
SAY @27
++ @24 + keldorn_ajantis_romanzeninfo_07
++ @25 + keldorn_ajantis_romanzeninfo_07
END

IF ~~ THEN keldorn_ajantis_romanzeninfo_07
SAY @28
COPY_TRANS KELDOR 3
END

IF ~~ THEN keldorn_ajantis_romanzeninfo_08
SAY @29
= @30
COPY_TRANS KELDOR 3
END

IF ~~ THEN keldorn_ajantis_romanzeninfo_09
SAY @102
COPY_TRANS KELDOR 3
END


END //APPEND KELDOR

APPEND KELDORJ

IF ~~ THEN keldorn_ajantis_erkennen_01
SAY @31
IF ~~ THEN + keldorn_ajantis_erkennen_02
END

IF ~~ THEN keldorn_ajantis_erkennen_02
SAY @32
COPY_TRANS KELDORJ 103
END

/*
!Global("C#AjantisRomanceActive","GLOBAL",3) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)

Global("DomainPaladinBattle","GLOBAL",0)
*/



/* Global("C#AjantisKeldornBG1","GLOBAL",x): 
0: did not mention Ajantis upon first meeting, and was not in Headquarters
1: did not mention Ajantis upon first meeting, but was in Headquarters (i.e. knows about Ajantis)
2: triggers first dialogue about Ajantis
3: triggers first dialogue, Keldorn was in the headquarters and knows about Ajantis' mission.

4: first dialogue about Ajantis ended - no incident in the Windspear Hills yet


5: mentioned Ajantis upon first meeting (only romance case)
6: timer set for second dialogue (only romance case and incident in the Windspear Hills known), for 4 or 5
7: triggers dialogue after Windspear incident

8: all dialogues about Ajantis ended - incident in the Windspear Hills known
*/







/* Keldorn mentions Ajantis - Ajantis not dead in BG1 */

/* no incident at Windspear Hills yet */

IF WEIGHT #-1 ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4) 
OR(2)
	Global("C#AjantisKeldornBG1","GLOBAL",2)
	Global("C#AjantisKeldornBG1","GLOBAL",3)
Global("DomainPaladinBattle","GLOBAL",0)~ THEN keldorn_ajantisBG1
SAY @33
++ @9 DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",4)~ + keldorn_ajantisBG1_01
++ @34 DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",4)~ + keldorn_ajantisBG1_02
END

IF ~~ THEN keldorn_ajantisBG1_01
SAY @35
++ @36 + keldorn_ajantisBG1_02
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) 
!PartyHasItem("C#AJ0007")~ + @38 + keldorn_ajantisBG1_05
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
PartyHasItem("C#AJ0007")~ + @38 + keldorn_ajantisBG1_06
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @38 + keldorn_ajantisBG1_11
END 

END //APPEND KELDORJ

CHAIN
IF ~~ THEN KELDORJ keldorn_ajantisBG1_02
@39 
== KELDORJ IF ~Global("C#AjantisKeldornBG1","GLOBAL",3)~ THEN @107
END
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN + keldorn_ajantisBG1_11
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!PartyHasItem("C#AJ0007")~ THEN + keldorn_ajantisBG1_02a
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
PartyHasItem("C#AJ0007")~ THEN + keldorn_ajantisBG1_02b


APPEND KELDORJ

IF ~~ THEN keldorn_ajantisBG1_02a
SAY @105
IF ~~ THEN + keldorn_ajantisBG1_02c
END

IF ~~ THEN keldorn_ajantisBG1_02b
SAY @40
IF ~~ THEN + keldorn_ajantisBG1_02c
END

IF ~~ THEN keldorn_ajantisBG1_02c
SAY @16
++ @17 + keldorn_ajantisBG1_03
++ @18 + keldorn_ajantisBG1_04
++ @19 + keldorn_ajantisBG1_08
++ @14 + keldorn_ajantisBG1_07
END

IF ~~ THEN keldorn_ajantisBG1_03
SAY @20
++ @21 + keldorn_ajantisBG1_04
++ @19 + keldorn_ajantisBG1_08
++ @41 + keldorn_ajantisBG1_07
END

IF ~~ THEN keldorn_ajantisBG1_04
SAY @23
++ @24 + keldorn_ajantisBG1_07
++ @25 + keldorn_ajantisBG1_07
END

IF ~~ THEN keldorn_ajantisBG1_05
SAY @42
IF ~~ THEN EXIT 
END

IF ~~ THEN keldorn_ajantisBG1_06
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN keldorn_ajantisBG1_07
SAY @44
IF ~~ THEN EXIT
END

IF ~~ THEN keldorn_ajantisBG1_08
SAY @27
++ @24 + keldorn_ajantisBG1_07
++ @25 + keldorn_ajantisBG1_07
END


/* after incident at Windspear Hills */

IF WEIGHT #-1 ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4) 
OR(2)
	Global("C#AjantisKeldornBG1","GLOBAL",2)
	Global("C#AjantisKeldornBG1","GLOBAL",3)
!Global("DomainPaladinBattle","GLOBAL",0)~ THEN keldorn_ajantisBG1
SAY @108
= @109
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @38 DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",7)~ + keldorn_ajantisBG1_11
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN + keldorn_ajantisBG1B
END


/* follow up for romance case, if "first dialogue" did not trigger because PC talked with Keldorn about Ajantis at first meeting */

IF WEIGHT #-1
~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4) Global("C#AjantisKeldornBG1","GLOBAL",6)~ THEN keldorn_ajantisBG1B
SAY @45
IF ~!Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",7)~ + keldorn_ajantisBG1_09
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisKeldornBG1","GLOBAL",7)~ + keldorn_ajantisBG1_10
END

IF ~~ THEN keldorn_ajantisBG1_09
SAY @46
IF ~~ THEN EXIT
END

IF ~~ THEN keldorn_ajantisBG1_10
SAY @47
IF ~~ THEN EXIT
END

IF ~~ THEN keldorn_ajantisBG1_11
SAY @106
IF ~~ THEN EXIT
END

END //APPEND KELDORJ

/* If Ajantis died in BG1 */
CHAIN 
IF WEIGHT #-1
~Global("C#AjantisIsDeadBG1","GLOBAL",4) Global("C#AjantisKeldornBG1","GLOBAL",2)~ THEN KELDORJ ajantis_dead
@37 /* ~<CHARNAME>... your name sounds familiar. My squire, Ajantis Ilvastarr, combined forces with you for a while, during the Iron Crisis at the Sword Coast, or so I heard.~ */
= @103 /*~He died in battle at your side, I take it.~ */
= @109 /* It is a great pity that, with all the possibilities of arcane and divine magic, his life should be wasted in such young an age.~ */
== KELDORJ IF ~!Alignment(Player1,MASK_EVIL)~ THEN @104
END
IF ~~ THEN + keldorn_ajantisBG1_11



//-----------------
//Ajantis - Keldorn interaction


CHAIN
IF ~Global("C#AjantisKeldornWelcomeActive","GLOBAL",1) Global("C#AjantisKeldornWelcome","GLOBAL",0)~ THEN C#AjanJ  ajantis_gruesst_keldorn
@48 DO ~SetGlobal("C#AjantisKeldornWelcome","GLOBAL",1)
SetGlobal("C#AjantisKeldornWelcomeActive","GLOBAL",2)~
== KELDORJ @49
EXIT


CHAIN
IF WEIGHT #-1
~Global("C#AjantisKeldorn01","GLOBAL",1)~ THEN ~KELDORJ~ C#AjantisKeldornBanter01
@50
DO ~SetGlobal("C#AjantisKeldorn01","GLOBAL",2)~
== ~C#AjanJ~ @51
== ~KELDORJ~ @52
== ~C#AjanJ~ @53
== ~KELDORJ~ @54
== ~C#AjanJ~ @55
== ~KELDORJ~ @56
EXIT

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
InParty("keldorn")
!See([ENEMY])
See("keldorn")
!StateCheck("keldorn",CD_STATE_NOTVALID)
Global("C#AjantisKeldorn02","GLOBAL",0)~ THEN ~C#AjanB~ C#AjantisKeldornBanter02
@57
DO ~SetGlobal("C#AjantisKeldorn02","GLOBAL",1)~
== ~BKELDOR~ @58
== ~C#AjanB~ @59
== ~BKELDOR~ @60
== ~C#AjanB~ @61
== ~BKELDOR~ @62
== ~C#AjanB~ @63
== ~BKELDOR~ @64
== ~C#AjanB~ @65
== ~BKELDOR~ @66
== ~C#AjanB~ @67
== ~BKELDOR~ @68
EXIT

CHAIN
IF ~Global("C#AjantisKeldornWetClothes","GLOBAL",2)~ THEN ~C#AjanJ~ C#AjantisKeldornBanter03
@69
DO ~SetGlobal("C#AjantisKeldornWetClothes","GLOBAL",3)~
== ~BKELDOR~ @70
== ~C#AjanB~ @71
== ~BKELDOR~ @72
== ~C#AjanB~ @73
== ~BKELDOR~ @74
== ~C#AjanB~ @75
EXIT

//reaction to Keldorn's quest: Maria

//Keldorn brought Maria to prison
CHAIN
IF WEIGHT #-1
~Global("C#AjantisKeldornMaria","GLOBAL",4)~ THEN ~C#AjanJ~ C#AjantisKeldornMAria4
@76 DO ~SetGlobal("C#AjantisKeldornMaria","GLOBAL",5)~
== ~BKELDOR~ @77
== ~C#AjanB~ @78
== ~BKELDOR~ @79
= @80
EXIT

//Keldorn forgave Maria 
CHAIN
IF WEIGHT #-1
~Global("C#AjantisKeldornMaria","GLOBAL",2)~ THEN ~C#AjanJ~ C#AjantisKeldornMAria5
@81 DO ~SetGlobal("C#AjantisKeldornMaria","GLOBAL",3)~
== ~BKELDOR~ @82
== ~C#AjanB~ @83
== ~BKELDOR~ @84
== ~C#AjanB~ @85
== ~BKELDOR~ @86
EXIT

CHAIN
IF WEIGHT #-1
~GlobalLT("B!KeldornRomReturn","GLOBAL",5) //not for b's Keldorn romance mod
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#AjantisKeldornMaria","GLOBAL",3)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
Detect("C#Ajantis") InMyArea(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN ~BKELDOR~ C#AjantisKeldornMAria5B
@87 DO ~SetGlobal("C#AjantisKeldornMaria","GLOBAL",5)~
== ~C#AjanB~ @88
== ~BKELDOR~ @89
= @90
= @91
EXIT

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#AjantisKeldornMaria","GLOBAL",5)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
Detect("C#Ajantis") InMyArea(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2) 
Global("C#AjantisNoRomance","GLOBAL",0)
!Global("C#AjantisRomanceMatch","GLOBAL",1)
!Global("C#AjantisIsThinking","GLOBAL",1)~ THEN ~BKELDOR~ C#AjantisKeldornMAria5C
@92 DO ~SetGlobal("C#AjantisKeldornMaria","GLOBAL",6)~
= @93
== ~C#AjanB~ @94
== ~BKELDOR~ @95
= @96
== ~C#AjanB~ @97
== ~BKELDOR~ @98
EXIT

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#AjantisKeldornMaria","GLOBAL",5)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
Detect("C#Ajantis") InMyArea(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(3)
!Global("C#AjantisRomanceActive","GLOBAL",2) 
Global("C#AjantisNoRomance","GLOBAL",1)
!Global("C#AjantisRomanceMatch","GLOBAL",1)~ THEN ~BKELDOR~ C#AjantisKeldornMAria5C
@99 DO ~SetGlobal("C#AjantisKeldornMaria","GLOBAL",6)~
== ~C#AjanB~ @94
== ~BKELDOR~ @95
= @100
== ~C#AjanB~ @97
== ~BKELDOR~ @98
EXIT


