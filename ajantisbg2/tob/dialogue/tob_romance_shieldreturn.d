/* first: Ajantis sends away his shield */

CHAIN
IF ~Global("C#AjantisDisinheritage","GLOBAL",4)~ THEN c#aja25j schild_weg
@0 DO ~SetGlobal("C#AjantisDisinheritage","GLOBAL",5)~
== c#aja25j IF ~OR(3)
	HasItemEquiped("C#AJSHLD",Myself)
	HasItemEquiped("C#AJSHL2",Myself)
	HasItemEquiped("C#AJSHL3",Myself)~ THEN @1
== c#aja25j @2
EXIT










/* Schildquest, RA = 2 : Ajantis gets back his family shield */

/* Douglas finds Ajantis even here... */



CHAIN
IF ~OR(3)
	Global("C#AjantisDisinheritage","GLOBAL",9)
	Global("C#AjantisDisinheritage","GLOBAL",10)
	Global("C#AjantisDisinheritage","GLOBAL",11)~ THEN c#aja25j messenger_tob
@3 
== C#AJDOUG @4
== c#aja25j @5
== C#AJDOUG @6
== c#aja25j @7
== C#AJDOUG IF ~Global("C#AjantisDisinheritage","GLOBAL",9)~ THEN @8 DO ~GiveItemCreate("C#AJSHLD","C#Ajantis",0,0,0) EscapeArea()~
== C#AJDOUG IF ~Global("C#AjantisDisinheritage","GLOBAL",10)~ THEN @8 DO ~GiveItemCreate("C#AJSHL2","C#Ajantis",0,0,0) EscapeArea()~
== C#AJDOUG IF ~Global("C#AjantisDisinheritage","GLOBAL",11)~ THEN @8 DO ~GiveItemCreate("C#AJSHL3","C#Ajantis",0,0,0) EscapeArea()~
== c#aja25j @9
= @10
END
++ @11 DO ~SetGlobal("C#AjantisDisinheritage","GLOBAL",12)~ + messenger_tob_05
++ @12 DO ~SetGlobal("C#AjantisDisinheritage","GLOBAL",12)~ + messenger_tob_00
++ @13 DO ~SetGlobal("C#AjantisDisinheritage","GLOBAL",12)~ + messenger_tob_01
++ @14 DO ~SetGlobal("C#AjantisDisinheritage","GLOBAL",12)~ + messenger_tob_02

APPEND c#aja25j 

IF ~~ THEN messenger_tob_00
SAY @15
IF ~~ THEN + messenger_tob_01
END

IF ~~ THEN messenger_tob_00_1
SAY @16
IF ~~ THEN + messenger_tob_01
END

IF ~~ THEN messenger_tob_01
SAY @17
= @18
++ @19 + messenger_tob_03
++ @20 + messenger_tob_03
++ @21 + messenger_tob_03
++ @22 + messenger_tob_01_1
END

IF ~~ THEN messenger_tob_01_1
SAY @23
IF ~~ THEN + messenger_tob_03
END

IF ~~ THEN messenger_tob_02
SAY @24
IF ~~ THEN + messenger_tob_01
END

IF ~~ THEN messenger_tob_03
SAY @25
= @26
= @27
= @28
++ @29 + messenger_tob_06
++ @30 + messenger_tob_07
++ @31 + messenger_tob_04
++ @32 + messenger_tob_08
++ @33 + messenger_tob_10
++ @34 + messenger_tob_09
END

IF ~~ THEN messenger_tob_04
SAY @35 
IF ~~ THEN + messenger_tob_11
END

IF ~~ THEN messenger_tob_05
SAY @36
++ @12 + messenger_tob_00
++ @13 + messenger_tob_01
++ @14 + messenger_tob_02
END

IF ~~ THEN messenger_tob_06
SAY @37
IF ~~ THEN + messenger_tob_11
END

IF ~~ THEN messenger_tob_07
SAY @38
IF ~~ THEN + messenger_tob_11
END

IF ~~ THEN messenger_tob_08
SAY @39
IF ~~ THEN + messenger_tob_11
END

IF ~~ THEN messenger_tob_09
SAY @40
IF ~~ THEN + messenger_tob_11
END

IF ~~ THEN messenger_tob_10
SAY @41
IF ~~ THEN + messenger_tob_12
END

IF ~~ THEN messenger_tob_11
SAY @42
IF ~~ THEN + messenger_tob_12
END

IF ~~ THEN messenger_tob_12
SAY @43
= @44
++ @45 + messenger_tob_13
++ @46 + messenger_tob_14
++ @47 + messenger_tob_13
++ @48 + messenger_tob_15
END

IF ~~ THEN messenger_tob_13
SAY @49
= @50
++ @51 + messenger_tob_17
++ @52 + messenger_tob_19
++ @53 + messenger_tob_19 
++ @54 + messenger_tob_19
++ @55 + messenger_tob_18
++ @56 + messenger_tob_16
++ @57 + messenger_tob_19
END

IF ~~ THEN messenger_tob_14
SAY @58
IF ~~ THEN + messenger_tob_13
END

IF ~~ THEN messenger_tob_15
SAY @59
IF ~~ THEN + messenger_tob_13
END

IF ~~ THEN messenger_tob_16
SAY @60
= @61
IF ~~ THEN + messenger_tob_18
END

IF ~~ THEN messenger_tob_17
SAY @62
IF ~~ THEN + messenger_tob_18
END

IF ~~ THEN messenger_tob_18
SAY @63
= @64
++ @65 + messenger_tob_22
++ @66 + messenger_tob_22
++ @67 + messenger_tob_23
++ @68 + messenger_tob_24
++ @69 + messenger_tob_20
END

IF ~~ THEN messenger_tob_19
SAY @70
IF ~~ THEN + messenger_tob_18
END

IF ~~ THEN messenger_tob_20
SAY @71
IF ~~ THEN + messenger_tob_21
END

IF ~~ THEN messenger_tob_21
SAY @72
= @73
= @74
= @75
++ @76 + messenger_tob_25
++ @77 + messenger_tob_25
++ @78 + messenger_tob_25
END

IF ~~ THEN messenger_tob_22
SAY @79
IF ~~ THEN + messenger_tob_21
END

IF ~~ THEN messenger_tob_23
SAY @80
IF ~~ THEN + messenger_tob_21
END

IF ~~ THEN messenger_tob_24
SAY @81
IF ~~ THEN + messenger_tob_21
END

IF ~~ THEN messenger_tob_25
SAY @82
= @83
++ @84 + messenger_tob_27
++ @85 + messenger_tob_26
++ @86 + messenger_tob_28
++ @87 + messenger_tob_26
END

IF ~~ THEN messenger_tob_26
SAY @88
IF ~~ THEN SOLVED_JOURNAL @10047 EXIT
END

IF ~~ THEN messenger_tob_27
SAY @89
IF ~~ THEN + messenger_tob_26
END

IF ~~ THEN messenger_tob_28
SAY @90
IF ~~ THEN + messenger_tob_26
END

END
