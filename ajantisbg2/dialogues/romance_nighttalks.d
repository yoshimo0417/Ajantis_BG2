//Romance rest talks

//----------------------

//Global("C#AjanRomAdultContent","GLOBAL",1)

//Global("C#AjantisBeltIntimacy","GLOBAL",1): "erste intime Nacht"-Dialog findet nicht statt.

APPEND C#AjanJ

/* rest talk "remove drow belt" */
//Global("C#AjantisUDBelt","GLOBAL",16)

IF ~Global("C#AjantisUDBelt","GLOBAL",17) !AreaType(OUTDOOR) !AreaType(FOREST)~ THEN remove_dust_inn
SAY @0 
IF ~HasItem("DWDust","C#Ajantis") !Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~DestroyItem("DWDust") SetGlobal("C#AjantisUDBelt","GLOBAL",18)~ + remove_dust_00
IF ~!HasItem("DWDust","C#Ajantis") !Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",18)~ + remove_dust_00

IF ~HasItem("DWDust","C#Ajantis") Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~DestroyItem("DWDust") SetGlobal("C#AjantisUDBelt","GLOBAL",18)~ + remove_dust_thinking
IF ~!HasItem("DWDust","C#Ajantis") Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",18)~ + remove_dust_thinking
END

IF ~Global("C#AjantisUDBelt","GLOBAL",17) 
OR(2)
AreaType(OUTDOOR)
AreaType(FOREST)~ THEN remove_dust_outside
SAY @1 
IF ~HasItem("DWDust","C#Ajantis") !Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~DestroyItem("DWDust") SetGlobal("C#AjantisUDBelt","GLOBAL",18)~ + remove_dust_00
IF ~!HasItem("DWDust","C#Ajantis") !Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",18)~ + remove_dust_00

IF ~HasItem("DWDust","C#Ajantis") Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~DestroyItem("DWDust") SetGlobal("C#AjantisUDBelt","GLOBAL",18)~ + remove_dust_thinking
IF ~!HasItem("DWDust","C#Ajantis") Global("C#AjantisIsThinking","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",18)~ + remove_dust_thinking
END

IF ~~ THEN remove_dust_thinking
SAY @390
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN remove_dust_00
SAY @2
++ @3 + remove_dust_01
+ ~!AreaType(OUTDOOR) !AreaType(FOREST) !AreaType(DUNGEON)~ + @4 + remove_dust_04
+ ~OR(3)
AreaType(OUTDOOR)
AreaType(FOREST)
AreaType(DUNGEON)~ + @4 + remove_dust_19
++ @5 + remove_dust_03
++ @6 + remove_dust_13
END

IF ~~ THEN remove_dust_01
SAY @7
+ ~!AreaType(OUTDOOR) !AreaType(FOREST) !AreaType(DUNGEON)~ + @8 + remove_dust_02
+ ~!AreaType(OUTDOOR) !AreaType(FOREST) !AreaType(DUNGEON)~ + @9 + remove_dust_04
+ ~OR(3)
AreaType(OUTDOOR)
AreaType(FOREST)
AreaType(DUNGEON)~ + @10 + remove_dust_20
+ ~OR(3)
AreaType(OUTDOOR)
AreaType(FOREST)
AreaType(DUNGEON)~ + @9 + remove_dust_19
++ @11 + remove_dust_13
END

IF ~~ THEN remove_dust_02
SAY @12
IF ~~ THEN + remove_dust_05
END

IF ~~ THEN remove_dust_03
SAY @13
= @14
IF ~Global("C#AjanRomAdultContent","GLOBAL",0) Global("C#AjantisBeltIntimacy","GLOBAL",1)~ THEN + remove_dust_22

IF ~Global("C#AjanRomAdultContent","GLOBAL",0) Global("C#AjantisBeltIntimacy","GLOBAL",0)~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT

IF ~Global("C#AjanRomAdultContent","GLOBAL",1)~ THEN + remove_dust_15
END

IF ~~ THEN remove_dust_04
SAY @15
IF ~~ THEN + remove_dust_05
END

IF ~~ THEN remove_dust_05
SAY @16
= @17
IF ~Global("C#AjanRomAdultContent","GLOBAL",0)~ THEN + remove_dust_06
IF ~Global("C#AjanRomAdultContent","GLOBAL",1)~ THEN + remove_dust_07
END

IF ~~ THEN remove_dust_06
SAY @18
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN remove_dust_07
SAY @18
++ @19 + remove_dust_08
++ @20 + remove_dust_08
++ @21 + remove_dust_10
++ @22 DO ~SetGlobal("C#AjantisBleeches","LOCALS",1)~ + remove_dust_12
++ @23 + remove_dust_13
END

IF ~~ THEN remove_dust_08
SAY @24 
IF ~~ THEN + remove_dust_11
END

IF ~~ THEN remove_dust_09
SAY @25
IF ~Global("C#AjantisBeltIntimacy","GLOBAL",0)~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
IF ~Global("C#AjantisBeltIntimacy","GLOBAL",1)~ THEN + remove_dust_22
END

IF ~~ THEN remove_dust_09b
SAY @26
= @27
IF ~~ THEN DO ~SetGlobal("C#AjantisNoIntimacy","GLOBAL",0) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN remove_dust_10
SAY @28 
IF ~~ THEN + remove_dust_11
END

IF ~~ THEN remove_dust_11
SAY @29
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @30 + remove_dust_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @31 + remove_dust_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @32 + remove_dust_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @33 + remove_dust_14
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @34 + remove_dust_09b
++ @35 + remove_dust_13
END

IF ~~ THEN remove_dust_12
SAY @36
= @37
++ @38 + remove_dust_08
++ @39 + remove_dust_10
++ @40 + remove_dust_13
END

IF ~~ THEN remove_dust_13
SAY @41
= @42
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN remove_dust_14
SAY @43
IF ~~ THEN + remove_dust_17
END

IF ~~ THEN remove_dust_15
SAY @44
++ @45 + remove_dust_16
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @46 + remove_dust_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @47 + remove_dust_09b
++ @48 + remove_dust_18
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @49 + remove_dust_09
++ @50 + remove_dust_17
END

IF ~~ THEN remove_dust_16
SAY @51
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @46 + remove_dust_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @47 + remove_dust_09b
++ @48 + remove_dust_18
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @49 + remove_dust_09
++ @52 + remove_dust_17
END

IF ~~ THEN remove_dust_17
SAY @53
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN remove_dust_18
SAY @54
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @46 + remove_dust_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @47 + remove_dust_09b
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @49 + remove_dust_09
++ @52 + remove_dust_17
END

IF ~~ THEN remove_dust_19
SAY @55
IF ~~ THEN + remove_dust_21
END

IF ~~ THEN remove_dust_20
SAY @56
IF ~~ THEN + remove_dust_21
END

IF ~~ THEN remove_dust_21
SAY @57
= @58
IF ~Global("C#AjanRomAdultContent","GLOBAL",0)~ THEN + remove_dust_06
IF ~Global("C#AjanRomAdultContent","GLOBAL",1)~ THEN + remove_dust_07
END

IF ~~ THEN remove_dust_22
SAY @59
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

//wedding night

IF ~Global("C#AjantisWeddingNight","GLOBAL",1)~ THEN hochzeitsnacht
SAY @60 
IF ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisWeddingNight","GLOBAL",2)
SetGlobal("C#AjantisWeddingDialog","GLOBAL",4)~ + hochzeitsnacht_01
IF ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisWeddingNight","GLOBAL",2)
SetGlobal("C#AjantisWeddingDialog","GLOBAL",4)~ + hochzeitsnacht_04
END

IF ~~ THEN hochzeitsnacht_01
SAY @61
++ @62 DO ~SetGlobal("C#AjantisNoIntimacy","GLOBAL",0)~ + hochzeitsnacht_02
++ @63 DO ~SetGlobal("C#AjantisNoIntimacy","GLOBAL",0)~ + hochzeitsnacht_02
++ @64 + hochzeitsnacht_03
END

IF ~~ THEN hochzeitsnacht_02
SAY @65
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN hochzeitsnacht_03
SAY @66
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT 
END

IF ~~ THEN hochzeitsnacht_04
SAY @67
++ @62 + hochzeitsnacht_02
++ @63 + hochzeitsnacht_02
++ @68 + hochzeitsnacht_05
END

IF ~~ THEN hochzeitsnacht_05
SAY @69
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT 
END


//--------------------
/* Wird getriggert über LT "narbe". Die anderen Nighttalks müssen dann aussetzen!
Global("C#AjantisNarbeNighttalk","GLOBAL",1 bzw.2), auch für AreaType(DUNGEON) (DONE)*/


IF ~Global("C#AjantisNarbeNighttalk","GLOBAL",2)~ THEN narbe_nighttalk
SAY @70 
IF ~AreaType(DUNGEON)~ THEN DO ~SetGlobal("C#AjantisNarbeNighttalk","GLOBAL",3)~ + narbe_nighttalk_0a
IF ~!AreaType(DUNGEON)~ THEN DO ~SetGlobal("C#AjantisNarbeNighttalk","GLOBAL",3)~ + narbe_nighttalk_0b
END

IF ~~ THEN narbe_nighttalk_0a
SAY @72
IF ~~ THEN + narbe_nighttalk_00
END

IF ~~ THEN narbe_nighttalk_0b
SAY @71
IF ~~ THEN + narbe_nighttalk_00
END

IF ~~ THEN narbe_nighttalk_00
SAY @73
IF ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ THEN + narbe_nighttalk_02
IF ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ THEN + narbe_nighttalk_01
END

IF ~~ THEN narbe_nighttalk_01
SAY @74
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN narbe_nighttalk_02
SAY @75
= @76
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

//---------------------------

/* Rest-Talk, wenn HC verletzt ist (vor Hochzeit, oder danach, falls Bedingung noch nicht erfüllt) */

IF ~Global("C#AjantisNighttalkWunde","GLOBAL",1)~ THEN verletzt
SAY @77 
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @78 DO ~SetGlobal("C#AjantisNighttalkWunde","GLOBAL",2)~ + verletzt_01
++ @79 DO ~SetGlobal("C#AjantisNighttalkWunde","GLOBAL",2)~ + verletzt_03
++ @80 DO ~SetGlobal("C#AjantisNighttalkWunde","GLOBAL",2)~ + verletzt_05
++ @81 DO ~SetGlobal("C#AjantisNighttalkWunde","GLOBAL",2)~ + verletzt_04
END

IF ~~ THEN verletzt_01
SAY @82
++ @83 + verletzt_02
++ @84 + verletzt_02
++ @85 + verletzt_04
END

IF ~~ THEN verletzt_02
SAY @86
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN verletzt_03
SAY @87
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN verletzt_04
SAY @88
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN verletzt_05
SAY @89
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END


//------------------------------------------------------
//first night upon joining

IF ~Global("C#AjantisNightTalk","GLOBAL",2)~ THEN erstenacht
SAY @90 
= @91
++ @92 + erstenacht_01
++ @93 + erstenacht_01
++ @94 + erstenacht_10
++ @95 + erstenacht_09
END 

IF ~~ THEN erstenacht_01
SAY @96
IF ~~ THEN + erstenacht_07
END

IF ~~ THEN erstenacht_02
SAY @97
IF ~~ THEN + erstenacht_06
END

IF ~~ THEN erstenacht_03
SAY @98
IF ~~ THEN + erstenacht_05
END

IF ~~ THEN erstenacht_04
SAY @99 
++ @100 + erstenacht_03
++ @101 + erstenacht_05
++ @102 + erstenacht_06
END

IF ~~ THEN erstenacht_05
SAY @103
= @104
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN erstenacht_06
SAY @105
= @106
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN erstenacht_07
SAY @107
= @108
++ @109 + erstenacht_08
++ @110 + erstenacht_08
++ @111 + erstenacht_08
END

IF ~~ THEN erstenacht_08
SAY @112
= @113
= @114 
= @115
= @116
++ @100 + erstenacht_03
++ @117 + erstenacht_05
++ @118 + erstenacht_04
++ @101 + erstenacht_05
++ @119 DO ~SetGlobal("C#AjantisNoIntimacy","GLOBAL",1)~ + erstenacht_02
++ @120 + erstenacht_06
END

IF ~~ THEN erstenacht_09
SAY @121
IF ~~ THEN + erstenacht_07
END

IF ~~ THEN erstenacht_10
SAY @122
IF ~~ THEN + erstenacht_07
END

//--------------------

IF ~Global("C#AjantisNightTalk","GLOBAL",4)~ THEN nacht_2
SAY @123 
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @124 + nacht_2_06
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @125 + nacht_2_02
++ @126 + nacht_2_01
END

IF ~~ THEN nacht_2_01
SAY @127
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN nacht_2_02
SAY @128
+  ~Global("C#AjanRomAdultContent","GLOBAL",1)~  + @129 + nacht_2_05
+  ~Global("C#AjanRomAdultContent","GLOBAL",0)~  + @129 + nacht_2_05_02
++ @130 + nacht_2_03
++ @131 + nacht_2_04
END

IF ~~ THEN nacht_2_03
SAY @132
IF ~Global("C#AjanRomAdultContent","GLOBAL",1)~ THEN + nacht_2_03_1
IF ~Global("C#AjanRomAdultContent","GLOBAL",0)~ THEN + nacht_2_03_2
END

IF ~~ THEN nacht_2_03_1
SAY @133
IF ~~ THEN + nacht_2_03_2
END

IF ~~ THEN nacht_2_03_2
SAY @134
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN nacht_2_04
SAY @135
IF ~Global("C#AjanRomAdultContent","GLOBAL",1)~ THEN + nacht_2_04_1
IF ~Global("C#AjanRomAdultContent","GLOBAL",0)~ THEN + nacht_2_04_2
END

IF ~~ THEN nacht_2_04_1
SAY @136
IF ~~ THEN + nacht_2_04_2
END

IF ~~ THEN nacht_2_04_2
SAY @137
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN nacht_2_05
SAY @138
IF ~~ THEN + nacht_2_05_02
END

IF ~~ THEN nacht_2_05_02
SAY @137
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",5) RestParty()~ EXIT
END

IF ~~ THEN nacht_2_06
SAY @139
= @140
++ @141 + nacht_2_06a
++ @142 + nacht_2_06b
++ @143 + nacht_2_06c
END

IF ~~ THEN nacht_2_06a
SAY @144
++ @145 + nacht_2_07
++ @146 + nacht_2_07
++ @147 + nacht_2_01
END

IF ~~ THEN nacht_2_06b
SAY @148
++ @145 + nacht_2_07
++ @146 + nacht_2_07
++ @147 + nacht_2_01
END

IF ~~ THEN nacht_2_06c
SAY @149
++ @145 + nacht_2_07
++ @146 + nacht_2_07
++ @147 + nacht_2_01
END

IF ~~ THEN nacht_2_07
SAY @150
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",5) RestParty()~ EXIT
END


//-------------------------------------

IF ~Global("C#AjantisNightTalk","GLOBAL",6)~ THEN nacht_3
SAY @151 
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @152 + nacht_3_01
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @153 + nacht_3_01
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @154 + nacht_3_06
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @155 + nacht_3_10
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @156 + nacht_3_01
++ @157 + nacht_2_01
END

IF ~~ THEN nacht_3_01
SAY @158
++ @159 + nacht_3_02
++ @160 + nacht_3_04
++ @161 + nacht_3_02
++ @162 + nacht_3_03
END

IF ~~ THEN nacht_3_02
SAY @163
IF ~~ THEN + nacht_3_05
END

IF ~~ THEN nacht_3_03
SAY @164
IF ~~ THEN + nacht_3_05
END

IF ~~ THEN nacht_3_04
SAY @165
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",7) RestParty()~ EXIT
END

IF ~~ THEN nacht_3_05
SAY @166
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",7) RestParty()~ EXIT
END

IF ~~ THEN nacht_3_06
SAY @167
IF ~~ THEN + nacht_3_06a
END

IF ~~ THEN nacht_3_06a
SAY @168
++ @169 + nacht_3_07
++ @170 + nacht_3_08
++ @160 + nacht_3_04
++ @161 + nacht_3_09
++ @162 + nacht_3_09
END

IF ~~ THEN nacht_3_07
SAY @171
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",7) RestParty()~ EXIT
END

IF ~~ THEN nacht_3_08
SAY @172
++ @173 + nacht_3_07
++ @169 + nacht_3_07
++ @160 + nacht_3_04
++ @161 + nacht_3_09
++ @174 + nacht_3_11
END

IF ~~ THEN nacht_3_09
SAY @175
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",7) RestParty()~ EXIT
END

IF ~~ THEN nacht_3_10
SAY @176
IF ~~ THEN + nacht_3_06a
END

IF ~~ THEN nacht_3_11
SAY @177
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",7) RestParty()~ EXIT
END


//-------------------------------------

IF ~Global("C#AjantisNightTalk","GLOBAL",8)~ THEN nacht_4
SAY @178 
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @179 + nacht_4_01
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @179 + nacht_4_05
++ @180 + nacht_4_02
END

IF ~~ THEN nacht_4_01
SAY @181
++ @182 + nacht_4_03
++ @183 + nacht_4_03
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @184 + nacht_4_04
+ ~Global("C#AjanRomAdultContent","GLOBAL",0)~ + @184 + nacht_4_04_01
++ @185 + nacht_4_02
END

IF ~~ THEN nacht_4_02
SAY @186 
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",9) RestParty()~ EXIT
END

IF ~~ THEN nacht_4_03
SAY @187
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @188 + nacht_4_04
+ ~Global("C#AjanRomAdultContent","GLOBAL",0)~ + @188 + nacht_4_04_01
++ @185 + nacht_4_02
END

IF ~~ THEN nacht_4_04
SAY @189
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",9) RestParty()~ EXIT
END

IF ~~ THEN nacht_4_04_01
SAY @190
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",9) RestParty()~ EXIT
END

IF ~~ THEN nacht_4_05
SAY @191 
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",9) RestParty()~ EXIT
END


//------------------------------
/* "Ajantis ist müde" (Ajantis is tired) 
This is after the wedding. NoIntimacy = 0.
*/

IF ~Global("C#AjantisNightTalk","GLOBAL",10)~ THEN muede
SAY @192 
++ @193 + muede_01
++ @194 + muede_02
++ @195 + muede_06
++ @196 + muede_05
END

IF ~~ THEN muede_01
SAY @197
++ @198 + muede_02
++ @199 + muede_06
++ @196 + muede_05
END

IF ~~ THEN muede_02
SAY @200
++ @201 + muede_03
++ @202 + muede_06
++ @196 + muede_05
END

IF ~~ THEN muede_03
SAY @203
++ @204 + muede_04
++ @205 + muede_06
++ @206 + muede_05
END

IF ~~ THEN muede_04
SAY @207
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",11) RestParty()~ EXIT
END

IF ~~ THEN muede_05
SAY @208
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",11) RestParty()~ EXIT
END

IF ~~ THEN muede_06
SAY @209
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",11) RestParty()~ EXIT
END


//------------------------------

/* Rest-Talk, Ajantis' Stoppelbart */

IF ~Global("C#AjantisNightTalk","GLOBAL",12)~ THEN stoppelbart
SAY @210 
++ @211 + stoppelbart_01
++ @212 + stoppelbart_05
++ @213 + stoppelbart_06
END 

IF ~~ THEN stoppelbart_01
SAY @214
++ @215 + stoppelbart_04
++ @216 + stoppelbart_02
END

IF ~~ THEN stoppelbart_02
SAY @217
++ @218 + stoppelbart_03
++ @219 + stoppelbart_03
++ @220 + stoppelbart_15
++ @221 + stoppelbart_10
END

IF ~~ THEN stoppelbart_03
SAY @222
++ @223 + stoppelbart_12
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @224 + stoppelbart_13
+ ~Global("C#AjanRomAdultContent","GLOBAL",0)~ + @224 + stoppelbart_12
++ @225 + stoppelbart_08
++ @226 + stoppelbart_09
++ @220 + stoppelbart_15
++ @221 + stoppelbart_10
END

IF ~~ THEN stoppelbart_04
SAY @227
++ @218 + stoppelbart_03
++ @219 + stoppelbart_03
++ @220 + stoppelbart_15
++ @221 + stoppelbart_10
END

IF ~~ THEN stoppelbart_05
SAY @228
++ @229 + stoppelbart_01
++ @230 + stoppelbart_06
END

IF ~~ THEN stoppelbart_06
SAY @231
= @232
++ @233 + stoppelbart_07
++ @220 + stoppelbart_15
++ @234 + stoppelbart_17
++ @235 + stoppelbart_14
END

IF ~~ THEN stoppelbart_07
SAY @236
++ @237 + stoppelbart_12
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @224 + stoppelbart_13
+ ~Global("C#AjanRomAdultContent","GLOBAL",0)~ + @224 + stoppelbart_12
++ @225 + stoppelbart_08
++ @238 + stoppelbart_10
END

IF ~~ THEN stoppelbart_08
SAY @239
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @224 + stoppelbart_13
+ ~Global("C#AjanRomAdultContent","GLOBAL",0)~ + @224 + stoppelbart_12
++ @240 + stoppelbart_12
++ @241 + stoppelbart_09
++ @221 + stoppelbart_10
END

IF ~~ THEN stoppelbart_09
SAY @242
= @243
IF ~~ THEN DO ~SetGlobal("C#AjantisNightTalk","GLOBAL",13) RestParty()~ EXIT
END

IF ~~ THEN stoppelbart_10
SAY @244
++ @245 + stoppelbart_12
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @246 + stoppelbart_13
+ ~Global("C#AjanRomAdultContent","GLOBAL",0)~ + @246 + stoppelbart_12
++ @247 + stoppelbart_14
++ @234 + stoppelbart_17
++ @248 + stoppelbart_11
END

IF ~~ THEN stoppelbart_11
SAY @249
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN stoppelbart_12
SAY @250
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN stoppelbart_13
SAY @251
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT 
END

IF ~~ THEN stoppelbart_14
SAY @252
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT 
END

IF ~~ THEN stoppelbart_15
SAY @253
++ @254 + stoppelbart_16
++ @234 + stoppelbart_17
++ @235 + stoppelbart_14
END

IF ~~ THEN stoppelbart_16
SAY @236
++ @237 + stoppelbart_12
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @255 + stoppelbart_13
+ ~Global("C#AjanRomAdultContent","GLOBAL",0)~ + @255 + stoppelbart_12
++ @225 + stoppelbart_08
++ @256 + stoppelbart_14
END

IF ~~ THEN stoppelbart_17
SAY @257
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT 
END

//----------------------------------------
/* Rest-Talk HC nicht verletzt bzw. HPPercentGT(Player1,98), "blauer Fleck" 
*/

IF ~Global("C#AjantisNTBlauerFleck","GLOBAL",1)~ THEN blauer_fleck
SAY @258 
++ @259 DO ~SetGlobal("C#AjantisNTBlauerFleck","GLOBAL",2)~ + blauer_fleck_01
++ @260 DO ~SetGlobal("C#BlauerFleckKI","LOCALS",1) SetGlobal("C#AjantisNTBlauerFleck","GLOBAL",2)~ + blauer_fleck_13
++ @261 DO ~SetGlobal("C#AjantisNTBlauerFleck","GLOBAL",2)~ + blauer_fleck_16
END

IF ~~ THEN blauer_fleck_01
SAY @262
= @263
++ @264 + blauer_fleck_02
++ @265 + blauer_fleck_03
++ @266 + blauer_fleck_03
END

IF ~~ THEN blauer_fleck_02
SAY @267
++ @268 + blauer_fleck_05
++ @269 + blauer_fleck_04
++ @270 + blauer_fleck_07
++ @271 + blauer_fleck_11
END

IF ~~ THEN blauer_fleck_03
SAY @272
++ @273 + blauer_fleck_05
++ @269 + blauer_fleck_04
++ @270 + blauer_fleck_07
++ @271 + blauer_fleck_11
END

IF ~~ THEN blauer_fleck_04
SAY @274
+ ~Global("C#BlauerFleckKI","LOCALS",0)~ + @275 + blauer_fleck_08
+ ~Global("C#BlauerFleckKI","LOCALS",1)~ + @276 + blauer_fleck_14
++ @277 + blauer_fleck_06
++ @278 + blauer_fleck_06
END

IF ~~ THEN blauer_fleck_05
SAY @279
++ @280 + blauer_fleck_06
++ @270 + blauer_fleck_07
+ ~Global("C#BlauerFleckKI","LOCALS",0)~ + @281 + blauer_fleck_08
+ ~Global("C#BlauerFleckKI","LOCALS",1)~ + @282 + blauer_fleck_08
+ ~Global("C#BlauerFleckKI","LOCALS",1)~ + @283 + blauer_fleck_14
END

IF ~~ THEN blauer_fleck_06
SAY @284
+ ~Global("C#BlauerFleckKI","LOCALS",0)~ + @285 + blauer_fleck_08
+ ~Global("C#BlauerFleckKI","LOCALS",1)~ + @286 + blauer_fleck_08
+ ~Global("C#BlauerFleckKI","LOCALS",0)~ + @287 + blauer_fleck_09
+ ~Global("C#BlauerFleckKI","LOCALS",0)~ + @288 + blauer_fleck_10
+ ~Global("C#BlauerFleckKI","LOCALS",1)~ + @288 + blauer_fleck_15
+ ~Global("C#BlauerFleckKI","LOCALS",0)~ + @289 + blauer_fleck_12
+ ~Global("C#BlauerFleckKI","LOCALS",1)~ + @290 + blauer_fleck_12
END

IF ~~ THEN blauer_fleck_07
SAY @291
+ ~Global("C#BlauerFleckKI","LOCALS",0)~ + @275 + blauer_fleck_08
+ ~Global("C#BlauerFleckKI","LOCALS",1)~ + @276 + blauer_fleck_14
++ @277 + blauer_fleck_06
++ @292 + blauer_fleck_06
END

IF ~~ THEN blauer_fleck_08
SAY @293
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN blauer_fleck_09
SAY @294
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN blauer_fleck_10
SAY @295
++ @296 + blauer_fleck_08
++ @297 + blauer_fleck_08
++ @298 + blauer_fleck_12
END

IF ~~ THEN blauer_fleck_11
SAY @299
++ @300 + blauer_fleck_05
++ @301 + blauer_fleck_04
++ @302 + blauer_fleck_07
++ @303 + blauer_fleck_12
END

IF ~~ THEN blauer_fleck_12
SAY @304
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN blauer_fleck_13
SAY @305
= @263
++ @264 + blauer_fleck_02
++ @265 + blauer_fleck_03
++ @266 + blauer_fleck_03
END

IF ~~ THEN blauer_fleck_14
SAY @306
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN blauer_fleck_15
SAY @307
++ @308 + blauer_fleck_14
++ @309 + blauer_fleck_12
++ @310 + blauer_fleck_08
END

IF ~~ THEN blauer_fleck_16
SAY @311
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

//------------------hickey

IF ~Global("C#AjantisNightTalk","GLOBAL",14)~ THEN hickey_01
SAY @312 
= @313
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @314 + hickey_04
+ ~Global("C#AjanRomAdultContent","GLOBAL",0)~ + @314 + hickey_05
++ @315 + hickey_07
END

IF ~~ THEN hickey_02
SAY @316
++ @317 DO ~SetGlobal("C#AjantisHickeyPlainVisible","GLOBAL",2)~ + hickey_03
++ @318 DO ~SetGlobal("C#AjantisHickeyPlainVisible","GLOBAL",2)~ + hickey_03
++ @319 DO ~SetGlobal("C#AjantisHickeyPlainVisible","GLOBAL",1)~ + hickey_03
++ @320 + hickey_06
END

IF ~~ THEN hickey_03
SAY @321
IF ~~ THEN + hickey_06
END

IF ~~ THEN hickey_04
SAY @322
++ @323 + hickey_02
++ @324 + hickey_06
++ @325 + hickey_07
END

IF ~~ THEN hickey_05
SAY @326
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN hickey_06
SAY @327
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN hickey_07
SAY @328
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END


//wake up
IF ~Global("C#AjantisHickeyMorningTalk","GLOBAL",1)~ THEN hickey_morning
SAY @329 
= @330
++ @331 + hickey_morning_01
++ @332 + hickey_morning_01
++ @333 + hickey_morning_01
END

IF ~~ THEN hickey_morning_01
SAY @334
++ @335 + hickey_morning_02
++ @336 + hickey_morning_02
END

IF ~~ THEN hickey_morning_02
SAY @337
+ ~Global("C#AjantisHickeyPlainVisible","GLOBAL",1)~ + @338 + hickey_morning_03
+ ~Global("C#AjantisHickeyPlainVisible","GLOBAL",2)~ + @338 + hickey_morning_04
++ @339 + hickey_morning_05
END

IF ~~ THEN hickey_morning_03
SAY @340
= @341
IF ~~ THEN + hickey_morning_05
END

IF ~~ THEN hickey_morning_04
SAY @342
IF ~~ THEN + hickey_morning_05
END

IF ~~ THEN hickey_morning_05
SAY @343
IF ~~ THEN DO ~SetGlobal("C#AjantisHickeyMorningTalk","GLOBAL",2)~ EXIT
END

//---------------

IF ~Global("C#AjantisNightTalk","GLOBAL",16)~ THEN night_18
SAY @344 
++ @345 + night_18_06
++ @346 + night_18_07
++ @347 + night_18_01
END

IF ~~ THEN night_18_01
SAY @348 
++ @345 + night_18_06
++ @349 + night_18_07
++ @350 + night_18_02
END

IF ~~ THEN night_18_02
SAY @351
++ @345 + night_18_06
++ @349 + night_18_07
+ ~Global("C#AjanRomAdultContent","GLOBAL",1)~ + @352 + night_18_03
END

IF ~~ THEN night_18_03
SAY @353
++ @345 + night_18_06
++ @349 + night_18_07
++ @354 + night_18_04
END

IF ~~ THEN night_18_04
SAY @355
= @356
= @357
++ @358 + night_18_05
++ @359 + night_18_05
++ @360 + night_18_05
END

IF ~~ THEN night_18_05
SAY @361
++ @345 + night_18_06
++ @362 + night_18_07
END

IF ~~ THEN night_18_06
SAY @363
IF ~~ THEN + night_18_07
END

IF ~~ THEN night_18_07
SAY @364
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END


//------------------------
IF ~Global("C#AjantisNightTalk","GLOBAL",18)~ THEN night_20
SAY @365 
= @366
++ @367 + night_20_03
++ @368 + night_20_01
++ @369 + night_20_03
END

IF ~~ THEN night_20_01
SAY @370
= @371
++ @372 + night_20_02
++ @373 + night_20_02
++ @374 + night_20_02
++ @375 + night_20_03
END

IF ~~ THEN night_20_02
SAY @376
= @377
= @378
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN night_20_03
SAY @379
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END


//-------------------------

IF ~Global("C#AjantisNightTalk","GLOBAL",20)~ THEN night_22
SAY @380 
++ @381 + night_22_01
++ @369 + night_20_03
END

IF ~~ THEN night_22_01
SAY @382
+ ~TimeOfDay(NIGHT)~ + @383 + night_22_02
+ ~!TimeOfDay(NIGHT)~ + @384 + night_22_02
++ @385 + night_22_03
++ @386 + night_20_03
END

IF ~~ THEN night_22_02
SAY @387
IF ~~ THEN + night_22_04
END

IF ~~ THEN night_22_03
SAY @388
IF ~~ THEN + night_22_04
END

IF ~~ THEN night_22_04
SAY @389
IF ~~ THEN DO ~IncrementGlobal("C#AjantisNightTalk","GLOBAL",1) RestParty()~ EXIT
END


END
