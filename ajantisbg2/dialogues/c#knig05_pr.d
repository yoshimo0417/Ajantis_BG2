BEGIN C#KNIG05

//Global("C#AjantisDirektErschaffen","GLOBAL",2)
//PartyHasItem("C#AJGK")
//Global("C#AjantisExistiert","GLOBAL",1)

IF ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0) GlobalLT("C#AjantisRitterSuche","GLOBAL",5) Global("C#AjantisExistiert","GLOBAL",1)
!Dead("C#KNIG03")
OR(2)
//  Dead("C#KNIG01")
  Dead("C#KNIG02")
  Dead("C#KNIG04")
//  Dead("C#ajantis")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)~ THEN bedanken_01
SAY @0
IF ~~ THEN DO ~SetGlobal("C#AjantisRitterSuche","GLOBAL",5) EscapeArea()~ EXIT
END

IF ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0) GlobalLT("C#AjantisRitterSuche","GLOBAL",5) Global("C#AjantisExistiert","GLOBAL",1)
Dead("C#KNIG03")
OR(2)
//  Dead("C#KNIG01")
  Dead("C#KNIG02")
  Dead("C#KNIG04")
//  Dead("C#ajantis")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)~ THEN bedanken_01
SAY @0
= @1
IF ~~ THEN DO ~SetGlobal("C#AjantisRitterSuche","GLOBAL",5) EscapeArea()~ EXIT
END

IF ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0) GlobalLT("C#AjantisRitterSuche","GLOBAL",5) Global("C#AjantisExistiert","GLOBAL",1)
!Dead("C#KNIG01")
!Dead("C#KNIG02")
!Dead("C#KNIG03")
!Dead("C#KNIG04")
!Dead("C#ajantis")~ THEN bedanken_02
SAY @2
IF ~~ THEN DO ~SetGlobal("C#AjantisRitterSuche","GLOBAL",5) EscapeArea()~ EXIT
END

IF ~Global("C#AjantisExistiert","GLOBAL",1)
Global("C#AjantisRitterSuche","GLOBAL",0)
Dead("C#KNIG03")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)~ THEN bedanken_03
SAY @3
= @4
IF ~~ THEN DO ~SetGlobal("C#AjantisPCInWindspeerHills","GLOBAL",5) SetGlobal("C#AjantisRitterSuche","GLOBAL",5) EscapeArea()~ EXIT
END

IF ~Global("C#AjantisExistiert","GLOBAL",1)
Global("C#AjantisRitterSuche","GLOBAL",0)
!Dead("C#KNIG03")
OR(2)
//Dead("C#KNIG01")
Dead("C#KNIG02")
Dead("C#KNIG04")
//Dead("C#ajantis")
!Allegiance("C#KNIG01",ENEMY)
!Allegiance("C#KNIG02",ENEMY)
!Allegiance("C#KNIG03",ENEMY)
!Allegiance("C#KNIG04",ENEMY)
!Allegiance("C#ajantis",ENEMY)~ THEN bedanken_04
SAY @3
= @6
IF ~~ THEN DO ~SetGlobal("C#AjantisPCInWindspeerHills","GLOBAL",5) SetGlobal("C#AjantisRitterSuche","GLOBAL",5) EscapeArea()~ EXIT
END

IF ~Global("C#AjantisExistiert","GLOBAL",1)
Global("C#AjantisRitterSuche","GLOBAL",0)
!Dead("C#KNIG01")
!Dead("C#KNIG02")
!Dead("C#KNIG03")
!Dead("C#KNIG04")
!Dead("C#ajantis")~ THEN bedanken_05
SAY @7
= @8
IF ~~ THEN DO ~SetGlobal("C#AjantisPCInWindspeerHills","GLOBAL",5) SetGlobal("C#AjantisRitterSuche","GLOBAL",5) EscapeArea()~ EXIT
END

//Global("C#AjantisSpaetInstallation","GLOBAL",3)

IF ~Global("C#AjantisSpaetInstallation","GLOBAL",3)
!Global("C#AjantisExistiert","GLOBAL",1)
Global("C#AjantisRitterSuche","GLOBAL",0)
!Dead("C#KNIG01")
!Dead("C#KNIG02")
!Dead("C#KNIG03")
!Dead("C#KNIG04")
!Dead("C#ajantis")~ THEN kugel
SAY @9
IF ~~ THEN + beerdigung_02
END

IF ~Global("C#AjantisPCInWindspeerHills","GLOBAL",4)
!Global("C#AjantisExistiert","GLOBAL",1)
Global("C#AjantisRitterSuche","GLOBAL",0)
!Dead("C#KNIG01")
!Dead("C#KNIG02")
!Dead("C#KNIG03")
!Dead("C#KNIG04")
!Dead("C#ajantis")~ THEN beerdigung
SAY @10
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @11 DO ~SetGlobal("C#AjantisPCInWindspeerHills","GLOBAL",5)~ + beerdigung_01
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @12 DO ~SetGlobal("C#AjantisPCInWindspeerHills","GLOBAL",5)~ + beerdigung_02
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @13 DO ~SetGlobal("C#AjantisPCInWindspeerHills","GLOBAL",5)~ + beerdigung_01
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @14 DO ~SetGlobal("C#AjantisPCInWindspeerHills","GLOBAL",5)~ + beerdigung_02
END

IF ~~ THEN beerdigung_01
SAY @15
++ @16 + beerdigung_03
++ @17 + beerdigung_04
++ @18 + beerdigung_04
END

IF ~~ THEN beerdigung_02
SAY @19
++ @16 + beerdigung_03
++ @17 + beerdigung_04
++ @18 + beerdigung_04
END

IF ~~ THEN beerdigung_03
SAY @20
++ @21 + beerdigung_05
++ @22 + beerdigung_05
END

IF ~~ THEN beerdigung_04
SAY @23
++ @21 + beerdigung_05
++ @22 + beerdigung_05
END

IF ~~ THEN beerdigung_05
SAY @24
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @25 + beerdigung_06
++ @26 + beerdigung_06
++ @27 + beerdigung_10
END

IF ~~ THEN beerdigung_06
SAY @28
IF ~Global("C#ReportFirkraagsTod","GLOBAL",1)~ THEN + beerdigung_07
IF ~Global("C#ReportFirkraagsTod","GLOBAL",0)~ THEN + beerdigung_08
END

IF ~~ THEN beerdigung_07
SAY @29
+ ~Global("C#AjantisKugelUebergabe","GLOBAL",1) !PartyHasItem("C#AJGK")~ + @30 DO ~SetGlobal("C#AjantisKugelUebergabe","GLOBAL",2)~ + beerdigung_11
+ ~Global("C#AjantisKugelUebergabe","GLOBAL",1) PartyHasItem("C#AJGK")~ + @31 DO ~SetGlobal("C#AjantisKugelUebergabe","GLOBAL",2)~ + beerdigung_11
+ ~Global("C#AjantisKugelUebergabe","GLOBAL",0)~ + @32 + beerdigung_12
END

IF ~~ THEN beerdigung_08
SAY @33
+ ~!Dead("Firkra02") Global("C#AjantisKugelUebergabe","GLOBAL",0)~ + @32 + beerdigung_12
+ ~Dead("Firkra02") Global("C#AjantisKugelUebergabe","GLOBAL",0)~ + @34 + beerdigung_14
+ ~Global("C#AjantisKugelUebergabe","GLOBAL",1) !PartyHasItem("C#AJGK")~ + @35 DO ~SetGlobal("C#AjantisKugelUebergabe","GLOBAL",2)~ + beerdigung_11
+ ~Global("C#AjantisKugelUebergabe","GLOBAL",1) PartyHasItem("C#AJGK")~ + @35 DO ~SetGlobal("C#AjantisKugelUebergabe","GLOBAL",2)~ + beerdigung_11
++ @36 + beerdigung_09
END

IF ~~ THEN beerdigung_09
SAY @37
+ ~Dead("Firkra02") Global("C#AjantisKugelUebergabe","GLOBAL",0)~ + @34 + beerdigung_12
+ ~Global("C#AjantisKugelUebergabe","GLOBAL",1) !PartyHasItem("C#AJGK")~ + @35 DO ~SetGlobal("C#AjantisKugelUebergabe","GLOBAL",2)~ + beerdigung_11
+ ~Global("C#AjantisKugelUebergabe","GLOBAL",1) PartyHasItem("C#AJGK")~ + @35 DO ~SetGlobal("C#AjantisKugelUebergabe","GLOBAL",2)~ + beerdigung_11
++ @27 + beerdigung_10
END

IF ~~ THEN beerdigung_10
SAY @39
= @40
= @41
IF ~OR(3) !InParty("KELDORN") !InMyArea("KELDORN") StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisRitterSuche","GLOBAL",1)~ EXIT
IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisRitterSuche","GLOBAL",1)~ EXTERN KELDORJ ajantissuche
END

IF ~~ THEN beerdigung_11
SAY @42
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @43 + beerdigung_13
++ @44 + beerdigung_13
++ @27 + beerdigung_10
END

IF ~~ THEN beerdigung_12
SAY @45
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @43 + beerdigung_13
++ @44 + beerdigung_13
++ @27 + beerdigung_10
END

IF ~~ THEN beerdigung_13
SAY @46
= @40 
= @47
IF ~OR(3) !InParty("KELDORN") !InMyArea("KELDORN") StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisRitterSuche","GLOBAL",2)~ EXIT
IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisRitterSuche","GLOBAL",2)~ EXTERN KELDORJ ajantissuche
END

IF ~~ THEN beerdigung_14
SAY @48
IF ~~ THEN + beerdigung_12
END

IF ~Global("C#AjantisRitterSuche","GLOBAL",1)~ THEN rittersuche_01
SAY @49
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @43 + beerdigung_13
++ @50 + beerdigung_13
++ @51 EXIT
END

IF ~Global("C#AjantisRitterSuche","GLOBAL",2)~ THEN rittersuche_02
SAY @52 
+ ~Global("C#AjantisKugelUebergabe","GLOBAL",1) !Global("C#AjantisKugelPortalGeoeffnet","GLOBAL",1)~ + @53 DO ~SetGlobal("C#AjantisKugelUebergabe","GLOBAL",2)~ + rittersuche_03
+ ~Global("C#AjantisKugelPortalGeoeffnet","GLOBAL",1)~ + @54 + rittersuche_04
++ @55 + rittersuche_06
END

IF ~~ THEN rittersuche_03
SAY @56
IF ~~ THEN EXIT
END

IF ~~ THEN rittersuche_04
SAY @57
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @58 + rittersuche_06
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @59 + rittersuche_06
++ @55 + rittersuche_06
+ ~Global("C#AjantisKnig05Unterstuetzung","GLOBAL",0)~ + @60 + rittersuche_05
END

IF ~~ THEN rittersuche_05
SAY @61
++ @62 + rittersuche_06
++ @63 DO ~SetGlobal("C#AjantisKnig05Unterstuetzung","GLOBAL",1) GiveItemCreate("RING06",Player1,1,1,0)~ + rittersuche_06
++ @64 DO ~SetGlobal("C#AjantisKnig05Unterstuetzung","GLOBAL",1) GiveItemCreate("RING06",Player1,1,1,0)~ + rittersuche_06
END

IF ~~ THEN rittersuche_06
SAY @65
IF ~~ THEN EXIT
END

APPEND KELDORJ

IF ~~ THEN ajantissuche
SAY @66
IF ~~ THEN EXIT
END

END
