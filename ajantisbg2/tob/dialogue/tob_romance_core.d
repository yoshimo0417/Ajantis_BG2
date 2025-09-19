
APPEND C#Aja25J

/* Erster Dialog: Area mit den Steinköpfen. 
Müsste ziemlich sofort triggern. RA = 2 */

IF ~Global("C#AjantisLT","GLOBAL",1)~ THEN erster
SAY @0
= @1
IF ~~ THEN + engaged_00
END

IF ~~ THEN engaged_00
SAY @2
= @3 
= @4
++ @5 + engaged_05
++ @6 + engaged_04
+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @7 + engaged_06
+ ~!Global("C#AjantisEngaged","GLOBAL",1)~ + @8 + engaged_01
+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @9 + engaged_03
END

IF ~~ THEN engaged_01
SAY @10
IF ~~ THEN + engaged_02
END

IF ~~ THEN engaged_02
SAY @11
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN engaged_03
SAY @12
IF ~~ THEN + engaged_02
END

IF ~~ THEN engaged_04
SAY @13
++ @14 + engaged_05
++ @15 + engaged_07
+ ~!Global("C#AjantisEngaged","GLOBAL",1)~ + @8 + engaged_01
+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @16 + engaged_03
END

IF ~~ THEN engaged_05
SAY @17
= @18
= @19
= @20
= @21
IF ~~ THEN DO ~SetGlobal("C#AjantisLT","GLOBAL",2)~ EXIT
END

IF ~~ THEN engaged_06
SAY @22
++ @14 + engaged_05
++ @16 + engaged_03
END

IF ~~ THEN engaged_07
SAY @23
++ @24 + engaged_05
++ @14 + engaged_05
+ ~!Global("C#AjantisEngaged","GLOBAL",1)~ + @8 + engaged_01
+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @16 + engaged_03
END







//
//
//
/* 2. core LT floater: schrecklicher Traum. gibt es überhaupt Hoffnung auf ein gutes Ende? 
*/

IF ~Global("C#AjToB_LT","GLOBAL",1)~ THEN dream1
SAY @25
= @26
++ @27 + dream1_01
++ @28 + dream1_02
++ @29 + dream1_03
END

IF ~~ THEN dream1_01
SAY @30
++ @31 + dream1_04
++ @28 + dream1_02
++ @29 + dream1_03
END

IF ~~ THEN dream1_02
SAY @32
IF ~~ THEN + dream1_04
END

IF ~~ THEN dream1_03
SAY @33
IF ~~ THEN + dream1_04
END

IF ~~ THEN dream1_04
SAY @34
++ @35 + dream1_07
++ @36 + dream1_07
++ @37 + dream1_05
++ @38 + dream1_05
END

IF ~~ THEN dream1_05
SAY @39
IF ~~ THEN + dream1_06
END

IF ~~ THEN dream1_06
SAY @40
IF ~~ THEN DO ~SetGlobal("C#AjToB_LT","GLOBAL",2)~ EXIT
END

IF ~~ THEN dream1_07
SAY @41
= @42
IF ~~ THEN + dream1_06
END



//
//
//
/* 4. Nach dem Dialog "dream1" : Pondering about the nightmare, 2. dialogue */

IF ~Global("C#AjToB_LT","GLOBAL",3)~ THEN dream2
SAY @43
= @44
= @45
++ @46 + dream_00_1
++ @47 + dream_01
++ @48 + dream_01
++ @49 + dream_01
END

IF ~~ THEN dream_00_1
SAY @50  
IF ~GlobalLT("PPEvilChoices","GLOBAL",2)~ THEN + dream_01
IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
GlobalLT("PPEvilChoices","GLOBAL",4)~ THEN + dream_02
IF ~GlobalGT("PPEvilChoices","GLOBAL",3)~ THEN + dream_00_2
END

IF ~~ THEN dream_00_2
SAY @168
IF ~~ THEN + dream_09_b
END

IF ~~ THEN dream_01
SAY @51
IF ~~ THEN + dream_02
END

END //APPEND

CHAIN
IF ~~ THEN C#Aja25J dream_02
@52
= @53
== C#Aja25J IF ~GlobalGT("PPEvilChoices","GLOBAL",1)~ THEN @169
== C#Aja25J @54 
END
++ @55 + dream_03
+ ~GlobalLT("PPEvilChoices","GLOBAL",2)~ + @56 + dream_04
+ ~GlobalGT("PPEvilChoices","GLOBAL",1)~ + @56 + dream_04_b
++ @57 + dream_05
++ @58 + dream_08
++ @59 + dream_06


APPEND C#Aja25J

IF ~~ THEN dream_03
SAY @60
= @61
++ @57 + dream_05
++ @56 + dream_04
++ @62 + dream_06
++ @59 + dream_06
++ @63 + dream_11
END

IF ~~ THEN dream_04
SAY @64
++ @65 + dream_10
++ @66 + dream_11
+ ~GlobalLT("PPEvilChoices","GLOBAL",2)~ + @67 + dream_05
+ ~GlobalGT("PPEvilChoices","GLOBAL",1)~ + @67 + dream_05_b
++ @57 + dream_05
++ @62 + dream_06
++ @59 + dream_06
++ @68 + dream_09
END

IF ~~ THEN dream_04_b
SAY @170
IF ~~ THEN + dream_04
END

IF ~~ THEN dream_05
SAY @69 
IF ~~ THEN + dream_06_1
END

IF ~~ THEN dream_05_b
SAY @171
IF ~~ THEN + dream_06_1
END

IF ~~ THEN dream_06
SAY @70
IF ~~ THEN + dream_06_1
END

IF ~~ THEN dream_06_1
SAY @71
IF ~~ THEN + dream_07
END

IF ~~ THEN dream_07
SAY @72
= @73
= @74
IF ~~ THEN DO ~SetGlobal("C#AjToB_LT","GLOBAL",4)~ EXIT
END

IF ~~ THEN dream_08
SAY @75
++ @76 + dream_05
++ @56 + dream_04
++ @62 + dream_06
++ @59 + dream_06
++ @68 + dream_09
END

IF ~~ THEN dream_09
SAY @77
IF ~~ THEN + dream_09_b
END

IF ~~ THEN dream_09_b
SAY @78
= @71
= @79
IF ~~ THEN DO ~SetGlobal("C#AjToB_LT","GLOBAL",4)~ EXIT
END

IF ~~ THEN dream_10
SAY @80
++ @67 + dream_05
++ @57 + dream_05
++ @66 + dream_11
++ @59 + dream_06
++ @68 + dream_09
END

IF ~~ THEN dream_11
SAY @81
++ @82 + dream_09
++ @83 + dream_12
++ @68 + dream_09
END

IF ~~ THEN dream_12
SAY @84
++ @67 + dream_05
++ @57 + dream_05
++ @62 + dream_06
++ @59 + dream_06
++ @68 + dream_09
END



//
//
//
/* 5. Nun erkenne ich die Kraft in Euch, und ich werde für Euch da sein! */

IF ~Global("C#AjToB_LT","GLOBAL",5) GlobalLT("PPEvilChoices","GLOBAL",4)~ THEN vigilant
SAY @85
++ @86 + vigilant_02
++ @87 + vigilant_01
++ @88 + vigilant_03
END

IF ~Global("C#AjToB_LT","GLOBAL",5) GlobalGT("PPEvilChoices","GLOBAL",3)~ THEN vigilant_evil
SAY @85
= @91
= @92
= @111
= @172
= @176
= @177
= @114
IF ~~ THEN + vigilant_10a
END

IF ~~ THEN vigilant_01
SAY @89
= @90
IF ~~ THEN + vigilant_02
END

IF ~~ THEN vigilant_02
SAY @91
= @92
++ @93 + vigilant_02_2
+ ~GlobalLT("PPEvilChoices","GLOBAL",2)~ + @94 + vigilant_02_1
+ ~GlobalGT("PPEvilChoices","GLOBAL",1)~ + @94 + vigilant_02_3
+ ~GlobalLT("PPEvilChoices","GLOBAL",2)~ + @95 + vigilant_04
+ ~GlobalGT("PPEvilChoices","GLOBAL",1)~ + @95 + vigilant_04_b
++ @96 + vigilant_05
END

IF ~~ THEN vigilant_02_1
SAY @97
IF ~~ THEN + vigilant_06
END

IF ~~ THEN vigilant_02_2
SAY @98
IF ~GlobalLT("PPEvilChoices","GLOBAL",2)~ THEN + vigilant_06
IF ~GlobalGT("PPEvilChoices","GLOBAL",1)~ THEN + vigilant_06_0
END

IF ~~ THEN vigilant_02_3
SAY @173
IF ~~ THEN + vigilant_06_0
END

IF ~~ THEN vigilant_03
SAY @99
++ @100 + vigilant_02
++ @101 + vigilant_04
++ @96 + vigilant_05
END

IF ~~ THEN vigilant_04
SAY @102
IF ~~ THEN + vigilant_06
END

IF ~~ THEN vigilant_04_b
SAY @174
IF ~~ THEN + vigilant_06_0
END

IF ~~ THEN vigilant_05
SAY @103
IF ~~ THEN + vigilant_08
END

IF ~~ THEN vigilant_06
SAY @104
++ @105 + vigilant_06_1
++ @106 + vigilant_06_1
++ @107 + vigilant_06_1
++ @108 + vigilant_06_1
++ @109 + vigilant_08
END

IF ~~ THEN vigilant_06_0
SAY @175
IF ~~ THEN + vigilant_06_1
END

IF ~~ THEN vigilant_06_1
SAY @110
IF ~~ THEN + vigilant_07
END

IF ~~ THEN vigilant_07
SAY @111
= @112
IF ~~ THEN + vigilant_08
END

IF ~~ THEN vigilant_08
SAY @113
= @114
++ @115 + vigilant_10
++ @116 + vigilant_09
++ @117 + vigilant_10a
END

IF ~~ THEN vigilant_09
SAY @118
++ @119 + vigilant_10a
++ @115 + vigilant_10
++ @117 + vigilant_10a
END

IF ~~ THEN vigilant_10
SAY @120
IF ~~ THEN + vigilant_10a
END

IF ~~ THEN vigilant_10a
SAY @121
IF ~~ THEN DO ~SetGlobal("C#AjToB_LT","GLOBAL",6)~ EXIT
END





//
//
//

/* Ajantis reflektiert sein und der HCs Leben im Einsprengsel
*/

IF ~Global("C#AjToB_LT","GLOBAL",7)~ THEN normalsterblicher
SAY @122
++ @123 + normalsterblicher_01
++ @124 + normalsterblicher_01
++ @125 + normalsterblicher_04
+ ~PartyGoldGT(100000)~ + @126 + normalsterblicher_02
+ ~PartyGoldLT(100001)~ + @127 + normalsterblicher_02
++ @128 + normalsterblicher_05
++ @129 + normalsterblicher_06
END

IF ~~ THEN normalsterblicher_01
SAY @130
IF ~~ THEN + normalsterblicher_04
END

IF ~~ THEN normalsterblicher_02
SAY @131
IF ~~ THEN + normalsterblicher_03
END

IF ~~ THEN normalsterblicher_03
SAY @132
++ @133 + normalsterblicher_09
++ @134 + normalsterblicher_09
++ @135 + normalsterblicher_08
++ @136 + normalsterblicher_10
END

IF ~~ THEN normalsterblicher_04
SAY @137
IF ~~ THEN + normalsterblicher_03
END

IF ~~ THEN normalsterblicher_05
SAY @138
++ @123 + normalsterblicher_01
++ @124 + normalsterblicher_01
++ @125 + normalsterblicher_04
++ @140 + normalsterblicher_06
END

IF ~~ THEN normalsterblicher_06
SAY @141
= @137
IF ~~ THEN + normalsterblicher_07
END

IF ~~ THEN normalsterblicher_07
SAY @143
IF ~~ THEN DO ~SetGlobal("C#AjToB_LT","GLOBAL",8)~ EXIT 
END

IF ~~ THEN normalsterblicher_08
SAY @144
IF ~~ THEN + normalsterblicher_09
END

IF ~~ THEN normalsterblicher_09
SAY @145
IF ~~ THEN + normalsterblicher_07
END

IF ~~ THEN normalsterblicher_10
SAY @146
IF ~~ THEN + normalsterblicher_09
END





//
//
//
/* 8. end is approaching - will I lose you no matter what?

(currently not triggered other than elapsed time. If necessary, triggered adding for after 3d lecture of Solar and Balthasar's death [or all Bhaal children dead for WoP]) */


IF ~Global("C#AjToB_LT","GLOBAL",9)~ THEN entscheidung
SAY @147
= @148
++ @149 + entscheidung_04
++ @150 + entscheidung_01
++ @151 + entscheidung_02
++ @152 + entscheidung_03
++ @153 + entscheidung_03
++ @154 + entscheidung_04
++ @155 + entscheidung_06
END

IF ~~ THEN entscheidung_01
SAY @156
IF ~~ THEN + entscheidung_02
END

IF ~~ THEN entscheidung_02
SAY @157
IF ~~ THEN + entscheidung_03
END

IF ~~ THEN entscheidung_03
SAY @158
IF ~~ THEN + entscheidung_05
END

IF ~~ THEN entscheidung_04
SAY @159
IF ~~ THEN + entscheidung_05
END

IF ~~ THEN entscheidung_05
SAY @160
= @161
= @162
= @163
= @164
IF ~~ THEN DO ~SetGlobal("C#AjToB_LT","GLOBAL",10)~ EXIT
END

IF ~~ THEN entscheidung_06
SAY @165
++ @166 + entscheidung_07
++ @150 + entscheidung_01
++ @151 + entscheidung_02
++ @152 + entscheidung_03
++ @153 + entscheidung_03
++ @154 + entscheidung_04
END

IF ~~ THEN entscheidung_07
SAY @167
++ @150 + entscheidung_01
++ @151 + entscheidung_02
++ @152 + entscheidung_03
++ @153 + entscheidung_03
++ @154 + entscheidung_04
END

//
//
//
/* time- trigered */

IF ~Global("C#AjToB_LT","GLOBAL",11)~ THEN thron
SAY @142
= @139
IF ~~ THEN DO ~SetGlobal("C#AjToB_LT","GLOBAL",12)~ EXIT
END

END //APPEND
