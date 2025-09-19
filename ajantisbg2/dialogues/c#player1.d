APPEND PLAYER1

/* new BG2 game: I don't know the romance status */

IF WEIGHT #-1
~Global("C#AjantisRomanceBG1Items","GLOBAL",3) Global("C#AjantisEngaged","GLOBAL",0)
Global("C#AjantisEngagedMatch","GLOBAL",1)~ THEN verlobungsring
SAY @0
++ @1 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",1)~ + verlobungsring_01b
++ @2 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",0)
SetGlobal("C#AjanEngagementBrokenBG1","GLOBAL",1)~ + verlobungsring_01c
++ @3 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2)~ + verlobungsring_01c
END

/* BGT / EET game: I know the Bg1 romance broke after the engagement */

IF WEIGHT #-1
~Global("C#AjantisRomanceBG1Items","GLOBAL",3) Global("C#AjanEngagementBrokenBG1","GLOBAL",1)~ THEN verlobungsring_noengagement
SAY @4
IF ~~ THEN + verlobungsring_01c
END

/* I know PC and Ajantis are engaged */
IF WEIGHT #-1
~Global("C#AjantisRomanceBG1Items","GLOBAL",3) Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)~ THEN verlobungsring_rom
SAY @5
IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ + verlobungsring_01
IF ~InParty("%ImoenDV%") InMyArea("%ImoenDV%") !StateCheck("%ImoenDV%",CD_STATE_NOTVALID)~ + verlobungsring_01
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + verlobungsring_01
IF ~NumInPartyGT(1) 
OR(3)
!InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)
OR(3)
!InParty("%ImoenDV%") !InMyArea("%ImoenDV%") StateCheck("%ImoenDV%",CD_STATE_NOTVALID)
OR(3)
!InParty("jaheira") !InMyArea("jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN + verlobungsring_02
IF ~!NumInPartyGT(1)~ THEN + verlobungsring_03
END

IF ~~ THEN verlobungsring_01b
SAY @6
IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ + verlobungsring_01
IF ~InParty("%ImoenDV%") InMyArea("%ImoenDV%") !StateCheck("%ImoenDV%",CD_STATE_NOTVALID)~ + verlobungsring_01
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + verlobungsring_01
IF ~NumInPartyGT(1) 
OR(3)
!InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)
OR(3)
!InParty("%ImoenDV%") !InMyArea("%ImoenDV%") StateCheck("%ImoenDV%",CD_STATE_NOTVALID)
OR(3)
!InParty("jaheira") !InMyArea("jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN + verlobungsring_02
IF ~!NumInPartyGT(1)~ THEN + verlobungsring_03
END

IF ~~ THEN verlobungsring_01c
SAY @7
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceBG1Items","GLOBAL",4)~ EXIT
END

IF ~~ THEN verlobungsring_02
SAY @8
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceBG1Items","GLOBAL",4)~ EXIT
END

IF ~~ THEN verlobungsring_03
SAY @9
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceBG1Items","GLOBAL",4)~ EXIT
END

END

CHAIN
IF ~~ THEN PLAYER1 verlobungsring_01
@10
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @11
== %IMOENJ% IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("%ImoenDV%") InMyArea("%ImoenDV%") !StateCheck("%ImoenDV%",CD_STATE_NOTVALID)~ THEN @12
== %IMOENJ% IF ~InParty("%ImoenDV%") InMyArea("%ImoenDV%") !StateCheck("%ImoenDV%",CD_STATE_NOTVALID)~ THEN @13
== JAHEIRAJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @14
END
++ @15 DO ~SetGlobal("C#AjantisRomanceBG1Items","GLOBAL",4)~ EXIT
++ @16 DO ~SetGlobal("C#AjantisRomanceBG1Items","GLOBAL",4)~ EXIT
++ @17 DO ~SetGlobal("C#AjantisRomanceBG1Items","GLOBAL",4)~ EXIT


APPEND PLAYER1

//Windspeer Hills

/* new BG2 game: I don't know about the romance status */
IF WEIGHT #-1
~Global("C#AjantisPCSeesAjantis","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",0)
Global("C#AjantisEngagedMatch","GLOBAL",1)~ THEN ajantis
SAY @18
++ @19 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",1) SetGlobal("C#AjantisPCSeesAjantis","GLOBAL",2)~ + ajantis_01

+ ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ + @20 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AnomenMonsters","GLOBAL",1) SetGlobal("C#AjantisPCSeesAjantis","GLOBAL",2)~ EXTERN ANOMENJ 0

+ ~OR(3)
!InParty("anomen") 
!InMyArea("anomen")
StateCheck("anomen",CD_STATE_NOTVALID)~ + @20 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AjantisPCSeesAjantis","GLOBAL",2)~ + ajantis_02

+ ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ + @21 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",0)
SetGlobal("C#AjanEngagementBrokenBG1","GLOBAL",1) SetGlobal("C#AjantisPCSeesAjantis","GLOBAL",2)~ EXTERN ANOMENJ 0

+ ~OR(3)
!InParty("anomen") 
!InMyArea("anomen") 
StateCheck("anomen",CD_STATE_NOTVALID)~ + @21 DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",0)
SetGlobal("C#AjanEngagementBrokenBG1","GLOBAL",1) SetGlobal("C#AjantisPCSeesAjantis","GLOBAL",2)~ + ajantis_02
END


/* I know Ajantis and PC were engaged in BG1 */
IF WEIGHT #-1
~Global("C#AjantisPCSeesAjantis","GLOBAL",1) Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)~ THEN ajantis_rom
SAY @22
IF ~~ THEN DO ~SetGlobal("C#AjantisPCSeesAjantis","GLOBAL",2)~ + ajantis_01
END

END // APPEND PLAYER1

CHAIN
IF ~~ THEN PLAYER1 ajantis_01
@23
= @24 

== BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @25
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @26
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @27
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) !HasItem("MISC84","MINSC")~ THEN @28
== BKORGAN IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @29
== BEDWIN IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @30
== BHAERDA IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @31
== BNALIA IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @32
== BVALYGA IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @33
== BVICONI IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @34
== BYOSHIM IF ~InParty("yoshimo") InMyArea("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @35
== BMAZZY IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @36
== BCERND IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @37
== BJAN IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @38
== BIMOEN2 IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @39
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @40
END
IF ~!Class(Player1,PALADIN) InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1) SetGlobal("C#AnomenMonsters","GLOBAL",1)~ UNSOLVED_JOURNAL @10000 EXTERN ANOMENJ 0
IF ~Class(Player1,PALADIN) InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1) SetGlobal("C#AnomenMonsters","GLOBAL",1)~ UNSOLVED_JOURNAL @10001 EXTERN ANOMENJ 0
IF ~!Class(Player1,PALADIN) 
OR(3)
!InParty("anomen") !InMyArea("anomen") StateCheck("anomen",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10000 EXIT
IF ~Class(Player1,PALADIN) 
OR(3)
!InParty("anomen") !InMyArea("anomen") StateCheck("anomen",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisErkennen","GLOBAL",1)~ UNSOLVED_JOURNAL @10001 EXIT

APPEND PLAYER1

IF ~~ THEN ajantis_02
SAY @41
IF ~~ THEN EXIT
END


END