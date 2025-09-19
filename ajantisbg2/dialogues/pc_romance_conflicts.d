BEGIN C#AjanJ


//PC had love night with Anomen (next morning)

IF ~Global("C#AjantisPCAnomenRomance","GLOBAL",1)~ THEN 1 //lovenight
SAY @0
++ @1 DO ~SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2)~ + 2
++ @2 DO ~SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2)~ + 3
++ @3 DO ~SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2)~ + 3
++ @4 DO ~SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2)~ + 3
END

IF ~~ THEN 2
SAY @5
++ @6 + 3
++ @2 + 3
++ @7 + 3
++ @8 + 3
END

IF ~~ THEN 3
SAY @9
IF ~GlobalGT("C#AjantisIlvastarrMeeting","GLOBAL",5)~ THEN + 4
IF ~GlobalLT("C#AjantisIlvastarrMeeting","GLOBAL",6)~ THEN + 5
END

IF ~~ THEN 4
SAY @10
IF ~~ THEN + 6
END

IF ~~ THEN 5
SAY @11
IF ~~ THEN + 6
END

IF ~~ THEN 6
SAY @12
= @13
IF ~Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN + 7
IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN + 8
END 

IF ~~ THEN 7
SAY @14
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

IF ~~ THEN 8
SAY @15
++ @16 + 7
++ @17 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)~ SOLVED_JOURNAL @10029 EXIT
END

//other mod romance / EE romance

IF ~Global("C#AjantisPCModRomance","GLOBAL",2)~ THEN 9
SAY @18
IF ~~ THEN DO ~SetGlobal("C#AjantisPCModRomance","GLOBAL",3)~ + 10
END

IF ~~ THEN 10
SAY @19
IF ~Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN + 7
IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN + 8
END


//If PC slept with Anomen and then broke it off, while Ajantis was not in the party 

IF ~Global("C#AjantisPCAnomenNight","GLOBAL",1)~ THEN 11
SAY @20
= @21
++ @22 DO ~SetGlobal("C#AjantisPCAnomenNight","GLOBAL",2)~ + 3
++ @23 DO ~SetGlobal("C#AjantisPCAnomenNight","GLOBAL",2)~ + 3
++ @24 DO ~SetGlobal("C#AjantisPCAnomenNight","GLOBAL",2)~ + 3
END

//If Anomen romance is committed and Ajantis joins the party later. --////

IF ~Global("C#AjantisPCAnomenRomance","GLOBAL",3)~ THEN 12 //anomen_romance
SAY @25
IF ~~ THEN DO ~SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2)~ + 10
END


//detecting Anomen romance

IF ~Global("C#AjanAnomenRomDetection","GLOBAL",3)~ THEN other_romance_detected
SAY @26
+ ~OR(3)
GlobalGT("C#AjanAnomenConflictSquire","GLOBAL",0)
GlobalGT("C#AjanAnomenConflictKnight2","GLOBAL",0)
GlobalGT("C#AjanAnoConflictNotKnight","GLOBAL",0)
!Global("AnomenRomanceActive","GLOBAL",3)~ + @27 DO ~SetGlobal("C#AjanAnomenRomDetection","GLOBAL",4)~ + other_romance_detected_06
++ @28 DO ~SetGlobal("C#AjanAnomenRomDetection","GLOBAL",4)~ + other_romance_detected_01
++ @29 DO ~SetGlobal("C#AjanAnomenRomDetection","GLOBAL",4)~ + other_romance_detected_02
++ @30 DO ~SetGlobal("C#AjanAnomenRomDetection","GLOBAL",4)~ + other_romance_detected_03
++ @31 DO ~SetGlobal("C#AjanAnomenRomDetection","GLOBAL",4)~ + other_romance_detected_08
++ @32 DO ~SetGlobal("C#AjanAnomenRomDetection","GLOBAL",4)~ + other_romance_detected_04
END

IF ~~ THEN other_romance_detected_01
SAY @33
IF ~~ THEN + other_romance_detected_05
END

IF ~~ THEN other_romance_detected_02
SAY @34
IF ~~ THEN + other_romance_detected_05
END

IF ~~ THEN other_romance_detected_03
SAY @35
IF ~~ THEN + other_romance_detected_05
END

IF ~~ THEN other_romance_detected_04
SAY @36
IF ~~ THEN + other_romance_detected_05
END

IF ~~ THEN other_romance_detected_05
SAY @37
IF ~~ THEN + other_romance_detected_09
END

IF ~~ THEN other_romance_detected_06
SAY @38
++ @28 + other_romance_detected_01
++ @29 + other_romance_detected_02
++ @30 + other_romance_detected_03
++ @31 + other_romance_detected_08
++ @32 + other_romance_detected_04
END

/*
IF ~~ THEN other_romance_detected_07
SAY ~Auch er. Während der ganzen Zeit im Orden habe ich ihn nicht so erlebt. Es wundert mich nicht, dass Ihr ihn beeindruckt, Liebste, denn Ihr seid wunderbar. Jedoch die Situation erfordert Klärung, und... er ist... nicht der Einzige.~
++ @28 + other_romance_detected_01
++ @29 + other_romance_detected_02
++ @30 + other_romance_detected_03
++ @31 + other_romance_detected_08
++ @32 + other_romance_detected_04
END
*/

IF ~~ THEN other_romance_detected_08
SAY @39
= @40
IF ~~ THEN + other_romance_detected_09
END

IF ~~ THEN other_romance_detected_09
SAY @41
= @42
IF ~~ THEN EXIT 
END
