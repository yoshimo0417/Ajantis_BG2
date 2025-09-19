// False()

//Global("C#AjantisExistiert","GLOBAL",1)

//Global("C#AjantisNoRomance","GLOBAL",1)

//Global("C#AjantisInfo","GLOBAL",0): Hat HC im Orden nach Ajantis gefragt?

/* 
This .d is for Ajantis' quest ("find Ajantis and the other knights after the Windspear fight")
*/



//Änderung Firkraag

//GlobalGT("C#AjantisRitterSuche","GLOBAL",0)

ADD_TRANS_TRIGGER FIRKRA02 0 ~Global("C#AjantisKugelUebergabe","GLOBAL",0)~

EXTEND_BOTTOM FIRKRA02 0
IF ~GlobalGT("C#AjantisKugelUebergabe","GLOBAL",0)~ THEN + kugel
END
 
EXTEND_BOTTOM FIRKRA02 26
+ ~Global("C#AjantisFirkraagKugelAuskunft","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) Global("C#AjantisKugelUebergabe","GLOBAL",1)~ + @0 + kugel_04
+ ~Global("C#AjantisFirkraagKugelAuskunft","GLOBAL",1)
!Global("C#AjantisExistiert","GLOBAL",1) Global("C#AjantisKugelUebergabe","GLOBAL",1)~ + @1 + kugel_04
+ ~Global("C#AjantisExistiert","GLOBAL",1)~ + @2 + kugel_05
END

APPEND FIRKRA02

IF ~~ THEN kugel
SAY @3
+ ~Global("C#AjantisRitterSuche","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @4 + kugel_02
+ ~Global("C#AjantisRitterSuche","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) 
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @5 + kugel_02
+ ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @6 + kugel_02
+ ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) 
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @7 + kugel_02
+ ~Global("C#AjantisExistiert","GLOBAL",1)~ + @8 + 1
+ ~!Global("C#AjantisExistiert","GLOBAL",1)~ + @9 + kugel_01
COPY_TRANS FIRKRA02 0
END

IF ~~ THEN kugel_01
SAY @10
++ @11 DO ~SetGlobal("C#AjantisFirkraagKugelAuskunft","GLOBAL",1)~ + kugel_03
++ @12 DO ~SetGlobal("C#AjantisFirkraagKugelAuskunft","GLOBAL",1)~ + kugel_03
+ ~Global("C#AjantisRitterSuche","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @13 + kugel_02
+ ~Global("C#AjantisRitterSuche","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) 
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @14 + kugel_02
+ ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @6 + kugel_02
+ ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0)
!Global("C#AjantisExistiert","GLOBAL",1) 
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @7 + kugel_02
COPY_TRANS FIRKRA02 0
END

IF ~~ THEN kugel_02
SAY @17
IF ~~ THEN DO ~SetGlobal("C#AjantisFirkraagKugelAuskunft","GLOBAL",1)~ + kugel_03
END

IF ~~ THEN kugel_03
SAY @18
++ @19 + 1
COPY_TRANS FIRKRA02 0
END

IF ~~ THEN kugel_04
SAY @18
+ ~Global("C#AjantisRitterSuche","GLOBAL",0)~ + @20 + kugel_06
COPY_TRANS FIRKRA02 26
END

IF ~~ THEN kugel_05
SAY @21
COPY_TRANS FIRKRA02 26
END

IF ~~ THEN kugel_06
SAY @22
COPY_TRANS FIRKRA02 26
END

END //APPEND


ALTER_TRANS ANOMENJ // file name
BEGIN 0 3 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4)~
END

ALTER_TRANS ANOMENJ // file name
BEGIN 1 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~OR(2)
	%AjantisWasInPartyBG1%
	Global("%NewSoAGame%","GLOBAL",1)~
END

EXTEND_BOTTOM ANOMENJ 0
IF ~!GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4)~ THEN REPLY #6188 + kein_Ajantis

+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Class(Player1,PALADIN)
!Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @23 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10000 + anomen_ajantis_erkennen
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Class(Player1,PALADIN) !Global("AnomenRomanceActive","GLOBAL",2)
!Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @23 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10001 + anomen_ajantis_erkennen

+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Global("AnomenRomanceActive","GLOBAL",2)
Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @24 + anomen_ajantis_erkennen
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4) Global("C#AjantisErkennen","GLOBAL",1)~ + @25 + 4
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4)
OR(2)
	%AjantisWasInPartyBG1%
	Global("%NewSoAGame%","GLOBAL",1)
!Global("C#AjantisErkennen","GLOBAL",1) 
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @26 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ + 4
END

EXTEND_BOTTOM ANOMENJ 1

+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Class(Player1,PALADIN) !Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @27 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10000 + anomen_ajantis_erkennen
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Class(Player1,PALADIN) !Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @27 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10001 + anomen_ajantis_erkennen
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @28 + anomen_ajantis_erkennen
END

EXTEND_BOTTOM ANOMENJ 3
IF ~!GlobalLT("C#AjantisIsDeadBG1","GLOBAL",4)~ THEN REPLY #6188 + kein_Ajantis
END


APPEND ANOMENJ

IF ~~ THEN anomen_ajantis_erkennen
SAY @29
IF ~~ THEN EXIT
END

IF ~~ THEN kein_Ajantis
SAY @277
COPY_TRANS ANOMENJ 1
END


//Anomen mentions Ajantis' name (for Ajantis RA = 2)

IF WEIGHT #-1 
~Global("C#AjantisAnomenBG1","GLOBAL",2)~ THEN anomen_ajantis
SAY @30
++ @31 DO ~SetGlobal("C#AjantisAnomenBG1","GLOBAL",3)~ + anomen_ajantis_01
++ @32 DO ~SetGlobal("C#AjantisAnomenBG1","GLOBAL",3)~ + anomen_ajantis_04
++ @33 DO ~SetGlobal("C#AjantisAnomenBG1","GLOBAL",3)~ + anomen_ajantis_02
END

IF ~~ THEN anomen_ajantis_01
SAY @34
++ @35 + anomen_ajantis_02
++ @36 + anomen_ajantis_03
END

IF ~~ THEN anomen_ajantis_02
SAY @37
IF ~~ THEN EXIT
END

IF ~~ THEN anomen_ajantis_03
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN anomen_ajantis_04
SAY @39
++ @40 + anomen_ajantis_02
++ @36 + anomen_ajantis_03
END

END



BEGIN c#ajtrae

IF ~Global("C#AjantisKugelUebergabe","GLOBAL",0)~ THEN uebergabe
SAY @41
+ ~!Dead("firkra02")~ + @42 + uebergabe_01
+ ~Dead("firkra02")~ + @43 + uebergabe_02
++ @44 + uebergabe_01
++ @45 + uebergabe_01
END

IF ~~ THEN uebergabe_01
SAY @46
IF ~~ THEN DO ~GiveItem("C#AJGK",[PC]) SetGlobal("C#AjantisKugelUebergabe","GLOBAL",1) ForceSpell(Myself,DRYAD_TELEPORT)
		PlaySound("EFF_M29")
		Wait(1)
		DestroySelf()~ UNSOLVED_JOURNAL @10011 EXIT
END

IF ~~ THEN uebergabe_02
SAY @47
IF ~~ THEN DO ~GiveItem("C#AJGK",[PC]) SetGlobal("C#AjantisKugelUebergabe","GLOBAL",1) ForceSpell(Myself,DRYAD_TELEPORT)
		PlaySound("EFF_M29")
		Wait(1)
		DestroySelf()~ UNSOLVED_JOURNAL @10012 EXIT
END

IF ~GlobalGT("C#AjantisKugelUebergabe","GLOBAL",0) AreaCheck("C#AJ01") Global("C#AjantisErsteNotiz","GLOBAL",0)~ THEN quest
SAY @48
++ @49 + quest_01
++ @50 + quest_01b
++ @51 + quest_01
END

IF ~~ THEN quest_01b
SAY @52
= @53
++ @54 + quest_02
+ ~Dead("firkra02")~ + @55 + quest_03
++ @56 + quest_04
++ @57 + quest_03
END

IF ~~ THEN quest_01
SAY @58
= @59
++ @54 + quest_02
+ ~Dead("firkra02")~ + @55 + quest_03
++ @56 + quest_04
++ @57 + quest_03
END

IF ~~ THEN quest_02
SAY @60
IF ~~ THEN + quest_05
END

IF ~~ THEN quest_03
SAY @61
IF ~~ THEN + quest_05
END

IF ~~ THEN quest_04
SAY @62
IF ~~ THEN + quest_05
END

IF ~~ THEN quest_05
SAY @63
++ @64 DO ~GiveItem("C#AJ0003",[PC]) SetGlobal("C#AjantisErsteNotiz","GLOBAL",1)~ + quest_06
++ @65 DO ~GiveItem("C#AJ0003",[PC]) SetGlobal("C#AjantisErsteNotiz","GLOBAL",1)~ + quest_07
++ @66 DO ~GiveItem("C#AJ0003",[PC]) SetGlobal("C#AjantisErsteNotiz","GLOBAL",1)~ + quest_07
END 

IF ~~ THEN quest_06 //Bibliothek
SAY @67
++ @65 + quest_07
++ @66 + quest_07
END 

IF ~~ THEN quest_07
SAY @68
IF ~~ THEN EXIT 
END

IF ~Global("C#AjantisErsteNotiz","GLOBAL",1)~ THEN quest_08
SAY @69
++ @70 + quest_06
+ ~!PartyHasItem("C#AJ0001")~ + @71 + quest_09
+ ~Global("C#AjantisUnsichtbareRune","GLOBAL",1)~ + @72 + quest_10
+ ~Global("C#AjantisUnsichtbareRune","GLOBAL",0) Global("C#AjanFragtNachZweiterNotiz","GLOBAL",0)~ + @73 DO ~IncrementGlobal("C#AjanFragtNachZweiterNotiz","GLOBAL",1)~ + quest_11
+ ~Global("C#AjantisUnsichtbareRune","GLOBAL",0) Global("C#AjanFragtNachZweiterNotiz","GLOBAL",1)~ + @74 DO ~IncrementGlobal("C#AjanFragtNachZweiterNotiz","GLOBAL",1)~ + quest_11
+ ~Global("C#AjantisUnsichtbareRune","GLOBAL",0) Global("C#AjanFragtNachZweiterNotiz","GLOBAL",2)~ + @75 DO ~IncrementGlobal("C#AjanFragtNachZweiterNotiz","GLOBAL",1)~ + quest_12
+ ~Global("C#AjantisUnsichtbareRune","GLOBAL",0) Global("C#AjanFragtNachZweiterNotiz","GLOBAL",3)~ + @76 DO ~IncrementGlobal("C#AjanFragtNachZweiterNotiz","GLOBAL",1)~ + quest_14
++ @77 + quest_13
++ @78 EXIT
END

IF ~~ THEN quest_09
SAY @79
IF ~~ THEN EXIT
END

IF ~~ THEN quest_10
SAY @80
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN quest_11
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN quest_12
SAY @82
IF ~~ THEN EXIT
END

IF ~~ THEN quest_13
SAY @83
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN quest_14
SAY @84
IF ~~ THEN DO ~Enemy()~ EXIT
END


EXTEND_BOTTOM DOGHMA 0
+ ~PartyHasItem("C#AJGK") Global("C#AjantisOghmaPortal","GLOBAL",0)~ + @85 DO ~SetGlobal("C#AjantisOghmaPortal","GLOBAL",1)~ + ajantis_oghma
+ ~Global("C#AjantisOghmaPortal","GLOBAL",1)~ + @86 + ajantis_oghma_portal
+ ~Global("C#AjantisOghmaPortal","GLOBAL",2)~ + @87 + ajantis_oghma_portal_01
END

EXTEND_BOTTOM DOGHMA 7
+ ~PartyHasItem("C#AJGK") Global("C#AjantisOghmaPortal","GLOBAL",0)~ + @85 DO ~SetGlobal("C#AjantisOghmaPortal","GLOBAL",1)~ + ajantis_oghma
+ ~Global("C#AjantisOghmaPortal","GLOBAL",1)~ + @86 + ajantis_oghma_portal
+ ~Global("C#AjantisOghmaPortal","GLOBAL",2)~ + @87 + ajantis_oghma_portal_01
END

EXTEND_BOTTOM DOGHMA 9
+ ~PartyHasItem("C#AJGK") Global("C#AjantisOghmaPortal","GLOBAL",0)~ + @85 DO ~SetGlobal("C#AjantisOghmaPortal","GLOBAL",1)~ + ajantis_oghma
+ ~Global("C#AjantisOghmaPortal","GLOBAL",1)~ + @86 + ajantis_oghma_portal
+ ~Global("C#AjantisOghmaPortal","GLOBAL",2)~ + @87 + ajantis_oghma_portal_01
END

APPEND DOGHMA
IF ~~ THEN ajantis_oghma
SAY @88
= @89
= @90
++ @91 UNSOLVED_JOURNAL @10013 EXIT
+ ~Global("C#AjantisKugelPortal","GLOBAL",0)~ + @92 + ajantis_oghma_01
+ ~Global("C#AjantisKugelPortal","GLOBAL",2)~ + @93 + ajantis_oghma_01
++ @94 + ajantis_oghma_01
++ @95 + ajantis_oghma_02
END

IF ~~ THEN ajantis_oghma_01
SAY @96
IF ~~ THEN UNSOLVED_JOURNAL @10013
EXIT
END

IF ~~ THEN ajantis_oghma_02
SAY @97
IF ~~ THEN UNSOLVED_JOURNAL @10013
EXIT
END

IF ~~ THEN ajantis_oghma_portal
SAY @98 
= @99
++ @100 + ajantis_oghma_portal_01
++ @101 DO ~SetGlobal("C#AjantisOghmaPortal","GLOBAL",2)~ UNSOLVED_JOURNAL @10014
EXIT
END

IF ~~ THEN ajantis_oghma_portal_01
SAY @102 
IF ~OR(2)
!Global("C#AjantisEngaged","GLOBAL",0)
Global("C#AjantisEngagedMatch","GLOBAL",0)~ THEN + ajantis_oghma_portal_03
IF ~Global("C#AjantisEngaged","GLOBAL",0)
Global("C#AjantisEngagedMatch","GLOBAL",1)~ THEN EXTERN Player1  ajantis_oghma_portal_02
END

END //APPEND

APPEND Player1

IF ~~ THEN ajantis_oghma_portal_02
SAY @271
++ @272 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",1)~ EXTERN DOGHMA ajantis_oghma_portal_03
++ @273 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",0)
SetGlobal("C#AjanEngagementBrokenBG1","GLOBAL",1)~ EXTERN DOGHMA ajantis_oghma_portal_03
++ @274 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2)~ EXTERN DOGHMA ajantis_oghma_portal_03
END

END //APPEND

APPEND DOGHMA

IF ~~ THEN ajantis_oghma_portal_03
SAY @276

IF ~~ THEN DO ~SetGlobal("C#AjantisOghmaPortal","GLOBAL",3) TakePartyItem("C#AJGK") DestroyItem("C#AJGK") StartCutScene("C#AJCU00") StartCutSceneMode()~ EXIT //C#Ajan08
END

END //APPEND



BEGIN C#AJSPY1

IF ~Global("C#AjantisKugelPortal","GLOBAL",1)
OR(5)
  AreaCheck("AR1200")
  AreaCheck("AR1201")
  AreaCheck("AR1202")
  AreaCheck("AR1203")
  AreaCheck("AR1204")~ THEN portal
SAY @103
+ ~!Global("C#AjantisEngaged","GLOBAL",0)
Global("C#AjantisEngagedMatch","GLOBAL",1)~ + @104 + portal_03 
+ ~!Global("C#AjantisEngagedMatch","GLOBAL",1)~ + @104 + portal_03 
+ ~Global("C#AjantisEngaged","GLOBAL",0)
Global("C#AjantisEngagedMatch","GLOBAL",1)~ + @104 + portal_02
++ @105 + portal_01
END

IF ~Global("C#AjantisKugelPortal","GLOBAL",1)
!AreaCheck("AR1200")
!AreaCheck("AR1201")
!AreaCheck("AR1202")
!AreaCheck("AR1203")
!AreaCheck("AR1204")~ THEN portal_area
SAY @106
IF ~Global("C#AjantisOghmaPortal","GLOBAL",0) Global("C#AjantisKugelPortalGeoeffnet","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisKugelPortal","GLOBAL",2) SetGlobal("C#AjantisKugelPortalGeoeffnet","GLOBAL",1) GiveItemCreate("C#AJGK",[PC],1,1,0) DestroySelf()~ UNSOLVED_JOURNAL @10015
EXIT
IF ~OR(2) !Global("C#AjantisOghmaPortal","GLOBAL",0) Global("C#AjantisKugelPortalGeoeffnet","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisKugelPortal","GLOBAL",2) GiveItemCreate("C#AJGK",[PC],1,1,0) DestroySelf()~ EXIT
END

IF ~~ THEN portal_01
SAY @107
IF ~Global("C#AjantisOghmaPortal","GLOBAL",0) Global("C#AjantisKugelPortalGeoeffnet","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisKugelPortal","GLOBAL",2) SetGlobal("C#AjantisKugelPortalGeoeffnet","GLOBAL",1) GiveItemCreate("C#AJGK",[PC],1,1,0) DestroySelf()~ UNSOLVED_JOURNAL @10015
EXIT
IF ~OR(2) !Global("C#AjantisOghmaPortal","GLOBAL",0) Global("C#AjantisKugelPortalGeoeffnet","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisKugelPortal","GLOBAL",2) GiveItemCreate("C#AJGK",[PC],1,1,0) DestroySelf()~ EXIT
END

IF ~~ THEN portal_02
SAY @271
++ @272 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",1)~ + portal_03
++ @273 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",0)
SetGlobal("C#AjanEngagementBrokenBG1","GLOBAL",1)~ + portal_03
++ @274 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2)~ + portal_03
END

IF ~~ THEN portal_03
SAY @275
IF ~AreaCheck("AR1200")~ THEN DO ~SetGlobal("C#Ajantis_C#00AreaPort","GLOBAL",1200) StartCutScene("C#AJCUT4") StartCutSceneMode()~ EXIT
IF ~AreaCheck("AR1201")~ THEN DO ~SetGlobal("C#Ajantis_C#00AreaPort","GLOBAL",1201) StartCutScene("C#AJCUT4") StartCutSceneMode()~ EXIT
IF ~AreaCheck("AR1202")~ THEN DO ~SetGlobal("C#Ajantis_C#00AreaPort","GLOBAL",1202) StartCutScene("C#AJCUT4") StartCutSceneMode()~ EXIT
IF ~AreaCheck("AR1203")~ THEN DO ~SetGlobal("C#Ajantis_C#00AreaPort","GLOBAL",1203) StartCutScene("C#AJCUT4") StartCutSceneMode()~ EXIT
IF ~AreaCheck("AR1204")~ THEN DO ~SetGlobal("C#Ajantis_C#00AreaPort","GLOBAL",1204) StartCutScene("C#AJCUT4") StartCutSceneMode()~ EXIT
END

APPEND C#KNIG01

IF ~AreaCheck("AR0903") Global("C#AjantisDirektErschaffen","GLOBAL",2)~ THEN knight
SAY @108
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~AreaCheck("AR0903") Global("C#AjantisQuestErschaffen","GLOBAL",1) !Dead("C#KNIG02") !Dead("C#KNIG03") !Dead("C#KNIG04")~ THEN knight_quest_01
SAY @108
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~AreaCheck("AR0903") Global("C#AjantisQuestErschaffen","GLOBAL",1) OR(2)
Dead("C#KNIG02") 
Dead("C#KNIG04") 
!Dead("C#KNIG03")~ THEN knight_quest_02
SAY @108
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~AreaCheck("AR0903") Global("C#AjantisQuestErschaffen","GLOBAL",1) Dead("C#KNIG03")~ THEN knight_quest_01
SAY @109
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~AreaCheck("C#AJ00") Global("C#AjantisExistiert","GLOBAL",0)~ THEN begegnung
  SAY #34005 /* ~Bestien! Schweine! Euer Terror h rt jetzt auf!~ */
+ ~PartyHasItem("C#AJ0001")~ + @110 + begegnung_01
+ ~PartyHasItem("C#AJ0004")~ + @111 + begegnung_01
+ ~GlobalGT("C#AjantisDurchPortal","GLOBAL",1)~ + @112 + begegnung_01
++ @113 + begegnung_01
++ @114 + begegnung_01
+ ~Global("C#AjantisDurchPortal","GLOBAL",1)~ + @115 + begegnung_01
++ @116 + begegnung_01
+ ~!PartyHasItem("C#AJ0004")~ + @117 + begegnung_02
END

IF ~~ THEN BEGIN begegnung_01 
  SAY #34010 /* ~Es wird nicht geredet! Wir geben uns nicht mit Monstern ab, denen die Ehre nichts bedeutet! Keine Worte mehr! Angriff!~ */
IF ~PartyHasItem("C#AJ0004")~ THEN + begegnung_09
+ ~!PartyHasItem("C#AJ0004")~ + @118 + begegnung_03
+ ~!PartyHasItem("C#AJ0004")~ + @119 + begegnung_03
END

IF ~~ THEN BEGIN begegnung_02 
  SAY #34013 /* ~Ihr nennt mich ein Ungeheuer?! Ihr habt vielleicht Nerven für die Bestie, die Ihr seid! Kämpft, und wisst, dass euer Tod unvermeidlich ist!~ */
++ @118 + begegnung_03
++ @119 + begegnung_03
++ @120 + begegnung_03
END

IF ~~ THEN BEGIN begegnung_03 
  SAY #34012 /* ~Keine Worte mehr! Eure Lügen werden dieses Land nicht länger beflecken; Eure Verbrechen werden die Leute keine Sekunde mehr plagen!~ */
  IF ~Global("C#AjantisDurchPortal","GLOBAL",1)~ THEN + begegnung_04

  IF ~Global("C#AjantisDurchPortal","GLOBAL",2) !PartyHasItem("C#AJ0001")~ THEN + begegnung_05

IF ~Global("C#AjantisDurchPortal","GLOBAL",2) PartyHasItem("C#AJ0001") Global("C#AjantisUnsichtbareRune","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisUnsichtbareRune","GLOBAL",1)~ + begegnung_07

  IF ~GlobalGT("C#AjantisDurchPortal","GLOBAL",2) PartyHasItem("C#AJ0001") Global("C#AjantisUnsichtbareRune","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisUnsichtbareRune","GLOBAL",1)~ + begegnung_08

  IF ~GlobalGT("C#AjantisDurchPortal","GLOBAL",2) 
OR(2)
!PartyHasItem("C#AJ0001")
Global("C#AjantisUnsichtbareRune","GLOBAL",1)~ THEN + begegnung_06
END

IF ~~ THEN BEGIN begegnung_04 
  SAY @121 
  IF ~~ THEN UNSOLVED_JOURNAL @10016 DO ~StartCutScene("C#AJCUT5") StartCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN begegnung_05 
  SAY @122 
  IF ~~ THEN UNSOLVED_JOURNAL @10017 DO 
~StartCutScene("C#AJCUT5") StartCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN begegnung_06 
  SAY @122 
  IF ~~ THEN DO ~StartCutScene("C#AJCUT5") StartCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN begegnung_07 
  SAY @122 
  IF ~~ THEN UNSOLVED_JOURNAL @10018 DO ~StartCutScene("C#AJCUT5") StartCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN begegnung_08
  SAY @122 
  IF ~~ THEN UNSOLVED_JOURNAL @10019 DO ~StartCutScene("C#AJCUT5") StartCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN begegnung_09 //Befreiung der Paladine
  SAY @123 
  IF ~~ THEN DO ~SetGlobal("C#AjantisSperreGarrens","GLOBAL",1) StartCutScene("C#AJCUT6") StartCutSceneMode()~ EXIT
END

END

CHAIN 
IF ~AreaCheck("C#AJ00") Global("C#AjantisExistiert","GLOBAL",1) Global("C#AjantisKNIG01_01","GLOBAL",0)~ THEN C#KNIG01 befreiung_chain
@124 DO ~SetGlobal("C#AjantisKNIG01_01","GLOBAL",1)~ 
== C#KNIG02 @125 
== C#Ajan @126
END
IF ~OR(3)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
~ THEN EXTERN C#KNIG01 ajantis_befreiung_04_chain
IF ~Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisPCBrokeRomance","GLOBAL",1)~ THEN EXTERN C#Ajan ajantis_befreiung

APPEND C#Ajan

IF ~~ THEN ajantis_befreiung
SAY @127
++ @128 + ajantis_befreiung_01
++ @129 + ajantis_befreiung_01b
++ @130 EXTERN C#KNIG02 ajantis_befreiung_02_chain
END

IF ~~ THEN ajantis_befreiung_01
SAY @131
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN EXTERN C#KNIG01 ajantis_befreiung_01_chain
IF ~Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN + ajantis_befreiung_01c
END

IF ~~ THEN ajantis_befreiung_01b
SAY @132
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN EXTERN C#KNIG01 ajantis_befreiung_01_chain
IF ~Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN + ajantis_befreiung_01c
END

IF ~~ THEN ajantis_befreiung_01c
SAY @133
++ @134 EXTERN C#KNIG02 ajantis_befreiung_02_chain
++ @135 + ajantis_befreiung_03
END

IF ~~ THEN ajantis_befreiung_02
SAY @136
+ ~Global("C#AjantisRomanceActive","GLOBAL",3)~ + @137 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisPCAnomenNight","GLOBAL",2)
SetGlobal("C#AjantisPCModRomance","GLOBAL",3)
SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2)~ + ajantis_befreiung_02b
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)~ + @138 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)~ + ajantis_befreiung_02b
++ @139 DO ~SetGlobal("C#AjantisPCWantsRomEnd","GLOBAL",1)~ + ajantis_befreiung_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)~ + @140 + ajantis_befreiung_01
END

IF ~~ THEN ajantis_befreiung_02b
SAY @141
= @142
IF ~~ THEN EXTERN C#KNIG01 ajantis_befreiung_04_chain
END

IF ~~ THEN ajantis_befreiung_03
SAY @143
IF ~~ THEN DO ~SetGlobal("C#AjantisPCWantsRomEnd","GLOBAL",1)~ EXTERN C#KNIG01 ajantis_befreiung_04_chain
END

IF ~~ THEN kiss
SAY @144
= @145
= @146
IF ~~ THEN EXTERN C#KNIG04 kiss_chain
END

END

CHAIN 
IF ~~ THEN C#KNIG04 kiss_chain
@147
== C#KNIG01 @148
= @149
= @150
== C#Ajan @151
= @152
== C#KNIG01 @153
END
++ @154 EXTERN C#KNIG01 ajantis_befreiung_05
++ @155 EXTERN C#KNIG01 ajantis_befreiung_05b

CHAIN 
IF ~~ THEN C#KNIG02 ajantis_befreiung_02_chain
@156
== C#KNIG03 @157
== C#Ajan @158
END
++ @159 DO ~SetGlobal("C#AjantisPCWantsRomEnd","GLOBAL",1)~ EXTERN C#Ajan ajantis_befreiung_03
++ @160 EXTERN C#Ajan ajantis_befreiung_02
++ @140 EXTERN C#Ajan ajantis_befreiung_01

CHAIN 
IF ~~ THEN C#KNIG01 ajantis_befreiung_01_chain
@161
== C#KNIG02 @162
== C#KNIG01 @163
== C#KNIG01 IF ~InParty("keldorn") InMyArea("keldorn") InParty("anomen") InMyArea("ANOMEN")~ THEN @164
== C#KNIG01 IF ~InParty("keldorn") InMyArea("keldorn") OR(2) !InParty("anomen") !InMyArea("ANOMEN")~ THEN @164
== C#KNIG01 IF ~InParty("anomen") InMyArea("anomen") OR(2) !InParty("keldorn") !InMyArea("keldorn")~ THEN @164
== C#KNIG01 IF ~InParty("keldorn") Dead("keldorn") InMyArea("keldorn") OR(3) !InParty("anomen") !Dead("anomen") !InMyArea("anomen")~ THEN @165
== C#KNIG01 IF ~InParty("anomen") Dead("anomen") InMyArea("anomen") !Global("AnomenIsNotKnight","GLOBAL",1) OR(3) !InParty("keldorn") !Dead("keldorn") !InMyArea("keldorn")~ THEN @166
== C#KNIG01 IF ~InParty("keldorn") Dead("keldorn") InMyArea("keldorn") InParty("anomen") Dead("anomen") InMyArea("anomen")~ THEN @167
== C#KNIG01 IF ~InParty("anomen") StateCheck("ANOMEN",CD_STATE_NOTVALID) InMyArea("anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @168
== ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @169
== C#KNIG01 IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @170
== KELDORJ IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @171 
= @172
== ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @173  
== C#KNIG01 @174
== C#Ajan @175
END
++ @176 EXTERN C#KNIG01 ajantis_befreiung_05
++ @177 EXTERN C#Ajan kiss
++ @178 EXTERN C#KNIG01 ajantis_befreiung_05b

CHAIN
IF ~~ THEN C#KNIG01 ajantis_befreiung_04_chain
@179
== C#KNIG01 IF ~InParty("keldorn") InMyArea("keldorn") InParty("anomen") InMyArea("ANOMEN")~ THEN @164
== C#KNIG01 IF ~InParty("keldorn") InMyArea("keldorn") OR(2) !InParty("anomen") !InMyArea("ANOMEN")~ THEN @164
== C#KNIG01 IF ~InParty("anomen") InMyArea("anomen") OR(2) !InParty("keldorn") !InMyArea("keldorn")~ THEN @164
== C#KNIG01 IF ~InParty("keldorn") Dead("keldorn") InMyArea("keldorn") OR(3) !InParty("anomen") !Dead("anomen") !InMyArea("anomen")~ THEN @165
== C#KNIG01 IF ~InParty("anomen") Dead("anomen") InMyArea("anomen") !Global("AnomenIsNotKnight","GLOBAL",1) OR(3) !InParty("keldorn") !Dead("keldorn") !InMyArea("keldorn")~ THEN @166
== C#KNIG01 IF ~InParty("keldorn") Dead("keldorn") InMyArea("keldorn") InParty("anomen") Dead("anomen") InMyArea("anomen")~ THEN @167
== C#KNIG01 IF ~InParty("anomen") StateCheck("ANOMEN",CD_STATE_NOTVALID) InMyArea("anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @168
== ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @169
== C#KNIG01 IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @170
== ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @173  
== KELDORJ IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @171 
= @172
== C#KNIG01 @180
== C#Ajan @175
END
++ @176 EXTERN C#KNIG01 ajantis_befreiung_05 
++ @178 EXTERN C#KNIG01 ajantis_befreiung_05b

APPEND C#KNIG01
IF ~~ THEN ajantis_befreiung_05
SAY @181
+ ~Dead("firkra02")~ + @182 DO ~SetGlobal("C#AjantisPCKilledFirkraag","GLOBAL",1)~ + ajantis_befreiung_06a
+ ~Global("Firmag01Move","GLOBAL",1)
!Dead("firkra02")~ + @183 DO ~SetGlobal("C#AjantisPCSawFirkraag","GLOBAL",1)~ + ajantis_befreiung_06a
+ ~Global("Firmag01Move","GLOBAL",0)~ + @184 + ajantis_befreiung_06b
++ @185 + ajantis_befreiung_06c 
END

IF ~~ THEN ajantis_befreiung_05b
SAY @186
++ @187 + ajantis_befreiung_05c 
++ @188 + ajantis_befreiung_05c 
END

IF ~~ THEN ajantis_befreiung_05c
SAY @189
+ ~Dead("firkra02")~ + @182 DO ~SetGlobal("C#AjantisPCKilledFirkraag","GLOBAL",1)~ + ajantis_befreiung_06a
+ ~Global("Firmag01Move","GLOBAL",1)
!Dead("firkra02")~ + @183 DO ~SetGlobal("C#AjantisPCSawFirkraag","GLOBAL",1)~ + ajantis_befreiung_06a
+ ~Global("Firmag01Move","GLOBAL",0)~ + @184 + ajantis_befreiung_06b
++ @185 + ajantis_befreiung_06c 
END

IF ~~ THEN ajantis_befreiung_06a
SAY @190
++ @191 + ajantis_befreiung_07
+ ~PartyHasItem("C#AJ0002")~ + @192 + ajantis_befreiung_08
++ @193 + ajantis_befreiung_07
END

IF ~~ THEN ajantis_befreiung_06b
SAY @194
++ @191 + ajantis_befreiung_07
+ ~PartyHasItem("C#AJ0002")~ + @192 DO ~SetGlobal("C#AjantisShowedDiary","GLOBAL",1)~ + ajantis_befreiung_08
++ @193 + ajantis_befreiung_07
END

IF ~~ THEN ajantis_befreiung_06c
SAY @195
++ @191 + ajantis_befreiung_07
+ ~PartyHasItem("C#AJ0002")~ + @192 + ajantis_befreiung_08
++ @193 + ajantis_befreiung_07
END

IF ~~ THEN ajantis_befreiung_07
SAY @196
IF ~~ THEN EXTERN C#KNIG03 ajantis_befreiung_07_chain
END
END

CHAIN
IF ~~ THEN C#KNIG03 ajantis_befreiung_07_chain
@197
== C#Ajan @198
END
+ ~GlobalGT("C#AjantisPortalPalKampf","GLOBAL",2)~ + @199 EXTERN C#KNIG01 ajantis_befreiung_10a
++ @200 EXTERN C#KNIG01 ajantis_befreiung_09
+ ~GlobalLT("C#AjantisPortalPalKampf","GLOBAL",3)~ + @201 EXTERN C#KNIG01 ajantis_befreiung_09

APPEND C#KNIG01
IF ~~ THEN ajantis_befreiung_08
SAY @202
= @203
+ ~GlobalGT("C#AjantisPortalPalKampf","GLOBAL",2)~ + @204 EXTERN C#KNIG02 ajantis_befreiung_10c_chain
+ ~GlobalLT("C#AjantisPortalPalKampf","GLOBAL",3)~ + @205 + ajantis_befreiung_09b
++ @206 + ajantis_befreiung_09b
END

IF ~~ THEN ajantis_befreiung_09
SAY @207
++ @208 + ajantis_befreiung_13 
+ ~GlobalGT("C#AjantisPortalPalKampf","GLOBAL",2)~ + @209 + ajantis_befreiung_10b
++ @210 + ajantis_befreiung_12
++ @211 + ajantis_befreiung_11
END
END

CHAIN
IF ~~ THEN C#KNIG01 ajantis_befreiung_09b
@212
== C#KNIG03 @197
== C#Ajan @213
== C#KNIG01 @214
END
++ @215 + ajantis_befreiung_13 
++ @210 + ajantis_befreiung_12
++ @211 + ajantis_befreiung_11

APPEND C#KNIG01
IF ~~ THEN ajantis_befreiung_09c
SAY @216
++ @217 + ajantis_befreiung_13 
++ @210 + ajantis_befreiung_12
++ @211 + ajantis_befreiung_11
END

IF ~~ THEN ajantis_befreiung_09d
SAY @207
++ @218 + ajantis_befreiung_13 
++ @210 + ajantis_befreiung_12
++ @211 + ajantis_befreiung_11
END

IF ~~ THEN ajantis_befreiung_10a
SAY @219
++ @204 EXTERN C#KNIG02 ajantis_befreiung_10a_chain 
++ @221 + ajantis_befreiung_09d
++ @206 + ajantis_befreiung_09d
END

IF ~~ THEN ajantis_befreiung_10b
SAY @219
++ @204 EXTERN C#KNIG02 ajantis_befreiung_10b_chain 
++ @221 + ajantis_befreiung_09c
++ @206 + ajantis_befreiung_09c
END

IF ~~ THEN ajantis_befreiung_11
SAY @222
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ THEN EXTERN C#Ajan ajantis_befreiung_15
IF ~OR(4)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisPCWantsRomEnd","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRitterBeimPortal","GLOBAL",1) 
ActionOverride("C#KNIG02",MoveBetweenAreas("C#AJ00",[3968.3158],10))
ActionOverride("C#KNIG03",MoveBetweenAreas("C#AJ00",[3919.3128],10))
ActionOverride("C#KNIG04",MoveBetweenAreas("C#AJ00",[4019.3092],10))
ActionOverride("C#Ajantis",MoveBetweenAreas("C#AJ00",[3926.3175],10))
MoveBetweenAreas("C#AJ00",[4006.3159],10)~ UNSOLVED_JOURNAL @10020 EXIT
END

IF ~~ THEN ajantis_befreiung_12
SAY @223
++ @224 + ajantis_befreiung_13
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ + @225 EXTERN C#Ajan ajantis_befreiung_14
++ @226 + ajantis_befreiung_13
END

IF ~~ THEN ajantis_befreiung_13
SAY @227
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ THEN EXTERN C#Ajan ajantis_befreiung_15
IF ~OR(4)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisPCWantsRomEnd","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRitterBeimPortal","GLOBAL",1)
ActionOverride("C#KNIG02",MoveBetweenAreas("C#AJ00",[3968.3158],10))
ActionOverride("C#KNIG03",MoveBetweenAreas("C#AJ00",[3919.3128],10))
ActionOverride("C#KNIG04",MoveBetweenAreas("C#AJ00",[4019.3092],10))
ActionOverride("C#Ajantis",MoveBetweenAreas("C#AJ00",[3926.3175],10))
MoveBetweenAreas("C#AJ00",[4006.3159],10)~ UNSOLVED_JOURNAL @10020 EXIT
END

/*ActionOverride("C#KNIG02",MoveBetweenAreas("C#AJ00",[3968.3158],10))
ActionOverride("C#KNIG03",MoveBetweenAreas("C#AJ00",[3919.3128],10))
ActionOverride("C#KNIG04",MoveBetweenAreas("C#AJ00",[4019.3092],10))
ActionOverride("C#Ajantis",MoveBetweenAreas("C#AJ00",[3926.3175],10))
MoveBetweenAreas("C#AJ00",[4006.3159],10) 
Ajantis: ActionOverride("C#KNIG02",MoveBetweenAreas("C#AJ00",[3968.3158],10))
ActionOverride("C#KNIG03",MoveBetweenAreas("C#AJ00",[3919.3128],10))
ActionOverride("C#KNIG04",MoveBetweenAreas("C#AJ00",[4019.3092],10))
ActionOverride("C#KNIG01",MoveBetweenAreas("C#AJ00",[4006.3159],10))
MoveBetweenAreas("C#AJ00",[3926.3175],10)*/

END

APPEND C#Ajan
IF ~~ THEN ajantis_befreiung_14
SAY @228
++ @224 EXTERN C#KNIG01 ajantis_befreiung_13
++ @229 EXTERN C#KNIG01 ajantis_befreiung_13
END

IF ~~ THEN ajantis_befreiung_15
SAY @230
IF ~~ THEN DO ~SetGlobal("C#AjantisRitterBeimPortal","GLOBAL",1)
ActionOverride("C#KNIG02",MoveBetweenAreas("C#AJ00",[3968.3158],10))
ActionOverride("C#KNIG03",MoveBetweenAreas("C#AJ00",[3919.3128],10))
ActionOverride("C#KNIG04",MoveBetweenAreas("C#AJ00",[4019.3092],10))
ActionOverride("C#KNIG01",MoveBetweenAreas("C#AJ00",[4006.3159],10))
MoveBetweenAreas("C#AJ00",[3926.3175],10)~ UNSOLVED_JOURNAL @10021 EXIT
END

END

CHAIN
IF ~~ THEN C#KNIG02 ajantis_befreiung_10a_chain
@231
== KELDORJ IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @232 
== C#KNIG01 @233
END
++ @208 EXTERN C#KNIG01 ajantis_befreiung_13
++ @210 EXTERN C#KNIG01 ajantis_befreiung_12
++ @211 EXTERN C#KNIG01 ajantis_befreiung_11

CHAIN
IF ~~ THEN C#KNIG02 ajantis_befreiung_10b_chain
@231
== KELDORJ IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @232 
== C#KNIG01 @234
END
++ @235 EXTERN C#KNIG01 ajantis_befreiung_13
++ @210 EXTERN C#KNIG01 ajantis_befreiung_12
++ @211 EXTERN C#KNIG01 ajantis_befreiung_11

CHAIN
IF ~~ THEN C#KNIG02 ajantis_befreiung_10c_chain
@231
== KELDORJ IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @232 
== C#KNIG01 @236
== C#KNIG03 @237
== C#Ajan @238
== C#KNIG01 @239
END
++ @208 EXTERN C#KNIG01 ajantis_befreiung_13 
++ @210 EXTERN C#KNIG01 ajantis_befreiung_12
++ @211 EXTERN C#KNIG01 ajantis_befreiung_11

APPEND C#KNIG01
IF ~Global("C#AjantisRitterBeimPortal","GLOBAL",1)~ THEN auf_dem_weg
SAY @240
IF ~~ THEN DO ~MoveToPointNoInterrupt([4006.3159])~ EXIT
END

END

CHAIN
IF ~Global("C#AjantisQuestEnde","GLOBAL",1) 
OR(5)
	AreaCheck("AR1200")
	AreaCheck("AR1201")
	AreaCheck("AR1202")
	AreaCheck("AR1203")
	AreaCheck("AR1204")~ THEN C#KNIG01 quest_ende
@241
== C#KNIG02 IF ~!Dead("C#KNIG02")~ @242
== C#KNIG01 @243
== C#Ajan @244
== C#KNIG01 IF ~!Dead("C#KNIG02") !Dead("C#KNIG03") !Dead("C#KNIG04")~ THEN @245
== C#KNIG01 IF ~OR(3)
Dead("C#KNIG02") 
Dead("C#KNIG03") 
Dead("C#KNIG04")~ THEN @246
== C#Ajan @247
== C#KNIG01 @248
== C#KNIG01 IF ~Global("C#AjantisPCKilledFirkraag","GLOBAL",1)~ THEN @249
== C#KNIG01 IF ~Global("C#AjantisPCKilledFirkraag","GLOBAL",0)~ THEN @250
END
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#TalkedToAjantis","GLOBAL",1) 
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
EraseJournalEntry(@10021)
SetGlobal("C#AjantisKnig0sHeimkehr","GLOBAL",1)
ActionOverride("C#KNIG01",EscapeAreaMove("AR0903",1730,825,0))
ActionOverride("C#KNIG02",EscapeArea())
ActionOverride("C#KNIG03",EscapeArea())
ActionOverride("C#KNIG04",EscapeArea())~ SOLVED_JOURNAL @10023 EXTERN C#Ajan ajan_01
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#TalkedToAjantis","GLOBAL",1) EraseJournalEntry(@10000)
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
EraseJournalEntry(@10021)
SetGlobal("C#AjantisKnig0sHeimkehr","GLOBAL",1)
ActionOverride("C#KNIG01",EscapeAreaMove("AR0903",1730,825,0))
ActionOverride("C#KNIG02",EscapeArea())
ActionOverride("C#KNIG03",EscapeArea())
ActionOverride("C#KNIG04",EscapeArea())~ SOLVED_JOURNAL @10023 EXTERN C#Ajan ajan_rom_01

APPEND C#Ajan

IF ~~ THEN ajan_01
SAY @251
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",0)
Global("FirkraagDeal","GLOBAL",0)
Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @252 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",1)
Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @253 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead_quest
+ ~Global("C#AjantisPCSawFirkraag","GLOBAL",0)
Global("FirkraagDeal","GLOBAL",0)
Global("Firmag01Move","GLOBAL",1)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @254 + firkraag_notdead
+ ~Global("C#AjantisPCSawFirkraag","GLOBAL",1)
Global("FirkraagDeal","GLOBAL",0)
Global("Firmag01Move","GLOBAL",1)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @255 + firkraag_notdead_quest
+ ~Global("FirkraagDeal","GLOBAL",0)
OR(2)
Global("Firmag01Move","GLOBAL",0)
Global("Kidnap","GLOBAL",3)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @256 + firstmeeting_3
+ ~OR(4)
Global("FirkraagDeal","GLOBAL",1)
Dead ("garren")
Dead("garkid01")
Dead("garkid02")~ + @257 + firkraag_notdead_enemy
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",0)
Global("FirkraagDeal","GLOBAL",0)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @258 + firstmeeting_3
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",1)
!Alignment(Player1,MASK_EVIL)
Global("FirkraagDeal","GLOBAL",0)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @258 + firstmeeting_4a
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",1)
Alignment(Player1,MASK_EVIL)
Global("FirkraagDeal","GLOBAL",0)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @258 + firstmeeting_4b
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",0)
Global("FirkraagDeal","GLOBAL",0)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @259 + firstmeeting_3
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",1)
!Alignment(Player1,MASK_EVIL)
Global("FirkraagDeal","GLOBAL",0)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @259 + firstmeeting_4a
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",1)
Alignment(Player1,MASK_EVIL)
Global("FirkraagDeal","GLOBAL",0)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @259 + firstmeeting_4b
END

IF ~~ THEN ajan_rom_01
SAY @260
IF ~Global("C#AjantisPCWantsRomEnd","GLOBAL",1)~ THEN + rom_end
+ ~Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ + @261 + wiedersehen_rom_01
+ ~Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ + @262 + wiedersehen_rom_02
+ ~Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ + @263 + wiedersehen_rom_04
++ @264 + rom_end_01
END

IF ~~ THEN BEGIN firkraagdead_quest
SAY @265 
+ ~!Alignment(Player1,MASK_EVIL) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @266 + firstmeeting_4a
+ ~Alignment(Player1,MASK_EVIL) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @266 + firstmeeting_4b
+ ~Global("C#ReportFirkrTodOhneAjantis","GLOBAL",1)~ + @267 + firkraagdead_reported
+ ~!Alignment(Player1,MASK_EVIL) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @268 + firstmeeting_4a
+ ~Alignment(Player1,MASK_EVIL) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @268 + firstmeeting_4b
END 

IF ~~ THEN BEGIN firkraag_notdead_quest
SAY @269 
IF ~~ THEN GOTO firstmeeting_3
END 

END //APPEND C#Ajan



APPEND C#KNIG02
IF ~Global("C#AjantisRitterBeimPortal","GLOBAL",1)~ THEN auf_dem_weg
SAY @270
IF ~~ THEN DO ~MoveToPointNoInterrupt([3968.3158])~ EXIT
END
END

APPEND C#KNIG03
IF ~Global("C#AjantisRitterBeimPortal","GLOBAL",1)~ THEN auf_dem_weg
SAY @270
IF ~~ THEN DO ~MoveToPointNoInterrupt([3919.3128])~ EXIT
END
END

APPEND C#KNIG04
IF ~Global("C#AjantisRitterBeimPortal","GLOBAL",1)~ THEN auf_dem_weg
SAY @270
IF ~~ THEN DO ~MoveToPointNoInterrupt([4019.3092])~ EXIT
END
END

APPEND C#Ajan
IF ~Global("C#AjantisRitterBeimPortal","GLOBAL",1)~ THEN auf_dem_weg
SAY @270
IF ~~ THEN DO ~MoveToPointNoInterrupt([3926.3175])~ EXIT
END
END


//Global("C#AjantisPCKilledFirkraag","GLOBAL",1)
//Global("C#AjantisPCWantsRomEnd","GLOBAL",1)