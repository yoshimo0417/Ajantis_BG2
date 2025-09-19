BEGIN C#KNIG06

IF ~Global("C#AjanKnigh06Enemy","GLOBAL",2)~ THEN no_fight
SAY @0
IF ~~ THEN DO ~SetGlobal("C#AjanKnigh06Enemy","GLOBAL",0)~ EXIT
END

CHAIN
IF ~Global("C#AjantisPortalPalKampf","GLOBAL",2)~ THEN C#KNIG06 knight06
@1
== KELDORJ IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @2
== C#KNIG06 IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @3 DO ~SetGlobal("C#AjantisKnig06Keldorn","GLOBAL",1)~
== C#KNIG06 @4
END
+ ~Global("C#AjantisExistiert","GLOBAL",0)~ + @5 DO ~SetGlobal("C#AjantisPortalPalKampf","GLOBAL",3) SetGlobal("C#AjantisTalkedAboutKnights","GLOBAL",1)~ + knight06_03
+ ~PartyHasItem("C#AJ0002")~ + @6 DO ~SetGlobal("C#AjantisPortalPalKampf","GLOBAL",3)~ + knight06_08 
++ @7 DO ~SetGlobal("C#AjantisPortalPalKampf","GLOBAL",3)~ + knight06_04
++ @8 DO ~SetGlobal("C#AjantisPortalPalKampf","GLOBAL",3)~ + knight06_05
++ @9 DO ~SetGlobal("C#AjantisPortalPalKampf","GLOBAL",3)~ + knight06_02

APPEND C#KNIG06

IF ~Global("C#AjantisPortalPalKampfPC","GLOBAL",2)~ THEN knight06_01
SAY @10
IF ~~ THEN DO ~SetGlobal("C#AjantisPortalPalKampfPC","GLOBAL",1) RealSetGlobalTimer("C#AjantisPortalKampfPCTimer","GLOBAL",15)~ EXIT
END

IF ~~ THEN knight06_02
SAY @11
IF ~~ THEN DO ~SetGlobal("C#AjantisPortalPalKampf","GLOBAL",4)~ EXIT
END

IF ~~ THEN knight06_03
SAY @12
= @13
= @14 
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisTalkedAboutAjantis","GLOBAL",0)~ + @15 DO ~SetGlobal("C#AjantisTalkedAboutAjantis","GLOBAL",1)~ + knight06_09
+ ~PartyHasItem("C#AJ0002")~ + @16 + knight06_08
++ @7 + knight06_04
++ @17 + knight06_05
++ @9 + knight06_02
END

IF ~~ THEN knight06_04
SAY @18
IF ~~ THEN DO ~SetGlobal("C#AjantisPortalPalKampf","GLOBAL",5)~ EXIT
END

IF ~~ THEN knight06_05
SAY @19
++ @20 + knight06_04
++ @9 + knight06_02
END

IF ~Global("C#AjantisPortalPalKampf","GLOBAL",4)~ THEN knight06_06
SAY @21
++ @22 EXIT 
++ @23 + knight06_05
+ ~PartyHasItem("C#AJ0002")~ + @6 + knight06_08 
+ ~Global("C#AjantisTalkedAboutKnights","GLOBAL",0) Global("C#AjantisExistiert","GLOBAL",0)~ + @5 DO ~SetGlobal("C#AjantisTalkedAboutKnights","GLOBAL",1)~ + knight06_03
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisTalkedAboutKnights","GLOBAL",1) Global("C#AjantisTalkedAboutAjantis","GLOBAL",0) Global("C#AjantisExistiert","GLOBAL",0)~ + @24 DO ~setGlobal("C#AjantisTalkedAboutAjantis","GLOBAL",1)~ + knight06_09
++ @25 + knight06_04
END

IF ~Global("C#AjantisPortalPalKampf","GLOBAL",5)~ THEN knight06_07
SAY @26
++ @27 EXIT 
++ @28 + knight06_05
+ ~PartyHasItem("C#AJ0002")~ + @6 + knight06_08 
+ ~Global("C#AjantisTalkedAboutKnights","GLOBAL",0) Global("C#AjantisExistiert","GLOBAL",0)~ + @5 DO ~SetGlobal("C#AjantisTalkedAboutKnights","GLOBAL",1)~ + knight06_03
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisTalkedAboutKnights","GLOBAL",1) Global("C#AjantisTalkedAboutAjantis","GLOBAL",0) Global("C#AjantisExistiert","GLOBAL",0)~ + @24 DO ~setGlobal("C#AjantisTalkedAboutAjantis","GLOBAL",1)~ + knight06_09
++ @29 + knight06_02
END

IF ~~ THEN knight06_08
SAY @30
++ @31 DO ~setGlobal("C#AjantisPortalPalKampf","GLOBAL",6)~ + knight06_11
++ @32 DO ~setGlobal("C#AjantisPortalPalKampf","GLOBAL",6)~ + knight06_11
++ @33 DO ~setGlobal("C#AjantisPortalPalKampf","GLOBAL",6)~ + knight06_11
END

IF ~~ THEN knight06_09
SAY @34
++ @35 + knight06_10
++ @36 + knight06_10
END

IF ~~ THEN knight06_10
SAY @37
+ ~PartyHasItem("C#AJ0002")~ + @16 + knight06_08
++ @7 + knight06_04
++ @17 + knight06_05
++ @38 + knight06_02
END

IF ~Global("C#AjantisPortalPalKampf","GLOBAL",6)~ THEN knight06_11
SAY @39
IF ~!Dead("C#KNIG01")
!Dead("C#KNIG02")
!Dead("C#KNIG03")
!Dead("C#KNIG04")
!Dead("C#Ajantis")~ THEN EXIT
IF ~OR(5)
Dead("C#KNIG01")
Dead("C#KNIG02")
Dead("C#KNIG03")
Dead("C#KNIG04")
Dead("C#Ajantis")~ THEN EXIT
+ ~Dead("C#KNIG01")
Dead("C#KNIG02")
Dead("C#KNIG03")
Dead("C#KNIG04")
Dead("C#Ajantis")~ + @40 + knight06_12
END

IF ~~ THEN knight06_12
SAY @41
++ @42 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1)~ + knight06_14
++ @43 DO ~SetGlobal("C#AjantisPortalPalKampf","GLOBAL",7)~ + knight06_13
END

IF ~~ THEN knight06_13
SAY @44
IF ~~ THEN EXIT
END

IF ~~ THEN knight06_14
SAY @45
= @46
= @47
= @48
++ @49 + knight06_15
++ @50 + knight06_16
END

IF ~~ THEN knight06_15
SAY @51
IF ~~ THEN + knight06_17
END

IF ~~ THEN knight06_16
SAY @52
IF ~~ THEN + knight06_17
END

IF ~~ THEN knight06_17
SAY @53
= @54
++ @55 + knight06_18
++ @56 + knight06_18
END

IF ~~ THEN knight06_18
SAY @57
++ @58 DO ~ClearAllActions()
StartCutScene("C#AJCUT7")
StartCutSceneMode()~ EXIT
++ @59 DO ~ClearAllActions()
StartCutScene("C#AJCUT7")
StartCutSceneMode()~ EXIT
END

IF ~Global("C#AjantisPortalPalKampf","GLOBAL",7)~ THEN knight06_19
SAY @60
+ ~PartyHasItem("C#AJ0002")~ + @61 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1)~ + knight06_14
+ ~!PartyHasItem("C#AJ0002")~ + @62 + knight06_20
++ @63 EXIT
END

IF ~~ THEN knight06_20
SAY @64
IF ~~ THEN EXIT
END

IF ~Global("C#AjantisPortalBewachen","GLOBAL",1) !Dead("C#KNIG01")~ THEN knight06_21
SAY @65
+ ~PartyHasItem("C#AJ0002")~ + @66 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1) SetGlobal("C#AjantisPortalBewachen","GLOBAL",2)~ EXTERN C#KNIG01 beim_portal_01b
++ @67 + knight06_22
END

IF ~~ THEN knight06_22
SAY @68
IF ~~ THEN EXIT
END

IF ~Global("C#AjantisPortalBewachen","GLOBAL",1) Dead("C#KNIG01")~ THEN knight06_23
SAY @69
+ ~PartyHasItem("C#AJ0002")~ + @66 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1) SetGlobal("C#AjantisPortalBewachen","GLOBAL",2)~ + knight06_12
++ @67 + knight06_22
END

END //APPEND C#KNIG06

CHAIN
IF ~Global("C#AjantisRitterBeimPortal","GLOBAL",3)~ THEN C#KNIG06 beim_portal
@70 DO ~SetGlobal("C#AjantisRitterBeimPortal","GLOBAL",4)~ 
== C#KNIG02 @71
== C#KNIG06 @72
== C#KNIG06 IF ~See("Keldorn") Global("C#AjantisKnig06Keldorn","GLOBAL",0)~ THEN @73
== C#KNIG01 @74
== C#KNIG06 @75
== C#KNIG01 @76
END
+ ~PartyHasItem("C#AJ0002") Global("C#AjantisShowedDiary","GLOBAL",1)~ + @66 EXTERN C#KNIG01 beim_portal_01a
+ ~PartyHasItem("C#AJ0002") Global("C#AjantisShowedDiary","GLOBAL",0)~ + @66 EXTERN C#KNIG01 beim_portal_01b
+ ~!PartyHasItem("C#AJ0002")~ + @77 EXTERN C#KNIG01 beim_portal_04
++ @78 EXTERN C#KNIG01 beim_portal_05

APPEND C#KNIG01
IF ~~ THEN beim_portal_01a
SAY @79
IF ~~ THEN EXTERN C#KNIG06 beim_portal_01_chain
END

IF ~~ THEN beim_portal_01b
SAY @80
IF ~~ THEN EXTERN C#KNIG06 beim_portal_01_chain
END

IF ~~ THEN beim_portal_04
SAY @81
++ @82 + beim_portal_06a
++ @83 + beim_portal_06a
+ ~!Class(Player1,PALADIN_ALL)~ + @84 + beim_portal_06b
END

IF ~~ THEN beim_portal_05
SAY @85
+ ~PartyHasItem("C#AJ0002") Global("C#AjantisShowedDiary","GLOBAL",1)~ + @66 EXTERN C#KNIG01 beim_portal_01a
+ ~PartyHasItem("C#AJ0002") Global("C#AjantisShowedDiary","GLOBAL",0)~ + @66 EXTERN C#KNIG01 beim_portal_01b
+ ~!PartyHasItem("C#AJ0002")~ + @86 EXTERN C#KNIG01 beim_portal_04
+ ~!Class(Player1,PALADIN_ALL)~ + @84 + beim_portal_06c
END

IF ~~ THEN beim_portal_06a
SAY @87
IF ~~ THEN DO ~SetGlobal("C#AjantisPortalBewachen","GLOBAL",1) CreateCreatureDoor("C#AJSKE2",[4083.2958],0) RealSetGlobalTimer("C#AjantisPortalSkelettTimer","GLOBAL",60)~ EXIT
END

IF ~~ THEN beim_portal_06b
SAY @88
IF ~~ THEN DO ~SetGlobal("C#AjantisPortalBewachen","GLOBAL",1) CreateCreatureDoor("C#AJSKE2",[4083.2958],0) RealSetGlobalTimer("C#AjantisPortalSkelettTimer","GLOBAL",60)~ EXIT
END

IF ~~ THEN beim_portal_06c
SAY @89
IF ~~ THEN DO ~SetGlobal("C#AjantisPortalBewachen","GLOBAL",1) CreateCreatureDoor("C#AJSKE2",[4083.2958],0) RealSetGlobalTimer("C#AjantisPortalSkelettTimer","GLOBAL",60)~ EXIT
END

IF ~Global("C#AjantisPortalBewachen","GLOBAL",1)~ THEN beim_portal_07
SAY @90
+ ~PartyHasItem("C#AJ0002")~ + @66 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1) SetGlobal("C#AjantisPortalBewachen","GLOBAL",2)~ + beim_portal_01b
++ @67 + beim_portal_08
END

IF ~~ THEN beim_portal_08
SAY @91
IF ~~ THEN EXIT
END


END //APPEND

APPEND C#KNIG02
IF ~Global("C#AjantisPortalBewachen","GLOBAL",1) !Dead("C#KNIG01")~ THEN beim_portal_07
SAY @90
+ ~PartyHasItem("C#AJ0002")~ + @66 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1) SetGlobal("C#AjantisPortalBewachen","GLOBAL",2)~ EXTERN C#KNIG01 beim_portal_01b
++ @67 + beim_portal_08
END

IF ~~ THEN beim_portal_08
SAY @91
IF ~~ THEN EXIT
END
END //APPEND

APPEND C#KNIG03
IF ~Global("C#AjantisPortalBewachen","GLOBAL",1)~ THEN beim_portal_07
SAY @90
+ ~PartyHasItem("C#AJ0002")~ + @66 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1) SetGlobal("C#AjantisPortalBewachen","GLOBAL",2)~ EXTERN C#KNIG01 beim_portal_01b
++ @67 + beim_portal_08
END

IF ~~ THEN beim_portal_08
SAY @92
IF ~~ THEN EXIT
END
END //APPEND

APPEND C#KNIG04
IF ~Global("C#AjantisPortalBewachen","GLOBAL",1)~ THEN beim_portal_07
SAY @90
+ ~PartyHasItem("C#AJ0002")~ + @66 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1) SetGlobal("C#AjantisPortalBewachen","GLOBAL",2)~ EXTERN C#KNIG01 beim_portal_01b
++ @67 + beim_portal_08
END

IF ~~ THEN beim_portal_08
SAY @92
IF ~~ THEN EXIT
END
END //APPEND

APPEND C#Ajan
IF ~Global("C#AjantisPortalBewachen","GLOBAL",1)~ THEN beim_portal_07
SAY @93
+ ~PartyHasItem("C#AJ0002")~ + @66 DO ~SetGlobal("C#AjantisQuestEnde","GLOBAL",1) SetGlobal("C#AjantisPortalBewachen","GLOBAL",2)~ EXTERN C#KNIG01 beim_portal_01b
++ @67 + beim_portal_08
END

IF ~~ THEN beim_portal_08
SAY @91
IF ~~ THEN EXIT
END
END //APPEND


CHAIN 
IF ~~ THEN C#KNIG06 beim_portal_01_chain
@94
== C#KNIG01 @95
== C#KNIG06 @96
== C#KNIG01 @97
== C#KNIG06 @47
= @48
== C#KNIG01 @98
END
++ @49 + beim_portal_02a
++ @99 + beim_portal_02b

APPEND C#KNIG06
IF ~~ THEN beim_portal_02a
SAY @100
IF ~~ THEN EXTERN C#Ajan beim_portal_02_chain
END

IF ~~ THEN beim_portal_02b
SAY @101
IF ~~ THEN EXTERN C#Ajan beim_portal_02_chain
END
END //APPEND

CHAIN
IF ~~ THEN C#Ajan beim_portal_02_chain
@102
== C#KNIG06 @103
== C#KNIG01 @104
== C#Ajan @105
== C#KNIG03 IF ~!Dead("C#KNIG03")~ @106
== C#KNIG06 @107
== C#KNIG01 @108
== C#KNIG01 @58 DO ~ClearAllActions()
StartCutScene("C#AJCUT7")
StartCutSceneMode()~ EXIT

APPEND C#KNIG06
IF ~Global("C#AjantisKNIG06VorPortal","GLOBAL",1)~ THEN beim_portal_03
SAY @109
++ @110 + beim_portal_03a
++ @111 + beim_portal_03b
++ @112 + beim_portal_03c
END

IF ~~ THEN beim_portal_03a
SAY @113
IF ~~ THEN + beim_portal_03d
END

IF ~~ THEN beim_portal_03b
SAY @115
IF ~~ THEN + beim_portal_03d
END

IF ~~ THEN beim_portal_03c
SAY @116
IF ~~ THEN + beim_portal_03d
END


IF ~~ THEN beim_portal_03d
SAY @114
IF ~OR(2) Dead("C#KNIG01") Dead("C#Ajantis")
OR(5)
Allegiance("C#KNIG01",ENEMY)
Allegiance("C#KNIG02",ENEMY)
Allegiance("C#KNIG03",ENEMY)
Allegiance("C#KNIG04",ENEMY)
Allegiance("C#ajantis",ENEMY)~ THEN DO ~ 
EraseJournalEntry(@10000)
EraseJournalEntry(@10001)
EraseJournalEntry(@10002)
EraseJournalEntry(@10011)
EraseJournalEntry(@10012)
EraseJournalEntry(@10013)
EraseJournalEntry(@10014)
EraseJournalEntry(@10015)
EraseJournalEntry(@10016)
EraseJournalEntry(@10017)
EraseJournalEntry(@10018)
EraseJournalEntry(@10019)
EraseJournalEntry(@10020)
EraseJournalEntry(@10021) SetGlobal("TempleShout0903","GLOBAL",1)
ClearAllActions()
StartCutScene("C#AJCUT9")
StartCutSceneMode()~ SOLVED_JOURNAL @10026 EXIT

IF ~!Dead("C#KNIG01") !Dead("C#Ajantis")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)
Global("C#Ajantis_C#00AreaPort","GLOBAL",1200)~ THEN DO ~ClearAllActions()
StartCutScene("C#AJCUT8")
StartCutSceneMode()~ EXIT
IF ~!Dead("C#KNIG01") !Dead("C#Ajantis")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)
Global("C#Ajantis_C#00AreaPort","GLOBAL",1201)~ THEN DO ~ClearAllActions()
StartCutScene("C#AJCU10")
StartCutSceneMode()~ EXIT
IF ~!Dead("C#KNIG01") !Dead("C#Ajantis")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)
Global("C#Ajantis_C#00AreaPort","GLOBAL",1202)~ THEN DO ~ClearAllActions()
StartCutScene("C#AJCU11")
StartCutSceneMode()~ EXIT
IF ~!Dead("C#KNIG01") !Dead("C#Ajantis")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)
Global("C#Ajantis_C#00AreaPort","GLOBAL",1203)~ THEN DO ~ClearAllActions()
StartCutScene("C#AJCU12")
StartCutSceneMode()~ EXIT
IF ~!Dead("C#KNIG01") !Dead("C#Ajantis")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)
Global("C#Ajantis_C#00AreaPort","GLOBAL",1204)~ THEN DO ~ClearAllActions()
StartCutScene("C#AJCU13")
StartCutSceneMode()~ EXIT
END

END //APPEND

