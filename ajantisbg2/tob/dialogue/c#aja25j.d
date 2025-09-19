BEGIN C#Aja25J

CHAIN
IF ~Global("C#AjantisEvilPCLeave","GLOBAL",1)~ THEN C#Aja25J ajantis_noevilpc
@817
= @818
== C#Aja25J IF ~Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN @838
END
IF ~~ THEN DO ~SetGlobal("C#AjantisEvilPCLeave","GLOBAL",2) DestroyItem("C#AJSHLD") DestroyItem("C#AJSHL2") 
LeaveParty() GivePartyAllEquipment() EscapeArea()~ EXIT


APPEND C#Aja25J


/* Ajantis Shield Removed talk */

IF ~Global("C#AjantisShieldGone","GLOBAL",2)~ THEN ajantis_shield_gone
SAY @508
++ @509 DO ~SetGlobal("C#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_02
++ @510 DO ~SetGlobal("C#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_02
++ @511 DO ~SetGlobal("C#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_01
END

IF ~~ THEN ajantis_shield_gone_01
SAY @512
IF ~~ THEN + ajantis_shield_gone_02
END

IF ~~ THEN ajantis_shield_gone_02
SAY @513
IF ~~ THEN EXIT
END

/* Ajantis Shield Returned talk */

IF ~Global("C#AjantisShieldGone","GLOBAL",4)~ THEN ajantis_shield_back
SAY @514
IF ~~ THEN DO ~SetGlobal("C#AjantisShieldGone","GLOBAL",5)~ EXIT
END

IF ~Global("C#AjantisWieldsCarsomyr","GLOBAL",1)~ THEN carsomyr
SAY @734
IF ~~ THEN DO ~SetGlobal("C#AjantisWieldsCarsomyr","GLOBAL",2)~ EXIT
END

END //APPEND


/* reaction to evil solution of PP challenges 

From FINSOL01.dlg:
  IF ~GlobalLT("PPEvilChoices","GLOBAL",2)
~ THEN GOTO 17
  IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
GlobalLT("PPEvilChoices","GLOBAL",4)
~ THEN GOTO 20
  IF ~GlobalGT("PPEvilChoices","GLOBAL",3)
GlobalLT("PPEvilChoices","GLOBAL",6)
~ THEN GOTO 23


*/

/* second evil choice - Ajantis warns */


CHAIN
IF ~Global("C#Ajantis_EvilPPChoices","GLOBAL",1)~ THEN C#Aja25J evil_PP_choice_1
@825 
DO ~SetGlobal("C#Ajantis_EvilPPChoices","GLOBAL",2)~
= @826 
== C#Aja25J IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @827
== C#Aja25J IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @828 
== C#Aja25J @829
EXIT





/* 4th evil choice */

CHAIN
IF ~Global("C#Ajantis_EvilPPChoices","GLOBAL",3)~ THEN C#Aja25J evil_PP_choice_2
@830 
DO ~SetGlobal("C#Ajantis_EvilPPChoices","GLOBAL",4)~
== C#Aja25J IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @831
== C#Aja25J IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @832 
== C#Aja25J @833
== C#Aja25J IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @834
== C#Aja25J IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @835
== C#Aja25J @819
EXIT





