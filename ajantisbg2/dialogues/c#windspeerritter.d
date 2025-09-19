//Änderungen GARREN-Begegnung

EXTEND_BOTTOM GARREN 0
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
OR(3)
	Global("C#AjantisPCBrokeRomance","GLOBAL",1)
	!Global("C#AjantisEngagedMatch","GLOBAL",1)
	!Global("C#AjantisEngaged","GLOBAL",1)~ + @0 DO ~SetGlobal("DomainPaladinBattle","GLOBAL",2) SetGlobal("C#AjantisErkennen","GLOBAL",1)~ + 2


+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Class(Player1,PALADIN) !Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @1  DO ~SetGlobal("DomainPaladinBattle","GLOBAL",2) SetGlobal("C#AjantisErkennen","GLOBAL",1) SetGlobal("C#AjantisGarrenRom","LOCALS",1)~ UNSOLVED_JOURNAL @10000 + garren_ajantis_erkennen

+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Class(Player1,PALADIN) !Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @1  DO ~SetGlobal("DomainPaladinBattle","GLOBAL",2) SetGlobal("C#AjantisErkennen","GLOBAL",1) SetGlobal("C#AjantisGarrenRom","LOCALS",1)~ UNSOLVED_JOURNAL @10001 + garren_ajantis_erkennen

+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @2 DO ~SetGlobal("DomainPaladinBattle","GLOBAL",2) SetGlobal("C#AjantisGarrenRom","LOCALS",1)~ + garren_ajantis_erkennen
END

EXTEND_BOTTOM GARREN 1
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
OR(3)
	Global("C#AjantisPCBrokeRomance","GLOBAL",1)
	!Global("C#AjantisEngagedMatch","GLOBAL",1)
	!Global("C#AjantisEngaged","GLOBAL",1)~ + @3 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ + 2

+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Class(Player1,PALADIN) !Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisGarrenRom","LOCALS",0)~ + @1 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10000 + garren_ajantis_erkennen_01

+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Class(Player1,PALADIN) !Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisGarrenRom","LOCALS",0)~ + @1 DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10001 + garren_ajantis_erkennen_01

+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Global("C#AjantisErkennen","GLOBAL",1) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisGarrenRom","LOCALS",0)~ + @2 + garren_ajantis_erkennen_01
END

A_T_T GARREN 38  ~!PartyHasItem("C#AJGK")~ 
A_T_T GARREN 62  ~!PartyHasItem("C#AJGK")~ 

EXTEND_BOTTOM GARREN 38
+ ~PartyHasItem("C#AJGK")~ + @4 + ajantis_garren_kugel_01
+ ~PartyHasItem("C#AJGK")~ + @5 + ajantis_garren_kugel
END

EXTEND_BOTTOM GARREN 62
+ ~PartyHasItem("C#AJGK")~ + @6 EXIT
+ ~PartyHasItem("C#AJGK")~ + @5 + ajantis_garren_kugel_62
END

EXTEND_BOTTOM GARREN 53
+ ~PartyHasItem("C#AJGK")~ + @5 + ajantis_garren_kugel_53
END


INTERJECT GARREN 7 C#AjantisGarrenCutscene
== GARREN IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)~ THEN @7   
END GARREN garren_cutscene

EXTEND_BOTTOM GARREN 10
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @8 + garren_ajantis_schmerz
END

EXTEND_BOTTOM GARREN 31
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
OR(3)
	Global("C#AjantisPCBrokeRomance","GLOBAL",1)
	!Global("C#AjantisEngagedMatch","GLOBAL",1)
	!Global("C#AjantisEngaged","GLOBAL",1)~ + @9 + garren_ajantis_wiederbelebung
+ ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @10 + garren_ajantis_wiederbelebung
END

APPEND GARREN

IF ~~ THEN garren_cutscene
SAY @11
IF ~~ THEN DO ~CreateCreature("C#AJALEX",[453.309],0)
CreateCreature("C#AJKEND",[394.316],0)      
CreateCreature("C#RYAN",[335.330],0)
ClearAllActions()
StartCutScene("C#AJCUT1")
StartCutSceneMode()~ EXIT
END

IF ~~ THEN after_cutscene
SAY @12
IF ~~ THEN + einladung
END

IF ~~ THEN einladung
SAY @13
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisErkennGarren","GLOBAL",0)~ + @14 + garren_ajantis_erkennen_02
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisErkennGarren","GLOBAL",1)~ + @14 + garren_ajantis_erkennen_03
COPY_TRANS GARREN 7
END

IF ~~ THEN garren_ajantis_erkennen
SAY @15
IF ~~ THEN DO ~SetGlobal("C#AjantisErkennGarren","GLOBAL",1)~ + 1
END

IF ~~ THEN garren_ajantis_erkennen_01
SAY @16
++ @17 DO ~SetGlobal("C#AjantisErkennGarren","GLOBAL",1)~ + 2
++ @18 DO ~SetGlobal("C#AjantisErkennGarren","GLOBAL",1)~ + 2
END

IF ~~ THEN garren_ajantis_erkennen_02
SAY @19
= @20
COPY_TRANS GARREN 7
END

IF ~~ THEN garren_ajantis_erkennen_03
SAY @21
COPY_TRANS GARREN 7
++ @22 + 28
END

IF ~~ THEN garren_ajantis_schmerz
SAY @23 
IF ~~ THEN GOTO 15
END

IF ~~ THEN garren_ajantis_wiederbelebung
SAY @24 
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @25 + garren_ajantis_wiederbelebung_03
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @26 + garren_ajantis_wiederbelebung_02
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @27 + garren_ajantis_wiederbelebung_04
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @28 + garren_ajantis_wiederbelebung_03
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @29 + garren_ajantis_wiederbelebung_03
END

IF ~~ THEN garren_ajantis_wiederbelebung_02
SAY @30
COPY_TRANS GARREN 31
END

IF ~~ THEN garren_ajantis_wiederbelebung_03
SAY @31
COPY_TRANS GARREN 31
END

IF ~~ THEN garren_ajantis_wiederbelebung_04
SAY @32
COPY_TRANS GARREN 31
END

IF ~~ THEN ajantis_garren_kugel
SAY @33
COPY_TRANS GARREN 38
END

IF ~~ THEN ajantis_garren_kugel_62
SAY @33
COPY_TRANS GARREN 62
END

IF ~~ THEN ajantis_garren_kugel_01
SAY @34
COPY_TRANS GARREN 38
END

IF ~~ THEN ajantis_garren_kugel_53
SAY @33
IF ~~ THEN + ajantis_garren_kugel_53_02
END

IF ~~ THEN ajantis_garren_kugel_53_02
SAY @35
COPY_TRANS GARREN 53
END

END

BEGIN C#AJKEND

IF ~True()~ THEN kendak_line
SAY @36
IF ~~ THEN EXIT
END

BEGIN C#RYAN

IF ~True()~ THEN ryan_line
SAY @36
IF ~~ THEN EXIT
END

BEGIN C#AJALEX
 
IF ~~ THEN alex_01
SAY @37 
IF ~~ THEN + alex_chain_02
END

IF ~~ THEN alex_03
SAY @38 
IF ~~ THEN + alex_chain_02
END

IF ~~ THEN alex_04
SAY @39
++ @40 + alex_07
++ @41 + alex_chain_03
END

IF ~~ THEN alex_05
SAY @42
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @43 + alex_04
++ @44 + alex_chain_03
++ @45 + alex_chain_03
END

IF ~~ THEN alex_06
SAY @46 
IF ~~ THEN + alex_chain_03
END

IF ~~ THEN alex_07
SAY @47
IF ~~ THEN + alex_chain_03
END


CHAIN  
IF ~Global("C#AjantisRitter","GLOBAL",1)~ THEN C#AJALEX windspeerkampf
@48 DO ~SetGlobal("C#AjantisRitter","GLOBAL",2) SetGlobal("C#AjantisPCInWindspeerHills","GLOBAL",1)~
== GARREN @49
== C#AJALEX @50 
END
++ @51 + alex_01
++ @52 + alex_chain_02
++ @53 + alex_03


CHAIN C#AJALEX alex_chain_02
@54 
= @55
= @56
END
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @43 UNSOLVED_JOURNAL @10002 + alex_04
++ @57 UNSOLVED_JOURNAL @10002 + alex_05
++ @58 UNSOLVED_JOURNAL @10002 + alex_chain_03
++ @59 UNSOLVED_JOURNAL @10002 + alex_chain_03
++ @60 UNSOLVED_JOURNAL @10002 + alex_06


CHAIN C#AJALEX alex_chain_03
@61
== GARREN @62
== C#AJALEX @63
= @64 
END GARREN after_cutscene