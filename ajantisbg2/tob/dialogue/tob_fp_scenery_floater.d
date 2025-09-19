


APPEND c#aja25j



//
//
//
/* Teleport in die Höllenenklave
( + FR Talk) */

/* 2. Dialogue: In Pocketplane, before the first lecture. The PC met Solar and Sarevok, now she has to fight in one of the pits.  */

IF ~Global("C#AjToB_Talk","GLOBAL",1)~ THEN first_lecture
SAY @0
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~
SetGlobal("C#AjToB_Talk","GLOBAL",2)~ + first_lecture_0rom
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~
SetGlobal("C#AjToB_Talk","GLOBAL",2)~ + first_lecture_00
END

IF ~~ THEN first_lecture_0rom
SAY @1
= @2
= @3
++ @4 + first_lecture_0rom_01
++ @5 + first_lecture_0rom_01
++ @6 + first_lecture_0rom_02
++ @7 + first_lecture_06
END

IF ~~ THEN first_lecture_0rom_01
SAY @8
IF ~~ THEN + first_lecture_0rom_02
END

IF ~~ THEN first_lecture_0rom_02
SAY @9
++ @10 + first_lecture_01
++ @11 + first_lecture_08
++ @12 + first_lecture_0rom_03
++ @13 + first_lecture_07
++ @14 + first_lecture_05
++ @15 + first_lecture_03
++ @7 + first_lecture_06
END

IF ~~ THEN first_lecture_0rom_03
SAY @16
IF ~~ THEN + first_lecture_04
END

IF ~~ THEN first_lecture_01
SAY @17
++ @18 + first_lecture_02
++ @19 + first_lecture_03
++ @7 + first_lecture_06
END

IF ~~ THEN first_lecture_02
SAY @20
++ @21 + first_lecture_08
++ @13 + first_lecture_07
++ @14 + first_lecture_05
++ @15 + first_lecture_03
++ @7 + first_lecture_06
END

IF ~~ THEN first_lecture_03
SAY @22
IF ~~ THEN + first_lecture_04
END

IF ~~ THEN first_lecture_04
SAY @23
= @24
++ @25 + first_lecture_04_1
++ @26 + first_lecture_04_2
++ @27 + first_lecture_04_1
++ @28 + first_lecture_04_3
END

IF ~~ THEN first_lecture_04_1
SAY @29
IF ~~ THEN + first_lecture_04_4
END

IF ~~ THEN first_lecture_04_2
SAY @30
IF ~~ THEN + first_lecture_04_4
END

IF ~~ THEN first_lecture_04_3
SAY @31
IF ~~ THEN + first_lecture_04_4
END

IF ~~ THEN first_lecture_04_4
SAY @32
= @33
= @34
= @35
IF ~~ THEN EXIT
END

IF ~~ THEN first_lecture_05
SAY @36
IF ~~ THEN + first_lecture_04
END

IF ~~ THEN first_lecture_06
SAY @37
IF ~~ THEN + first_lecture_04
END

IF ~~ THEN first_lecture_07
SAY @38
IF ~~ THEN + first_lecture_04
END

IF ~~ THEN first_lecture_08
SAY @39
IF ~~ THEN + first_lecture_04
END

/* friendship path */

IF ~~ THEN first_lecture_00
SAY @40
= @41
++ @13 + first_lecture_001
++ @42 + first_lecture_001
++ @15 + first_lecture_001
END

IF ~~ THEN first_lecture_001
SAY @43
++ @44 + first_lecture_002
++ @45 + first_lecture_002
++ @46 + first_lecture_002
++ @47 + first_lecture_003
END

IF ~~ THEN first_lecture_002
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN first_lecture_003
SAY @49
IF ~~ THEN + first_lecture_002
END





/* in Saradush taverne. (I can feel their dispair) (LT + FR Talk) */

IF ~Global("C#AjToB_SaradushTavern","GLOBAL",1)~ THEN saradush_taverne
SAY @50
++ @51 + saradush_taverne_01
++ @52 + saradush_taverne_01
++ @53 + saradush_taverne_03
+ ~GlobalGT("C#ToB_SaradushTunnel","GLOBAL",0)~ + @54 + saradush_taverne_07
++ @55 + saradush_taverne_05
++ @56 + saradush_taverne_02
END

END //APPEND c#aja25j

CHAIN
IF ~~ THEN c#aja25j saradush_taverne_01
@57
= @58
== KELDO25J IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @59
== c#aja25j @60
END
++ @61 + saradush_taverne_04
++ @62 + saradush_taverne_02
++ @56 + saradush_taverne_02


APPEND c#aja25j

IF ~~ THEN saradush_taverne_02
SAY @63
IF ~~ THEN + saradush_taverne_06
END

IF ~~ THEN saradush_taverne_03
SAY @64
IF ~~ THEN + saradush_taverne_01
END

END //APPEND c#aja25j

CHAIN
IF ~~ THEN c#aja25j saradush_taverne_04
@65 
== BSarev25 IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)~ THEN @66
== c#aja25j IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)~ THEN @67
== BSarev25 IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)~ THEN @68
== c#aja25j @69
END
IF ~~ THEN + saradush_taverne_06

APPEND c#aja25j

IF ~~ THEN saradush_taverne_05
SAY @70
IF ~~ THEN + saradush_taverne_01
END

IF ~~ THEN saradush_taverne_06
SAY @71
IF ~~ THEN DO ~SetGlobal("C#AjToB_SaradushTavern","GLOBAL",2)~ EXIT
END

IF ~~ THEN saradush_taverne_07
SAY @72
IF ~~ THEN + saradush_taverne_01
END


/* HC's mother (after first lecture of Solar; after second PP Challenge) (FR Talk) */

IF ~Global("C#AjToB_SolarTalk","GLOBAL",1)~ THEN HC_mutter
SAY @73
= @74
++ @75 + HC_mutter_00
++ @76 + HC_mutter_00
+ ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ + @77 + HC_mutter_17
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @77 + HC_mutter_19
END

IF ~~ THEN HC_mutter_00
SAY @78
++ @79 + HC_mutter_05
++ @80 + HC_mutter_05
++ @81 + HC_mutter_01
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_01
SAY @82
++ @83 + HC_mutter_02
++ @84 + HC_mutter_03
++ @85 + HC_mutter_04
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_02
SAY @86
++ @84 + HC_mutter_03
++ @85 + HC_mutter_04
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_03
SAY @87
++ @83 + HC_mutter_02
++ @85 + HC_mutter_04
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_04
SAY @88
++ @89 + HC_mutter_10
++ @90 + HC_mutter_11
++ @91 + HC_mutter_12
++ @92 + HC_mutter_14
++ @93 + HC_mutter_13
++ @94 + HC_mutter_06
++ @95 + HC_mutter_18
++ @96 + HC_mutter_17
END

IF ~~ THEN HC_mutter_05
SAY @97
++ @81 + HC_mutter_01
++ @83 + HC_mutter_02
++ @84 + HC_mutter_03
++ @85 + HC_mutter_04
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_06
SAY @98
++ @99 + HC_mutter_08
++ @100 + HC_mutter_09 
++ @101 + HC_mutter_07
++ @102 + HC_mutter_16
++ @95 + HC_mutter_18
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_07
SAY @103
IF ~Global("C#_HCmutter09","LOCALS",0)~ THEN DO ~SetGlobal("C#_HCmutter09","LOCALS",1)~ + HC_mutter_09
IF ~Global("C#_HCmutter09","LOCALS",1)~ THEN + HC_mutter_15
END

IF ~~ THEN HC_mutter_08
SAY @104
IF ~Global("C#_HCmutter09","LOCALS",0)~ THEN DO ~SetGlobal("C#_HCmutter09","LOCALS",1)~ + HC_mutter_09
IF ~Global("C#_HCmutter09","LOCALS",1)~ THEN + HC_mutter_15
END

END //APPEND c#aja25j

CHAIN
IF ~~ THEN c#aja25j HC_mutter_09
@105 DO ~SetGlobal("C#_HCmutter09","LOCALS",1)~
== BSarev25 IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)~ THEN @106
== c#aja25j IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)~ THEN @107
== BSarev25 IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @108
== BSarev25 IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @109
== c#aja25j IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)~ THEN @110
END
IF ~~ THEN + HC_mutter_15


APPEND c#aja25j

IF ~~ THEN HC_mutter_10
SAY @111
++ @112 + HC_mutter_04
++ @113 + HC_mutter_04
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_11
SAY @114 
= @115
++ @116 + HC_mutter_04
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_12
SAY @117
IF ~~ THEN + HC_mutter_04
END

IF ~~ THEN HC_mutter_13
SAY @118
IF ~~ THEN + HC_mutter_15
END

IF ~~ THEN HC_mutter_14
SAY @119
IF ~~ THEN + HC_mutter_15
END

IF ~~ THEN HC_mutter_15
SAY @120
++ @121 + HC_mutter_04
++ @77 + HC_mutter_17
END

IF ~~ THEN HC_mutter_16
SAY @122
IF ~Global("C#_HCmutter09","LOCALS",0)~ THEN DO ~SetGlobal("C#_HCmutter09","LOCALS",1)~ + HC_mutter_09
IF ~Global("C#_HCmutter09","LOCALS",1)~ THEN + HC_mutter_15
END

IF ~~ THEN HC_mutter_17
SAY @123
IF ~~ THEN DO ~SetGlobal("C#AjToB_SolarTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN HC_mutter_18
SAY @124
IF ~~ THEN DO ~SetGlobal("C#AjToB_SolarTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN HC_mutter_19
SAY @125
++ @126 + HC_mutter_00
++ @76 + HC_mutter_00
++ @127 + HC_mutter_20
END

IF ~~ THEN HC_mutter_20
SAY @128
IF ~~ THEN DO ~SetGlobal("C#AjToB_SolarTalk","GLOBAL",2)~ EXIT
END



//
//
//

/* after incident at oasis (Questpack considered) (FR Talk) 

GlobalGT("TethyrBattleStart","GLOBAL",0)
Dead("amtgen01") bzw. !Allegiance("amtgen01",ENEMY)

Variablen des Questpacks /Script): !Dead("amtgen01") 
!Allegiance("amtgen01",ENEMY)
!See("amtgen01") 
*/

IF ~Global("C#AjToB_Oasis","GLOBAL",2)~ THEN oase
SAY @129
IF ~Dead("amtgen01")~ THEN DO ~SetGlobal("C#AjToB_Oasis","GLOBAL",3)~ + oase_01
IF ~!Dead("amtgen01")~ THEN DO ~SetGlobal("C#AjToB_Oasis","GLOBAL",3)~ + oase_14
END

IF ~~ THEN oase_01
SAY @130
++ @131 + oase_05
++ @132 + oase_03
++ @133 + oase_05
++ @134 + oase_03
END

IF ~~ THEN oase_02
SAY @135
++ @136 + oase_07
++ @137 + oase_05a
++ @138 + oase_10
END

IF ~~ THEN oase_03
SAY @139
IF ~~ THEN + oase_02
END

IF ~~ THEN oase_04
SAY @140
IF ~~ THEN EXIT
END

IF ~~ THEN oase_05
SAY @141
IF ~~ THEN + oase_03
END

IF ~~ THEN oase_05a
SAY @142
IF ~~ THEN + oase_07
END

IF ~~ THEN oase_06
SAY @143
IF ~Global("C#AjantisOrderWatch","LOCALS",1)~ THEN + oase_06_1
IF ~!Global("C#AjantisOrderWatch","LOCALS",1)~ THEN + oase_06_2
END

IF ~~ THEN oase_06_1
SAY @144
= @145
IF ~~ THEN + oase_06_2
END

IF ~~ THEN oase_06_2
SAY @146
IF ~GlobalLT("PPEvilChoices","GLOBAL",4)~ THEN + oase_06_2_a
IF ~GlobalGT("PPEvilChoices","GLOBAL",3)~ THEN + oase_06_2_b
END

IF ~~ THEN oase_06_2_a
SAY @147
+ ~Dead("amtgen01")~ + @148 + oase_04
+ ~!Dead("amtgen01")~ + @148 + oase_15
++ @149 + oase_12
+ ~Dead("amtgen01")~ + @150 + oase_08
+ ~Dead("amtgen01")~ + @151 + oase_09
++ @152 + oase_11
+ ~Dead("amtgen01")~ + @138 + oase_10
+ ~!Dead("amtgen01")~ + @153 + oase_15
END

IF ~~ THEN oase_06_2_b
SAY @181
+ ~Dead("amtgen01")~ + @148 + oase_04
+ ~!Dead("amtgen01")~ + @148 + oase_15
++ @149 + oase_12
+ ~Dead("amtgen01")~ + @150 + oase_08
+ ~Dead("amtgen01")~ + @151 + oase_09
++ @152 + oase_11
+ ~Dead("amtgen01")~ + @138 + oase_10
+ ~!Dead("amtgen01")~ + @153 + oase_15
END 

IF ~~ THEN oase_07
SAY @154
IF ~~ THEN + oase_06
END

IF ~~ THEN oase_08
SAY @155
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + oase_13
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + oase_04
END

IF ~~ THEN oase_09
SAY @156
IF ~~ THEN + oase_12
END

IF ~~ THEN oase_10
SAY @157
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + oase_13
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + oase_04
END

IF ~~ THEN oase_11
SAY @158
IF ~Dead("amtgen01")~ THEN + oase_08
IF ~!Dead("amtgen01")~ THEN + oase_15
END

IF ~~ THEN oase_12
SAY @159
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + oase_13
IF ~Dead("amtgen01") !Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + oase_04
IF ~!Dead("amtgen01") !Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + oase_15
END

IF ~~ THEN oase_13
SAY @160
IF ~Dead("amtgen01")~ THEN + oase_04
IF ~!Dead("amtgen01")~ THEN + oase_15
END

IF ~~ THEN oase_14
SAY @161
IF ~~ THEN + oase_06
END

IF ~~ THEN oase_15
SAY @162
IF ~~ THEN EXIT
END





//
//
//
/* Melissans Verrat. (FR Talk) (How smart Melissan planned this. We were used against our will.) */

IF ~Global("C#AjToB_Melissan","GLOBAL",1)~ THEN melissan
SAY @163
++ @164 + melissan_03
++ @165 + melissan_01
++ @166 + melissan_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ + @167 + melissan_02
END

IF ~~ THEN melissan_01
SAY @168
IF ~~ THEN + melissan_03
END

IF ~~ THEN melissan_02
SAY @169
IF ~~ THEN DO ~SetGlobal("C#AjToB_Melissan","GLOBAL",2)~ EXIT
END

IF ~~ THEN melissan_03
SAY @170
= @171
= @172
++ @173 + melissan_04
++ @174 + melissan_04
++ @175 + melissan_05
++ @176 + melissan_06
END

IF ~~ THEN melissan_04
SAY @177
IF ~~ THEN DO ~SetGlobal("C#AjToB_Melissan","GLOBAL",2)~ EXIT
END

IF ~~ THEN melissan_05
SAY @178
IF ~~ THEN + melissan_04
END

IF ~~ THEN melissan_06
SAY @179
IF ~~ THEN + melissan_04
END


/* girdle of gender bender */

IF ~Global("C#Ajantis_GenderGirdle","GLOBAL",1)~ THEN genderbender
SAY @180
IF ~~ THEN DO ~SetGlobal("C#Ajantis_GenderGirdle","GLOBAL",2)~ EXIT
END



END //APPEND c#aja25j