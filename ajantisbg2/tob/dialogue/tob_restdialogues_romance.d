/* weitere Ideen: restdialogues_romance_130330.d bzw. Catlapha_nighttalks.txt */

APPEND c#aja25j


/* state to end romance */


IF ~~ THEN end_romance
SAY @0
= @1
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN end_romance_marriage_01
SAY @2
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) DestroyItem("C#AJSHLD") DestroyItem("C#AJSHL2") DestroyItem("C#AJSHL3") GivePartyAllEquipment() RestParty() EscapeArea()~ EXIT
END

/* 1. Rastdialog in ToB (unverheiratet) */


IF ~Global("C#Ajantis_RestdialoguesToB","GLOBAL",1) 
Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN firstnight
SAY @3
= @4 
++ @5 + firstnight_01
++ @6 + firstnight_03
++ @7 + firstnight_02
++ @8 + erster_end
END

IF ~~ THEN firstnight_01
SAY @9
IF ~~ THEN + firstnight_02
END

IF ~~ THEN firstnight_02
SAY @10
++ @11 + firstnight_05
++ @12 + firstnight_06
++ @8 + erster_end
END

IF ~~ THEN firstnight_03
SAY @13
IF ~~ THEN + firstnight_02
END

IF ~~ THEN firstnight_04
SAY @14
IF ~~ THEN DO ~SetGlobal("C#Ajantis_RestdialoguesToB","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ THEN firstnight_05
SAY @15
++ @12 + firstnight_06
++ @16 + erster_end
++ @8 + erster_end
END

IF ~~ THEN firstnight_06
SAY @17
= @18
IF ~~ THEN + erster_end
END


/* erster Rastdialog, marriage */


IF ~Global("C#Ajantis_RestdialoguesToB","GLOBAL",1) 
GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ THEN erster_01
SAY @19
= @20
++ @21 + erster_02
++ @22 + erster_end
+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @23 + end_romance
END

IF ~~ THEN erster_02
SAY @24
IF ~~ THEN + erster_end
END

IF ~~ THEN erster_end
SAY @25
= @26
IF ~OR(3)
	PartyHasItem("C#AJSHLD")
	PartyHasItem("C#AJSHL2")
	PartyHasItem("C#AJSHL3")~ + schild_01
IF ~!PartyHasItem("C#AJSHLD")
	!PartyHasItem("C#AJSHL2")
!PartyHasItem("C#AJSHL3")~ + firstnight_04
END

END //APPEND


CHAIN
IF ~~ THEN c#aja25j schild_01
@27
== c#aja25j IF ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ THEN @28
== c#aja25j IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN @29
== c#aja25j @30
== c#aja25j IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN @31
== c#aja25j @32
END
IF ~~ THEN + firstnight_04




APPEND c#aja25j


//
//
//

/* Rastdialog nach dem Dialog "vigilant" : "Nun erkenne ich die Kraft in Euch, und ich werde für Euch da sein!"

Triggered upon rest by: GlobalGT("C#AjToB_LT","GLOBAL",7) */

/* Ajantis believes himself to be a burden (now we play the game the other way around */

IF ~Global("C#Ajantis_RestdialoguesToB","GLOBAL",3)~ THEN nightmare1
SAY @33
++ @34 DO ~SetGlobal("C#Ajantis_RestdialoguesToB","GLOBAL",4)~ + nightmare1_01
++ @35 DO ~SetGlobal("C#Ajantis_RestdialoguesToB","GLOBAL",4)~ + nightmare1_01
++ @36 DO ~SetGlobal("C#Ajantis_RestdialoguesToB","GLOBAL",4)~ + nightmare1_01
END

IF ~~ THEN nightmare1_01
SAY @37
= @38
++ @39 + nightmare1_02
++ @40 + nightmare1_02
++ @41 + nightmare1_04
END

IF ~~ THEN nightmare1_02
SAY @42
++ @43 + nightmare1_04
++ @44 + nightmare1_04
++ @45 + nightmare1_03
++ @41 + nightmare1_04
END

IF ~~ THEN nightmare1_03
SAY @46
IF ~~ THEN + nightmare1_04
END

IF ~~ THEN nightmare1_04
SAY @47
= @48
= @49
IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN + nightmare1_05
IF ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ THEN + nightmare1_06
END

IF ~~ THEN nightmare1_05
SAY @50
IF ~~ THEN + nightmare1_06
END

IF ~~ THEN nightmare1_06
SAY @51
= @52
= @53
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @54 + nightmare1_07
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @55 + nightmare1_07
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @56 + nightmare1_07
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @57 + nightmare1_07

+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @58 + nightmare1_07_1
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @55 + nightmare1_07_1
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @56 + nightmare1_07_1
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @57 + nightmare1_07_1

++ @59 + nightmare1_08
END

IF ~~ THEN nightmare1_07
SAY @60
IF ~~ THEN + nightmare1_07_2
END

IF ~~ THEN nightmare1_07_1
SAY @61
IF ~~ THEN + nightmare1_07_2
END

IF ~~ THEN nightmare1_07_2
SAY @62
++ @63 + nightmare1_10
++ @64 + nightmare1_10
++ @65 + nightmare1_09
END

IF ~~ THEN nightmare1_08
SAY @66
++ @63 + nightmare1_10
++ @64 + nightmare1_10
++ @65 + nightmare1_09
++ @67 + nightmare1_10
END

IF ~~ THEN nightmare1_09
SAY @68
++ @69 + nightmare1_10
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @70 + end_romance
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @70 + end_romance_marriage
END

IF ~~ THEN end_romance_marriage
SAY @71
= @72
++ @69 + nightmare1_10
++ @73 DO ~SetGlobal("C#Ajantis_RestdialoguesToB","GLOBAL",4)~ + end_romance_marriage_01
END

IF ~~ THEN nightmare1_10
SAY @74
= @75
= @76
= @77
++ @78 + nightmare1_11
++ @79 + nightmare1_12
++ @80 + nightmare1_13
++ @81 + nightmare1_13
END

IF ~~ THEN nightmare1_11
SAY @82
IF ~~ THEN + nightmare1_13
END

IF ~~ THEN nightmare1_12
SAY @83
IF ~~ THEN + nightmare1_13
END

IF ~~ THEN nightmare1_13
SAY @84
IF ~~ THEN DO ~SetGlobal("C#Ajantis_RestdialoguesToB","GLOBAL",4) RestParty()~ EXIT
END

//
//
//
//

/* Rastdialog nach dem vorherigen Rastdialog  */

IF ~Global("C#Ajantis_RestdialoguesToB","GLOBAL",5)~ THEN vigilant_11
SAY @85
= @86
++ @87 + vigilant_13
++ @88 + vigilant_12
END

IF ~~ THEN vigilant_12
SAY @89 
IF ~~ THEN + vigilant_13
END

IF ~~ THEN vigilant_13
SAY @90
= @91
= @92
++ @93 + vigilant_17
++ @94 + vigilant_16
++ @95 + vigilant_15
++ @96 + vigilant_19
END

IF ~~ THEN vigilant_14
SAY @97
= @98
++ @99 + vigilant_21
++ @100 + vigilant_21
++ @101 + vigilant_20
++ @102 + vigilant_18
++ @103 + vigilant_22
++ @96 + vigilant_18
END

IF ~~ THEN vigilant_15
SAY @104
IF ~~ THEN + vigilant_14
END

IF ~~ THEN vigilant_16
SAY @105
IF ~~ THEN + vigilant_14
END

IF ~~ THEN vigilant_17
SAY @106
IF ~~ THEN + vigilant_14
END

IF ~~ THEN vigilant_18
SAY @107
= @108
IF ~~ THEN DO ~SetGlobal("C#Ajantis_RestdialoguesToB","GLOBAL",6) SetGlobal("C#Ajantis_PIDStrength","LOCALS",1) RestParty()~ EXIT
END

IF ~~ THEN vigilant_19
SAY @109
IF ~~ THEN + vigilant_14
END

IF ~~ THEN vigilant_20
SAY @110
IF ~~ THEN + vigilant_18
END

IF ~~ THEN vigilant_21
SAY @111
IF ~~ THEN + vigilant_18
END

IF ~~ THEN vigilant_22
SAY @112
IF ~~ THEN + vigilant_18
END





/* rest dialogues in the pocketplane */


IF ~Global("C#Ajantis_RestdialoguesToB_PP","GLOBAL",1)~ THEN rast1
SAY @113
= @114
++ @115 + rast1_01
++ @116 + rast1_04
++ @117 + rast1_02
END

IF ~~ THEN rast1_01
SAY @118
++ @119 + rast1_02
++ @120 + rast1_03
++ @121 + rast1_02
++ @122 + rast1_03
++ @123 + rast1_03
END

IF ~~ THEN rast1_02
SAY @124
IF ~~ THEN + rast1_03
END

IF ~~ THEN rast1_03
SAY @125
IF ~~ THEN DO ~SetGlobal("C#Ajantis_RestdialoguesToB_PP","GLOBAL",2) RestParty()~ EXIT 
END

IF ~~ THEN rast1_04
SAY @126
IF ~~ THEN + rast1_01
END




IF ~Global("C#Ajantis_RestdialoguesToB_PP","GLOBAL",3)~ THEN rast2
SAY @127
++ @128 + rast2_01
++ @129 + rast2_01
++ @130 + rast2_00
++ @131 + rast2_12
END

IF ~~ THEN rast2_00
SAY @132
IF ~~ THEN + rast2_01
END

IF ~~ THEN rast2_01
SAY @133
IF ~GlobalGT("C#AjToB_LT","GLOBAL",7)~ THEN + rast2_02
IF ~GlobalLT("C#AjToB_LT","GLOBAL",8)~ THEN + rast2_03
END

IF ~~ THEN rast2_02
SAY @134
IF ~~ THEN + rast2_03
END

IF ~~ THEN rast2_03
SAY @135
++ @136 + rast2_04
++ @137 + rast2_06
++ @138 + rast2_05
++ @139 + rast2_07
END

IF ~~ THEN rast2_04
SAY @140
IF ~~ THEN + rast2_07
END

IF ~~ THEN rast2_05
SAY @141
IF ~~ THEN + rast2_07
END

IF ~~ THEN rast2_06
SAY @142 
IF ~~ THEN + rast2_07
END

IF ~~ THEN rast2_07
SAY @143
++ @144 + rast2_10
++ @145 + rast2_09
++ @146 + rast2_09
++ @147 + rast2_13
++ @148 + rast2_10
++ @149 + rast2_08
++ @150 + rast2_12
END

IF ~~ THEN rast2_08
SAY @151
IF ~~ THEN + rast2_10
END

IF ~~ THEN rast2_09
SAY @152
IF ~~ THEN + rast2_10
END

IF ~~ THEN rast2_10
SAY @153
IF ~~ THEN + rast2_11
END

IF ~~ THEN rast2_11
SAY @154
IF ~~ THEN + rast2_12
END

IF ~~ THEN rast2_12
SAY @155
IF ~~ THEN DO ~setGlobal("C#Ajantis_RestdialoguesToB_PP","GLOBAL",4) RestParty()~ EXIT
END

IF ~~ THEN rast2_13
SAY @156
IF ~~ THEN + rast2_10
END


IF ~Global("C#Ajantis_RestdialoguesToB_PP","GLOBAL",5)~ THEN rast3
SAY @85
++ @157 + rast3_01
++ @158 + rast3_02
++ @159 + rast3_03
++ @160 + rast3_04
END

IF ~~ THEN rast3_01
SAY @161 
IF ~~ THEN + rast3_05
END

IF ~~ THEN rast3_02
SAY @162
IF ~~ THEN + rast3_05
END

IF ~~ THEN rast3_03
SAY @163
IF ~~ THEN + rast3_05
END

IF ~~ THEN rast3_04
SAY @164
IF ~~ THEN DO ~SetGlobal("C#Ajantis_RestdialoguesToB_PP","GLOBAL",6) RestParty()~ EXIT
END

IF ~~ THEN rast3_05
SAY @165
= @166
= @167
++ @168 + rast3_06
++ @169 + rast3_07
++ @170 + rast3_09
++ @160 + rast3_04
END

IF ~~ THEN rast3_06
SAY @171
IF ~~ THEN + rast3_08
END

IF ~~ THEN rast3_07
SAY @172
IF ~~ THEN + rast3_08
END

IF ~~ THEN rast3_08
SAY @173
IF ~~ THEN + rast3_04
END

IF ~~ THEN rast3_09
SAY @174
IF ~~ THEN + rast3_08
END





IF ~Global("C#Ajantis_RestdialoguesToB_PP","GLOBAL",7)~ THEN rast4
SAY @175
++ @176 + rast4_01
++ @177 + rast4_04
END

IF ~~ THEN rast4_01
SAY @178
++ @179 + rast4_03
++ @180 + rast4_02
++ @181 + rast4_04
END

IF ~~ THEN rast4_02
SAY @182
IF ~~ THEN + rast4_03
END

IF ~~ THEN rast4_03
SAY @183
IF ~~ THEN + rast4_04
END

IF ~~ THEN rast4_04
SAY @184
IF ~~ THEN DO ~SetGlobal("C#Ajantis_RestdialoguesToB_PP","GLOBAL",8) RestParty()~ EXIT
END




END //APPEND c#aja25j

