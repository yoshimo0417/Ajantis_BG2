/* Ajantis RE reactions */

/* Bjornin */

APPEND c#ajanJ

//general
IF ~Global("C#Ajantis_REBjornin","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN bjornin_reaction
SAY @0
= @1
IF ~~ THEN + bjornin_reaction_01
IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~SetGlobal("C#Ajantis_REBjornin","GLOBAL",2)~ EXIT
END


//RA = 2
IF ~Global("C#Ajantis_REBjornin","GLOBAL",1) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN bjornin_reaction_rom
SAY @2
= @3
IF ~~ THEN + bjornin_reaction_01
END

IF ~~ THEN bjornin_reaction_01
SAY @4
IF ~~ THEN DO ~SetGlobal("C#Ajantis_REBjornin","GLOBAL",2)~ EXIT
END

/* Solaufein */


IF ~Global("C#Ajantis_RESolaufein","GLOBAL",1)~ THEN solaufein
SAY @5
++ @6 + solaufein_01
++ @7 + solaufein_01
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @8 + solaufein_00
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @8 + solaufein_00rom
++ @9 + solaufein_01
END

IF ~~ THEN solaufein_00
SAY @10
IF ~~ THEN + solaufein_01
END

IF ~~ THEN solaufein_00rom
SAY @11
IF ~~ THEN + solaufein_01
END

END //APPEND

CHAIN
IF ~~ THEN c#ajanJ solaufein_01
@12 DO ~SetGlobal("C#Ajantis_RESolaufein","GLOBAL",2)~
= @13
== c#ajanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @14 
== c#ajanJ IF ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @15
== c#ajanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2) GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ THEN @16
== c#ajanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2) Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN @17
EXIT




/* Pheares slave, Talak*/
APPEND c#ajanJ 

IF ~Global("C#AjantisRomanceActive","GLOBAL",1) Global("C#Ajantis_RETalak","GLOBAL",1)~ THEN talak_RA1
SAY @18
IF ~~ THEN + talak
END

IF ~Global("C#AjantisRomanceActive","GLOBAL",2) Global("C#Ajantis_RETalak","GLOBAL",1)~ THEN talak_RA2
SAY @19
IF ~~ THEN + talak
END

END //APPEND

CHAIN
IF ~~ THEN c#ajanJ talak
@20 DO ~SetGlobal("C#Ajantis_RETalak","GLOBAL",2)~
== c#ajanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @21
== c#ajanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @22
EXIT




/* Laran */

CHAIN
IF ~Global("C#Ajantis_RELaran","GLOBAL",1)~ THEN c#ajanJ laran
@23 DO ~SetGlobal("C#Ajantis_RELaran","GLOBAL",2)~
== c#ajanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @24
==  c#ajanJ @25
= @26
EXIT





/* Hendak  */

APPEND c#ajanJ

IF ~Global("C#Ajantis_REHendak","GLOBAL",1)~ THEN hendak
SAY @27 
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @28 + hendak_02
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @29 + hendak_02
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @30 + hendak_01
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @31 + hendak_01

+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @28 + hendak_06
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @29 + hendak_06
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @31 + hendak_05

++ @32 + hendak_04
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @33 + hendak_03
END

IF ~~ THEN hendak_01
SAY @34
IF ~~ THEN + hendak_02
END
END

CHAIN
IF ~~ THEN C#AjanJ hendak_02
@35
== C#AjanJ IF ~OR(2) Global("C#Ajantis_REBjornin","GLOBAL",2)
Global("C#Ajantis_RELaran","GLOBAL",2)~ THEN @36
== C#AjanJ @37 DO ~SetGlobal("C#Ajantis_REHendak","GLOBAL",2)~
EXIT

APPEND C#AjanJ

IF ~~ THEN hendak_03
SAY @38
IF ~~ THEN DO ~SetGlobal("C#Ajantis_REHendak","GLOBAL",2)~ EXIT
END

IF ~~ THEN hendak_04
SAY @39
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + hendak_02
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + hendak_06
END

IF ~~ THEN hendak_05
SAY @40
IF ~~ THEN + hendak_06
END

IF ~~ THEN hendak_06
SAY @41
IF ~~ THEN DO ~SetGlobal("C#Ajantis_REHendak","GLOBAL",2)~ EXIT
END

END //APPEND