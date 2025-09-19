
/* crossmod compatibility with Lava's Skie - Cost of one Soul Mod component "0"

"L#2SDA1"

Global("L#2SkieDagger","GLOBAL",0) - party did not take sould dagger in ID

GlobalGT("L#2SkieDagger","GLOBAL",9) - soul dagger is with Nem

GlobalGT("L#2SkieDagger","GLOBAL",13) -  PC knows that it takes another soul to retore it

GlobalGT("L#2SkieDagger","GLOBAL",16) - PC found someone willing to give his soul

GlobalGT("L#2SkieDagger","GLOBAL",31) - Skies soul is restored

GlobalGT("L#2SkieDagger","GLOBAL",34) - Skie lives

Global("L#2SDFailedLater","GLOBAL",0)  //quest is still running

Global("L#2SDFailedLater","GLOBAL",1)  //quest broke after bringing the dagger



Global("L#2SDToldImoenNo","GLOBAL",0) //Player did not leave dagger in ID

~Global("L#2SDBreakRule","GLOBAL",1)~ //PC broke rule, dagger not restored, Skie cannot be saved

*/

/* If PC found the dagger */

APPEND C#AjanJ

IF WEIGHT #-1
~Global("C#Ajantis_CM_SkieCost","GLOBAL",1)~ THEN found_dagger
SAY @4
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_SkieCost","GLOBAL",2)~ EXIT
IF ~GlobalGT("L#2SkieDagger","GLOBAL",30)
	Global("L#2SDBreakRule","GLOBAL",0)~ THEN + restored_absent

IF ~GlobalGT("L#2SDSendIt","GLOBAL",0)~ THEN + sendback

IF ~GlobalGT("L#2SkieDagger","GLOBAL",11) GlobalLT("L#2SkieDagger","GLOBAL",15)~ THEN + restore_souldagger

IF ~GlobalLT("L#2SkieDagger","GLOBAL",12)~ THEN + found_dagger_01
END


/* Didn't hear about the cost yet */
IF ~~ THEN found_dagger_01
SAY @5
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_SkieCost","GLOBAL",2)~ EXIT
END



/* after hearing about the cost */

IF WEIGHT #-1
~Global("C#Ajantis_CM_SkieCost","GLOBAL",3)~ THEN restore_souldagger
SAY @6
++ @7 + restore_souldagger_01
+ ~Global("C#Ajantis_CM_L#2SDNEM_20","GLOBAL",1)~ + @14 + restore_souldagger_04
+ ~Global("C#Ajantis_CM_L#2SDNEM_20","GLOBAL",0)~ + @14 + restore_souldagger_07
++ @9 + restore_souldagger_02
++ @10 + restore_souldagger_05
++ @11 + restore_souldagger_06
++ @12 + restore_souldagger_02
END


IF ~~ THEN restore_souldagger_01
SAY @13
+ ~Global("C#Ajantis_CM_L#2SDNEM_20","GLOBAL",1)~ + @14 + restore_souldagger_04
+ ~Global("C#Ajantis_CM_L#2SDNEM_20","GLOBAL",0)~ + @14 + restore_souldagger_07
++ @15 + restore_souldagger_02
++ @16 + restore_souldagger_02
++ @17 + restore_souldagger_02
++ @18 + restore_souldagger_02
END

IF ~~ THEN restore_souldagger_02
SAY @19
= @20
IF ~~ THEN + restore_souldagger_03
END

IF ~~ THEN restore_souldagger_03
SAY @21
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_SkieCost","GLOBAL",4)~ EXIT
END

IF ~~ THEN restore_souldagger_04
SAY @22
IF ~~ THEN + restore_souldagger_02
END

IF ~~ THEN restore_souldagger_05
SAY @23
IF ~~ THEN + restore_souldagger_02
END

IF ~~ THEN restore_souldagger_06
SAY @24
IF ~~ THEN + restore_souldagger_02
END

IF ~~ THEN restore_souldagger_07
SAY @34
IF ~~ THEN + restore_souldagger_02
END

/* dagger was restored with Ajantis in the party */

IF WEIGHT #-1
~Global("C#Ajantis_CM_SkieCost","GLOBAL",5)~ THEN souldagger_restored
SAY @25
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_SkieCost","GLOBAL",6)~ EXIT
END


/* dagger was restored without Ajantis in the party */

IF WEIGHT #-1
~Global("C#Ajantis_CM_SkieCost","GLOBAL",7)~ THEN restored_absent
SAY @26
++ @27 + restored_absent_01
++ @28 + restored_absent_01
++ @9 + restored_absent_01
++ @29 + restored_absent_01
++ @30 + restored_absent_01
END

IF ~~ THEN restored_absent_01
SAY @31
= @32
= @33 
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_SkieCost","GLOBAL",8)~ EXIT
END

IF ~Global("C#Ajantis_CM_SkieCost","GLOBAL",10)~ THEN sendback
SAY @8
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_SkieCost","GLOBAL",11)~ EXIT
END

IF ~Global("C#Ajantis_CM_SkieCost","GLOBAL",12)~ THEN lostit
SAY @35
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_SkieCost","GLOBAL",13)~ EXIT
END

END //APPEND
