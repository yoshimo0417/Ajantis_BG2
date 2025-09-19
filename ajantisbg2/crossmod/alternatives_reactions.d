


APPEND C#AjanJ

/* crossmod: Alternativs: Aster path, kill the Shadow Thieves */

/* PC agreed to go Aster's route 

Global("B!Alternatives","GLOBAL",6) */

IF WEIGHT #-1
~Global("C#Ajantis_CM_Aster","GLOBAL",1)~ THEN aster_agreed
SAY @2
= @3
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_Aster","GLOBAL",2)~ EXIT
END



/* PC heard Asters offer but told her to wait */

/* Global("B!Alternatives","GLOBAL",5): PC talked to Aster 
Global("C#Ajantis_CM_ASTER_35","GLOBAL",1): Ajantis was there */

IF WEIGHT #-1
~Global("C#Ajantis_CM_Aster","GLOBAL",3)~ THEN aster_notyet
SAY @2
= @4
++ @5 + aster_notyet_01

++ @6 + aster_notyet_02
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @7 + aster_notyet_03
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @8 + aster_notyet_03
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @7 + aster_notyet_03_i4e
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @8 + aster_notyet_03_i4e
++ @9 + aster_notyet_04
+ ~!Dead("C#Husam1") GlobalGT("C#HusamSpawn","GLOBAL",10)~ + @10 + aster_notyet_02
++ @11 + aster_notyet_02
END

IF ~~ THEN aster_notyet_01
SAY @12
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_Aster","GLOBAL",4)~ EXIT
END

IF ~~ THEN aster_notyet_02
SAY @13
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @14 + aster_notyet_03
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @7 + aster_notyet_03
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @8 + aster_notyet_03
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @14 + aster_notyet_03_i4e
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @7 + aster_notyet_03_i4e
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @8 + aster_notyet_03_i4e
++ @9 + aster_notyet_04
++ @15 + aster_notyet_06
END

IF ~~ THEN aster_notyet_03
SAY @16
++ @17 + aster_notyet_06
++ @18 + aster_notyet_04
++ @9 + aster_notyet_04
++ @15 + aster_notyet_06
END

IF ~~ THEN aster_notyet_03_i4e
SAY @48
++ @17 + aster_notyet_06
++ @18 + aster_notyet_04
++ @9 + aster_notyet_04
++ @15 + aster_notyet_06
END

IF ~~ THEN aster_notyet_04
SAY @19
IF ~~ THEN + aster_notyet_05
END

IF ~~ THEN aster_notyet_05
SAY @20
IF ~~ THEN + aster_notyet_06
END

IF ~~ THEN aster_notyet_06
SAY @21
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_Aster","GLOBAL",5)~ EXIT
END


/* If PC turned down Aster 

Global("B!RefusedAlternatives","GLOBAL",1) */

IF WEIGHT #-1
~OR(2)
		Global("C#Ajantis_CM_Aster","GLOBAL",6)
		Global("C#Ajantis_CM_Aster","GLOBAL",10)
		Global("C#Ajantis_CM_Aster","GLOBAL",11)~ THEN aster_no
SAY @22
+ ~Global("C#Ajantis_CM_Aster","GLOBAL",11)~ + @23 + aster_no_02
++ @24 + aster_no_02 
+ ~!Dead("C#Husam1") GlobalGT("C#HusamSpawn","GLOBAL",10)~ + @25 + aster_no_01
++ @26 + aster_no_02
END

IF ~~ THEN aster_no_01
SAY @27
IF ~~ THEN + aster_no_02
END

END //APPEND

CHAIN
IF ~~ THEN C#AjanJ aster_no_02
@28 
DO ~SetGlobal("C#Ajantis_CM_Aster","GLOBAL",12)~
== C#AjanJ IF ~Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
    !Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN @29
EXIT



/* PC listened to Malficus' offer without turning him down */

APPEND C#AjanJ

IF WEIGHT #-1
~Global("C#Ajantis_CM_AltMal","GLOBAL",1)~ THEN malficus
SAY @31
++ @32 + malficus_01
++ @33 + malficus_02
++ @34 + malficus_03
END

IF ~~ THEN malficus_01
SAY @35
++ @33 + malficus_02
++ @34 + malficus_03
END

IF ~~ THEN malficus_02
SAY @36
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_AltMal","GLOBAL",2)~ EXIT
END

IF ~~ THEN malficus_03
SAY @37
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_AltMal","GLOBAL",2)~ EXIT
END


/* PC agreed to be part of assassination 

GlobalGT("B!Tourist","GLOBAL",3) GlobalLT("B!Tourist","GLOBAL",7) */


IF WEIGHT #-1
~Global("C#Ajantis_CM_AltMal","GLOBAL",3)~ THEN agreed
SAY @39
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_AltMal","GLOBAL",4)~ EXIT
END

/* Global("B!Tourist","GLOBAL",7) assassination took place - Ajantis attacks */

IF WEIGHT #-1
~Global("C#Ajantis_CM_AltMal","GLOBAL",5)~ THEN attack
SAY @40
IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("C#Ajantis_CM_AltMal","GLOBAL",6) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#Ajantis_CM_AltMal","GLOBAL",6) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#Ajantis_CM_AltMal","GLOBAL",6)
SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
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

IF ~~ THEN unzufrieden_angriff_01
SAY @149 
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