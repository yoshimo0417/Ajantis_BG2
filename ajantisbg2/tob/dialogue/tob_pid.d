/* romance: kiss him, hug him, hold his hand, rub his shoulders */

/* ------------ PID ---------------*/


APPEND c#aja25j


IF ~!IsGabber(Player1)~ THEN pid_not_PC
SAY @1131
IF ~~ THEN EXIT
END




/* friendship */

IF ~IsGabber(Player1)
!ActuallyInCombat()
OR(2)
	Global("C#AjantisRomanceActive","GLOBAL",3) 
	Global("C#AjantisRomanceActive","GLOBAL",0)
//!AreaCheck("AR2900")
~ THEN pid_friendship
SAY @984

+ ~OR(7)
	Global("C#Ajantis_PIDEvilPP","LOCALS",1)
	Global("C#AjantisToB_Suldanesselar","LOCALS",1)
	Global("C#Ajantis_PIDFamily","LOCALS",0)
	Global("C#AjToB_TalkPID","LOCALS",1)
	Global("C#AjToB_TalkPID","LOCALS",3)
	Global("C#AjToB_SolarTalkPID","LOCALS",1)
	Global("C#AjToB_SolarTalkPID","LOCALS",3)
	Global("C#AjToB_SolarTalkPID","LOCALS",5)
	Global("C#AjToB_SolarTalkPID","LOCALS",7)~ + @17 + talk_friendship_tob




//How are you? (tired / poisend / ...)
//@18

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_01
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_02
+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_03
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_04

+ ~RandomNum(4,1)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_01
+ ~RandomNum(4,2)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_02
+ ~RandomNum(4,3)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_03
+ ~RandomNum(4,4)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_04 

//Helm
+ ~RandomNum(4,1) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm1
+ ~RandomNum(4,2) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm2
+ ~RandomNum(4,3) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm3
+ ~RandomNum(4,4) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm4
+ ~OR(2)
Global("JoinHelm","GLOBAL",1)
Kit(Player1,GODHELM)
!Global("Stripped","GLOBAL",2)
!Global("Talonwar","GLOBAL",5)~ + @26 + C#TellMeAboutHelm5

//Order of the Radiant Heart
+ ~RandomNum(3,1) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1
+ ~RandomNum(3,2) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart2
+ ~RandomNum(3,3) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart3


//Waterdeep
+ ~RandomNum(3,1)~ + @28 + Waterdeep1
+ ~RandomNum(3,2)~ + @28 + Waterdeep2
+ ~RandomNum(3,3)~ + @28 + Waterdeep3


++ @1136 EXIT
END


IF ~~ THEN talk_friendship_tob
SAY @510
+ ~GlobalGT("C#Ajantis_EvilPPChoices","GLOBAL",1)
Global("C#Ajantis_PIDEvilPP","LOCALS",1)~ + @1385 DO ~SetGlobal("C#Ajantis_PIDEvilPP","LOCALS",2)~ + evil_PP_choice_2_01
+ ~GlobalGT("C#Ajantis_EvilPPChoices","GLOBAL",1)
Global("C#Ajantis_PIDEvilPP","LOCALS",1)~ + @1386 DO ~SetGlobal("C#Ajantis_PIDEvilPP","LOCALS",2)~ + evil_PP_choice_2_03
+ ~!Global("C#Ajantis_PIDEvilPP","LOCALS",3) 
GlobalGT("C#Ajantis_EvilPPChoices","GLOBAL",3)~ + @1387 + evil_PP_choice_2_05
+ ~!Global("C#Ajantis_PIDEvilPP","LOCALS",3) 
GlobalGT("C#Ajantis_EvilPPChoices","GLOBAL",3)~ + @1404 + evil_PP_choice_2_05

+ ~Global("C#AjantisToB_Suldanesselar","LOCALS",1)~ + @1132 DO ~SetGlobal("C#AjantisToB_Suldanesselar","LOCALS",2)~ + elfen_pc

//Ajantis' Family
+ ~Global("C#Ajantis_PIDFamily","LOCALS",0)~ + @1133 DO ~setGlobal("C#Ajantis_PIDFamily","LOCALS",1)~ + family_FP

//
+ ~Global("C#AjToB_TalkPID","LOCALS",1)~ + @1134 DO ~SetGlobal("C#AjToB_TalkPID","LOCALS",2)~ + saradush_fallen_00

+ ~Global("C#AjToB_TalkPID","LOCALS",3)~ + @1134 DO ~SetGlobal("C#AjToB_TalkPID","LOCALS",4)~ + unschuld

+ ~Global("C#AjToB_SolarTalkPID","LOCALS",1)~ + @1135 DO ~SetGlobal("C#AjToB_SolarTalkPID","LOCALS",2)~ + destiny

+ ~Global("C#AjToB_SolarTalkPID","LOCALS",3)~ + @1135 DO ~SetGlobal("C#AjToB_SolarTalkPID","LOCALS",4)~ + abazigal

+ ~Global("C#AjToB_SolarTalkPID","LOCALS",5)~ + @1135 DO ~SetGlobal("C#AjToB_SolarTalkPID","LOCALS",6)~ + machtbesessen

+ ~Global("C#AjToB_SolarTalkPID","LOCALS",7)~ + @1135 DO ~SetGlobal("C#AjToB_SolarTalkPID","LOCALS",8)~ + cyric

++ @1136 + pid_friendship
END



/* SoA - PIDs */

IF ~~ THEN Waterdeep1
SAY @134
IF ~~ THEN EXIT
END

IF ~~ THEN Waterdeep2
SAY @135
IF ~~ THEN EXIT
END

IF ~~ THEN Waterdeep3
SAY @136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#RadiantHeart1
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#RadiantHeart2
SAY @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#RadiantHeart3
SAY @139
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN C#TellMeAboutHelm1
SAY @151
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm2
SAY @152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm3
SAY @153
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm4
SAY @154
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm5
SAY @155
IF ~RandomNum(4,1)~ THEN + C#TellMeAboutHelm1
IF ~RandomNum(4,2)~ THEN + C#TellMeAboutHelm2
IF ~RandomNum(4,3)~ THEN + C#TellMeAboutHelm3
IF ~RandomNum(4,4)~ THEN + C#TellMeAboutHelm4
END


IF ~~ THEN wounded_70
SAY @90 
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50
SAY @91
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_poisoned
SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_poisoned
SAY @93
IF ~~ THEN EXIT
END

IF ~~ THEN state_spell
SAY @94
IF ~~ THEN EXIT
END

//day
IF ~~ THEN tired_01_flirt
SAY @95
IF ~~ THEN EXIT
END

IF ~~ THEN tired_01
SAY @96
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02_flirt
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02
SAY @98
IF ~~ THEN EXIT
END

//night
IF ~~ THEN tired_03_flirt
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN tired_03
SAY @100
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04_flirt
SAY @101
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04
SAY @102
IF ~~ THEN EXIT
END

IF ~~ THEN how_01_flirt
SAY @103
IF ~~ THEN EXIT
END

IF ~~ THEN how_01
SAY @104
IF ~~ THEN EXIT
END

IF ~~ THEN how_02
SAY @106
IF ~~ THEN EXIT
END

IF ~~ THEN how_03
SAY @108
IF ~~ THEN EXIT
END

IF ~~ THEN how_04
SAY @109
IF ~~ THEN EXIT
END




IF ~~ THEN family_FP
SAY @1137
IF ~~ THEN + talk_friendship_tob
END




/* 7. You are different than them (only comment)) 

Dead("Abazigal")
	Dead("Sendai")
ReputationGT(Player1,15)

*/
IF ~~ THEN machtbesessen
SAY @1138
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjToB_Abazigal","GLOBAL",4)~ + machtbesessen_01
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjToB_Abazigal","GLOBAL",4)~ + machtbesessen_02
END

IF ~~ THEN machtbesessen_01
SAY @1139
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_romance_tob
END

IF ~~ THEN machtbesessen_02
SAY @1140
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_romance_tob
END



/* Solar lecture: after fighting against the "doubt" 
Global("BeginChallenge3","GLOBAL",3)*/

IF ~~ THEN unschuld
SAY @1141
++ @843 + unschuld_02
++ @1142 + unschuld_01
++ @1143 + unschuld_02
END

IF ~~ THEN unschuld_01
SAY @272
IF ~~ THEN + unschuld_02
END

IF ~~ THEN unschuld_02
SAY @1144
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_romance_tob 
END





/* after 2nd lection of Solar (You play a special role. It is you who decides destiny, not destiny over you) (FR Talk) */

IF ~~ THEN destiny
SAY @1145
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + destiny_01
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + destiny_02
END

IF ~~ THEN destiny_01
SAY @1146
IF ~~ THEN + destiny_02
END

IF ~~ THEN destiny_02
SAY @1147
= @1148
++ @1149 + destiny_03
++ @1150 + destiny_03
++ @1151 + destiny_04
++ @1152 + destiny_03
++ @1153 + destiny_03
END

IF ~~ THEN destiny_03
SAY @1154
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + destiny_05
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
END

IF ~~ THEN destiny_04
SAY @1155
IF ~~ THEN + destiny_03
END

IF ~~ THEN destiny_05
SAY @1156
IF ~~ THEN + talk_romance_tob
END


IF ~~ THEN saradush_fallen_00
SAY @1157
++ @1158 + saradush_fallen_03
++ @1159 + saradush_fallen_10
++ @1160 + saradush_fallen_02
+ ~GlobalGT("B!LaranCourt","GLOBAL",0)~ + @1161 + saradush_fallen_04
+ ~Global("C#ToB_SaradushTunnel","GLOBAL",2)~ + @1162 + saradush_fallen_05
++ @1163 + saradush_fallen_09
END 

IF ~~ THEN saradush_fallen_01
SAY @1164
++ @1165 + saradush_fallen_06
++ @1166 + saradush_fallen_06
++ @1167 + saradush_fallen_07
++ @1168 + saradush_fallen_06
END

IF ~~ THEN saradush_fallen_02
SAY @1169
IF ~~ THEN + saradush_fallen_03
END

IF ~~ THEN saradush_fallen_03
SAY @1170
IF ~~ THEN + saradush_fallen_01
END

IF ~~ THEN saradush_fallen_04
SAY @1171
= @1172
IF ~~ THEN + saradush_fallen_03
END

IF ~~ THEN saradush_fallen_05
SAY @1173
IF ~~ THEN + saradush_fallen_03
END

IF ~~ THEN saradush_fallen_06
SAY @1174
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + saradush_fallen_11
END

IF ~~ THEN saradush_fallen_07
SAY @1175
IF ~~ THEN + saradush_fallen_06
END

IF ~~ THEN saradush_fallen_08
SAY @1176
IF ~~ THEN + saradush_fallen_06
END

IF ~~ THEN saradush_fallen_09
SAY @1177
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + saradush_fallen_11
END

IF ~~ THEN saradush_fallen_10
SAY @1178
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + saradush_fallen_11
END

IF ~~ THEN saradush_fallen_11
SAY @1179
IF ~~ THEN + talk_romance_tob
END













IF ~~ THEN elfen_pc
SAY @1180
= @1181
++ @1182 + elfen_pc_00
++ @1183 + elfen_pc_00
++ @1184 + elfen_pc_00
++ @1185 + elfen_pc_00
++ @1186 + elfen_pc_00
++ @1187 + pc_is_elf_02
END

IF ~~ THEN elfen_pc_00
SAY @1188
IF ~!Race(Player1,ELF)
!Race(Player1,HALF_ELF)
!Race(Player1,HALFORC)
!Race(Player1,DWARF)~ THEN + talk_friendship_tob
IF ~OR(4)
Race(Player1,ELF)
Race(Player1,HALF_ELF)
Race(Player1,HALFORC)
Race(Player1,DWARF)~ THEN + elf_or_notelf
END


IF ~~ THEN elf_or_notelf
SAY @1189
IF ~OR(2)
Race(Player1,ELF)
Race(Player1,HALF_ELF)~ THEN + pc_is_elf
IF ~OR(2)
Race(Player1,HALFORC)
Race(Player1,DWARF)~ THEN + pc_is_halforc
END

IF ~~ THEN pc_is_elf
SAY @1190
++ @1191 + pc_is_elf_01
++ @1192 + pc_is_elf_03
++ @1193 + pc_is_elf_05
++ @1194 + pc_is_elf_02
END 

IF ~~ THEN pc_is_elf_01
SAY @1195
++ @1196 + pc_is_elf_06
++ @1197 + elfen_pc_01
++ @1198 + elfen_pc_05
++ @1194 + pc_is_elf_02
END

IF ~~ THEN pc_is_elf_02
SAY @1199
IF ~~ THEN + talk_friendship_tob
END

IF ~~ THEN pc_is_elf_03
SAY @1200
++ @1201 + pc_is_elf_04
++ @1202 + pc_is_elf_04
++ @1203 + pc_is_elf_01
++ @1194 + pc_is_elf_02
END 

IF ~~ THEN pc_is_elf_04
SAY @1204
++ @1205 + pc_is_elf_01
++ @1206 + pc_is_elf_02
END

IF ~~ THEN pc_is_elf_05
SAY @1207
IF ~~ THEN + pc_is_elf_01
END

IF ~~ THEN pc_is_elf_06
SAY @1208
IF ~~ THEN + elfen_pc_02
END


IF ~~ THEN elfen_pc_01
SAY @1209
IF ~~ THEN + elfen_pc_02
END


IF ~~ THEN elfen_pc_02
SAY @1210 
++ @1211 + elfen_pc_03
+ ~Race(Player1,ELF)~ + @1212 +  elfen_pc_06
+ ~Race(Player1,HALF_ELF)~ + @1213 +  elfen_pc_06
++ @1214 + elfen_pc_03
+ ~Race(Player1,HALF_ELF)~ + @1215 + elfen_pc_06
+ ~Race(Player1,ELF)~ + @1216 + elfen_pc_06
++ @1217 + elfen_pc_03
++ @1218 + pc_is_elf_02
END

IF ~~ THEN elfen_pc_03
SAY @1219
IF ~Global("C#Ajantis_RomanceActive","GLOBAL",2)~ THEN + elfen_pc_07
IF ~!Global("C#Ajantis_RomanceActive","GLOBAL",2)~ THEN + pc_is_elf_enddialogue
END

IF ~~ THEN elfen_pc_04
SAY @1220
IF ~~ THEN + talk_friendship_tob
END

IF ~~ THEN elfen_pc_05
SAY @1221
++ @1222 + pc_is_elf_06
++ @1223 + pc_is_elf_06
++ @1224 + elfen_pc_01
++ @1225 + pc_is_elf_02
++ @1226 + pc_is_elf_02
END

IF ~~ THEN elfen_pc_06
SAY @1227
IF ~!Global("C#Ajantis_RomanceActive","GLOBAL",2)~ THEN EXIT
IF ~Global("C#Ajantis_RomanceActive","GLOBAL",2)~ THEN + elfen_pc_07
END

IF ~~ THEN elfen_pc_07
SAY @1228
IF ~~ THEN + elfen_pc_04
END

IF ~~ THEN pc_is_halforc
SAY @1229
++ @1230 + pc_is_halforc_01
++ @1231 + pc_is_halforc_01
++ @1232 + pc_is_halforc_02
++ @1233 + pc_is_elf_02
END

IF ~~ THEN pc_is_halforc_01
SAY @1234
IF ~Global("C#Ajantis_RomanceActive","GLOBAL",2)~ THEN + elfen_pc_04
IF ~!Global("C#Ajantis_RomanceActive","GLOBAL",2)~ THEN + pc_is_elf_enddialogue
END

IF ~~ THEN pc_is_halforc_02
SAY @1235
IF ~Global("C#Ajantis_RomanceActive","GLOBAL",2)~ THEN + elfen_pc_04
IF ~!Global("C#Ajantis_RomanceActive","GLOBAL",2)~ THEN + pc_is_elf_enddialogue
END

IF ~~ THEN pc_is_elf_enddialogue
SAY @1236
IF ~~ THEN + talk_friendship_tob
END






/* After defeating Abazigal: This was by far the most "impressive" spawn of your godly "father" */

IF ~~ THEN abazigal
SAY @1237
++ @1238 + abazigal_05
++ @1239 + abazigal_01
++ @1240 + abazigal_01
+ ~Dead("ysgp01")~ + @1241 + abazigal_01
++ @1242 + abazigal_01
++ @1243 + abazigal_03
++ @1244 + abazigal_04
END

IF ~~ THEN abazigal_01
SAY @1245
= @1246
++ @1247 + abazigal_06
++ @1248 + abazigal_07
++ @1244 + abazigal_04
END

IF ~~ THEN abazigal_03
SAY @1249
IF ~~ THEN + abazigal_01
END

IF ~~ THEN abazigal_04
SAY @1250
IF ~~ THEN + abazigal_08
END

IF ~~ THEN abazigal_05
SAY @1251
IF ~~ THEN + abazigal_01
END

IF ~~ THEN abazigal_06
SAY @1252
IF ~~ THEN + abazigal_07
END

IF ~~ THEN abazigal_07
SAY @1253
IF ~~ THEN + abazigal_08
END

IF ~~ THEN abazigal_08
SAY @1254
= @1255
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_romance_tob
END









/* romance */


/* 4 evil choices in PP: Ajantis doesn't want to talk any more! */

IF ~IsGabber(Player1)
!ActuallyInCombat()
Global("C#AjantisRomanceActive","GLOBAL",2) 
//!AreaCheck("AR2906")
GlobalGT("C#Ajantis_EvilPPChoices","GLOBAL",3)
~ THEN PID_rom_engaged_evilchoices
SAY @1388

+ ~!Global("C#Ajantis_PIDEvilPP","LOCALS",3)~ + @1389 + evil_PP_choice_2_06
+ ~!Global("C#Ajantis_PIDEvilPP","LOCALS",3)~ + @1387 + evil_PP_choice_2_05
+ ~!Global("C#Ajantis_PIDEvilPP","LOCALS",3)~ + @1404 + evil_PP_choice_2_05

IF ~Global("C#Ajantis_PIDEvilPP","LOCALS",3)~ THEN EXIT
END







IF ~IsGabber(Player1)
!ActuallyInCombat()
Global("C#AjantisRomanceActive","GLOBAL",2) 
//!AreaCheck("AR2906")
GlobalLT("C#Ajantis_EvilPPChoices","GLOBAL",4)
~ THEN PID_rom_engaged
SAY @1256

+ ~OR(15)
	Global("C#Ajantis_PIDEvilPP","LOCALS",1)
	Global("C#Ajantis_PIDDoWY","LOCALS",0)
	Global("C#Ajantis_PIDMaybe","LOCALS",1)
	Global("C#Ajantis_PIDShield","LOCALS",1)
	Global("C#AjanToB_FamilyBriefe","LOCALS",0)
	Global("C#AjToB_TalkPID","LOCALS",1)
	Global("C#AjToB_TalkPID","LOCALS",3)
	Global("C#AjToB_TalkPID","LOCALS",5)
	Global("C#AjToB_SolarTalkPID","LOCALS",1)
	Global("C#AjToB_SolarTalkPID","LOCALS",3)
	Global("C#AjToB_SolarTalkPID","LOCALS",5)
	Global("C#AjToB_SolarTalkPID","LOCALS",7)
	Global("c#Ajantis_weddingPID","LOCALS",1)
	Global("c#Ajantis_weddingjoke","LOCALS",1)
	Global("C#AjanToB_MissFamily","LOCALS",1)~ + @17 + talk_romance_tob


+ ~RandomNum(4,1) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1265 + strength_1
+ ~RandomNum(4,2) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1265 + strength_2
+ ~RandomNum(4,3) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1265 + strength_3
+ ~RandomNum(4,4) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1265 + strength_4


+ ~RandomNum(6,1)~ + @1266 + love_you_01
+ ~RandomNum(6,2)~ + @1266 + love_you_02
+ ~RandomNum(6,3)~ + @1266 + love_you_03
+ ~RandomNum(6,4)~ + @1266 + love_you_04
+ ~RandomNum(6,5)~ + @1266 + love_you_05
+ ~RandomNum(6,6)~ + @1266 + love_you_06



+ ~Global("C#Ajantis_PIDEase","LOCALS",0) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1374 DO ~SetGlobal("C#Ajantis_PIDEase","LOCALS",1)~ + ease_tension_00

+ ~RandomNum(7,1) Global("C#Ajantis_PIDEase","LOCALS",1) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1374 + ease_tension_01
+ ~RandomNum(7,2) Global("C#Ajantis_PIDEase","LOCALS",1) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1374 + ease_tension_02
+ ~RandomNum(7,3) Global("C#Ajantis_PIDEase","LOCALS",1) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1374 + ease_tension_03
+ ~RandomNum(7,4) Global("C#Ajantis_PIDEase","LOCALS",1) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1374 + ease_tension_04
+ ~RandomNum(7,5) Global("C#Ajantis_PIDEase","LOCALS",1) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1374 + ease_tension_05
+ ~RandomNum(7,6) Global("C#Ajantis_PIDEase","LOCALS",1) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1374 + ease_tension_06
+ ~RandomNum(7,7) Global("C#Ajantis_PIDEase","LOCALS",1) Global("C#Ajantis_PIDStrength","LOCALS",1)~ + @1374 + ease_tension_07


+ ~RandomNum(6,1)~ + @1267 + alright
+ ~RandomNum(6,2)~ + @1267 + alright_01
+ ~RandomNum(6,3)~ + @1267 + alright_02
+ ~RandomNum(6,4)~ + @1267 + alright_03
+ ~RandomNum(6,5)~ + @1267 + alright_04
+ ~RandomNum(6,6)~ + @1267 + alright_05

+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + @1128 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",0)~ + as_you_wish

+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",0)
GlobalGT("C#AjantisBeschuetzer","GLOBAL",0)~ + @1129 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + as_you_wish


++ @1136 EXIT

END


IF ~~ THEN talk_romance_tob
SAY @510

/* Global("C#Ajantis_PIDEvilPP","LOCALS",1) */
+ ~Global("C#Ajantis_PIDEvilPP","LOCALS",1)~ + @1385 DO ~SetGlobal("C#Ajantis_PIDEvilPP","LOCALS",2)~ + evil_PP_choice_2_01
+ ~Global("C#Ajantis_PIDEvilPP","LOCALS",1)~ + @1386 DO ~SetGlobal("C#Ajantis_PIDEvilPP","LOCALS",2)~ + evil_PP_choice_2_03


/* Global("C#Ajantis_PIDDoWY","LOCALS",0) */
+ ~Global("C#Ajantis_PIDDoWY","LOCALS",0)~ + @1257 DO ~SetGlobal("C#Ajantis_PIDDoWY","LOCALS",1)~ + do_without_you


/* Global("C#Ajantis_PIDMaybe","LOCALS",1) */
+ ~Global("C#Ajantis_PIDMaybe","LOCALS",1)~ + @1258 DO ~SetGlobal("C#Ajantis_PIDMaybe","LOCALS",2)~ + maybe


/* Global("C#Ajantis_PIDShield","LOCALS",1) */
+ ~OR(3)
	PartyHasItem("C#AJSHLD")
	PartyHasItem("C#AJSHL2")
	PartyHasItem("C#AJSHL3")
GlobalGT("C#Ajantis_RestdialoguesToB","GLOBAL",1) Global("C#Ajantis_PIDShield","LOCALS",1)~ + @1259 DO ~SetGlobal("C#Ajantis_PIDShield","LOCALS",2)~ + familienschild_tob
+ ~!PartyHasItem("C#AJSHLD")
	!PartyHasItem("C#AJSHL2")
!PartyHasItem("C#AJSHL3")
GlobalGT("C#Ajantis_RestdialoguesToB","GLOBAL",1) Global("C#Ajantis_PIDShield","LOCALS",1)~ + @1411 DO ~SetGlobal("C#Ajantis_PIDShield","LOCALS",2)~ + familienschild_tob_2

/* Global("C#AjanToB_FamilyBriefe","LOCALS",0) */
+ ~Global("C#AjanToB_FamilyBriefe","LOCALS",0)~ + @1264 DO ~SetGlobal("C#AjanToB_FamilyBriefe","LOCALS",1)~ + briefe

+ ~Global("C#AjToB_TalkPID","LOCALS",1)~ + @1134 DO ~SetGlobal("C#AjToB_TalkPID","LOCALS",2)~ + saradush_fallen_00
+ ~Global("C#AjToB_TalkPID","LOCALS",3)~ + @1134 DO ~SetGlobal("C#AjToB_TalkPID","LOCALS",4)~ + unschuld
+ ~Global("C#AjToB_TalkPID","LOCALS",5)~ + @1134 DO ~SetGlobal("C#AjToB_TalkPID","LOCALS",6)~ + wounded_dialogue

+ ~Global("C#AjToB_SolarTalkPID","LOCALS",1)~ + @1135 DO ~SetGlobal("C#AjToB_SolarTalkPID","LOCALS",2)~ + destiny
+ ~Global("C#AjToB_SolarTalkPID","LOCALS",3)~ + @1135 DO ~SetGlobal("C#AjToB_SolarTalkPID","LOCALS",4)~ + abazigal
+ ~Global("C#AjToB_SolarTalkPID","LOCALS",5)~ + @1135 DO ~SetGlobal("C#AjToB_SolarTalkPID","LOCALS",6)~ + machtbesessen
+ ~Global("C#AjToB_SolarTalkPID","LOCALS",7)~ + @1135 DO ~SetGlobal("C#AjToB_SolarTalkPID","LOCALS",8)~ + cyric


+ ~Global("c#Ajantis_weddingPID","LOCALS",1)~ + @1260 DO ~SetGlobal("c#Ajantis_weddingPID","LOCALS",2)~ + marriage_03
+ ~Global("c#Ajantis_weddingPID","LOCALS",1)~ + @1262 DO ~SetGlobal("c#Ajantis_weddingPID","LOCALS",2)~ + marriage_01

+ ~Global("c#Ajantis_weddingjoke","LOCALS",1)~ + @1261 DO ~SetGlobal("c#Ajantis_weddingjoke","LOCALS",2)~ + marriage_02


+ ~Global("C#AjanToB_MissFamily","LOCALS",1)~ + @1263 DO ~SetGlobal("C#AjanToB_MissFamily","LOCALS",2)~ + miss_family


++ @1136 + PID_rom_engaged
END




/* evil PP choices */

IF ~~ THEN evil_PP_choice_2_01
SAY @1390
IF ~~ THEN + evil_PP_choice_2_02
END

IF ~~ THEN evil_PP_choice_2_02
SAY @1391
IF ~GlobalLT("PPEvilChoices","GLOBAL",4)~ THEN + evil_PP_choice_2_04
IF ~GlobalGT("PPEvilChoices","GLOBAL",3)~ THEN + evil_PP_choice_2_05
END

IF ~~ THEN evil_PP_choice_2_03
SAY @1392
IF ~~ THEN + evil_PP_choice_2_02
END

IF ~~ THEN evil_PP_choice_2_04
SAY @1393
++ @1394 + evil_PP_choice_2_04_a
++ @1395 + evil_PP_choice_2_04_a
++ @1396 + evil_PP_choice_2_04_b
END

IF ~~ THEN evil_PP_choice_2_04_a
SAY @1397
IF ~~ THEN + evil_PP_choice_2_04_c
END

IF ~~ THEN evil_PP_choice_2_04_b
SAY @1398
IF ~~ THEN + evil_PP_choice_2_04_c
END

IF ~~ THEN evil_PP_choice_2_04_c
SAY @1399
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_romance_tob
END

IF ~~ THEN evil_PP_choice_2_05
SAY @1400
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @1405 + evil_PP_choice_2_08
++ @1408 + evil_PP_choice_2_07
++ @1409 + evil_PP_choice_2_06
END

IF ~~ THEN evil_PP_choice_2_06
SAY @1401
IF ~~ THEN + evil_PP_choice_2_07
END 

IF ~~ THEN evil_PP_choice_2_07
SAY @1402
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + evil_PP_choice_2_09
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + evil_PP_choice_2_10
END

IF ~~ THEN evil_PP_choice_2_08
SAY @1406
= @1407
IF ~~ THEN + evil_PP_choice_2_09
END

IF ~~ THEN evil_PP_choice_2_09
SAY @1410
IF ~~ THEN + evil_PP_choice_2_10
END

IF ~~ THEN evil_PP_choice_2_10
SAY @1403
IF ~~ THEN DO ~SetGlobal("C#Ajantis_PIDEvilPP","LOCALS",3)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#Ajantis_PIDEvilPP","LOCALS",3)~ + talk_friendship_tob
END


/* ease the tension */
IF ~~ THEN ease_tension_00
SAY @1375
= @1376 
= @1377
IF ~~ THEN EXIT
END

IF ~~ THEN ease_tension_01
SAY @1378
IF ~~ THEN EXIT
END

IF ~~ THEN ease_tension_02
SAY @1379
IF ~~ THEN EXIT
END

IF ~~ THEN ease_tension_03
SAY @1380
IF ~~ THEN EXIT
END

IF ~~ THEN ease_tension_04
SAY @1381
IF ~~ THEN EXIT
END

IF ~~ THEN ease_tension_05
SAY @1382
IF ~~ THEN EXIT
END

IF ~~ THEN ease_tension_06
SAY @1383
IF ~~ THEN EXIT
END

IF ~~ THEN ease_tension_07
SAY @1384
IF ~~ THEN EXIT
END




/* Cyric */

IF ~~ THEN cyric
SAY @1268
= @1269
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_friendship_tob
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + talk_romance_tob
END



IF ~~ THEN love_you_01
SAY @425 
IF ~~ THEN EXIT
END

IF ~~ THEN love_you_02
SAY @426 
IF ~~ THEN EXIT
END

IF ~~ THEN love_you_03
SAY @427
IF ~~ THEN EXIT
END

IF ~~ THEN love_you_04
SAY @428
IF ~~ THEN EXIT
END

IF ~~ THEN love_you_05
SAY @429
IF ~~ THEN EXIT
END

IF ~~ THEN love_you_06
SAY @430
IF ~~ THEN EXIT
END


IF ~~ THEN do_without_you
SAY @1270
++ @1271 + do_without_you_02 
++ @1272 + do_without_you_01
END

IF ~~ THEN do_without_you_01
SAY @1273 
IF ~~ THEN + talk_romance_tob
END

IF ~~ THEN do_without_you_02
SAY @1274
IF ~~ THEN + talk_romance_tob
END


/* Ajantis thinks about duty 
after Ajantis helped the wounded PC in battle and the two talked about it. Is obeying all orders always the best way to fulfil ones duty? 
*/

IF ~~ THEN wounded_dialogue
SAY @1275
++ @449 + wounded_dialogue_01
++ @1276 + wounded_dialogue_01
++ @1277 + wounded_dialogue_01
END

IF ~~ THEN wounded_dialogue_01
SAY @1278
= @1279
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @1280 + wounded_dialogue_02
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @1281 + wounded_dialogue_02 
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @1282 + wounded_dialogue_02
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @1283 + wounded_dialogue_02
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @1284 + wounded_dialogue_02
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",1) GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @1285 + wounded_dialogue_02
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @1286 + wounded_dialogue_02

+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @1280 + wounded_dialogue_02b
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @1281 + wounded_dialogue_02b 
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @1282 + wounded_dialogue_02b
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @1283 + wounded_dialogue_02b
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @1284 + wounded_dialogue_02b
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",1) Global("C#AjantisPCMarriage","GLOBAL",0)~ + @1285 + wounded_dialogue_02b
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @1286 + wounded_dialogue_02b
END

IF ~~ THEN wounded_dialogue_02
SAY @1287
IF ~~ THEN + wounded_dialogue_02c
END

IF ~~ THEN wounded_dialogue_02b
SAY @1288
IF ~~ THEN + wounded_dialogue_02c
END

IF ~~ THEN wounded_dialogue_02c
SAY @1289
= @1290
++ @1291 + wounded_dialogue_03
++ @1292 + wounded_dialogue_03
++ @1293 + wounded_dialogue_03
END

IF ~~ THEN wounded_dialogue_03
SAY @1294
++ @1295 + wounded_dialogue_04
++ @1296 + wounded_dialogue_04
++ @1297 + wounded_dialogue_04
++ @1298 + wounded_dialogue_04
++ @1299 + wounded_dialogue_04
END

IF ~~ THEN wounded_dialogue_04
SAY @1300
= @1301
++ @1302 + wounded_dialogue_06
++ @1303 + wounded_dialogue_06
+ ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ + @1304 + wounded_dialogue_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @1305 + wounded_dialogue_05
END

IF ~~ THEN wounded_dialogue_05
SAY @1306
IF ~~ THEN + wounded_dialogue_06
END

IF ~~ THEN wounded_dialogue_06
SAY @1307
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",0)~ + @1308 + wounded_dialogue_07
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + @1309 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",0)~ + wounded_dialogue_07
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",0)~ + @1310 + wounded_dialogue_07
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",0)~ + @1311 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + wounded_dialogue_07
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + @1312 + wounded_dialogue_07
END

IF ~~ THEN wounded_dialogue_07
SAY @1313
= @1314
IF ~~ THEN + talk_romance_tob
END




IF ~~ THEN familienschild_tob
SAY @1315
IF ~~ THEN + talk_romance_tob
END

IF ~~ THEN familienschild_tob_2
SAY @1412
IF ~~ THEN + talk_romance_tob
END


/* "Vielleicht gewährt mir Helm die Gnade... */


IF ~~ THEN maybe
SAY @1316
= @1317
= @1318
++ @1319 + maybe_01
++ @1320 + maybe_02
++ @1321 + maybe_03
END

IF ~~ THEN maybe_01
SAY @1322
++ @1320 + maybe_02
++ @1321 + maybe_03
END

IF ~~ THEN maybe_02
SAY @1323
IF ~~ THEN EXIT
END

IF ~~ THEN maybe_03
SAY @1324 
IF ~~ THEN + talk_romance_tob
END




 /* Ajantis, you know I need you, yes? You give me the strength I need in these frightening times. */

IF ~~ THEN strength_1
SAY @1325
IF ~~ THEN EXIT
END

IF ~~ THEN strength_2
SAY @1326
IF ~~ THEN EXIT
END

IF ~~ THEN strength_3
SAY @1327
IF ~~ THEN EXIT
END

IF ~~ THEN strength_4
SAY @1328
IF ~~ THEN EXIT
END




/* Are you all right? */

IF ~~ THEN alright
SAY @1329
IF ~~ THEN EXIT
END

IF ~~ THEN alright_01
SAY @1446
IF ~~ THEN EXIT
END

IF ~~ THEN alright_02
SAY @1447
IF ~~ THEN EXIT
END

IF ~~ THEN alright_03
SAY @1448
IF ~~ THEN EXIT
END

IF ~~ THEN alright_04
SAY @1449
IF ~~ THEN EXIT
END

IF ~~ THEN alright_05
SAY @1450
IF ~~ THEN EXIT
END




/* marriage */

IF ~~ THEN marriage_01
SAY @1330
IF ~~ THEN + talk_romance_tob
END

IF ~~ THEN marriage_02
SAY @1331
= @1332
IF ~~ THEN + talk_romance_tob
END

IF ~~ THEN marriage_03
SAY @1333
++ @1334 + marriage_04
++ @1335 + marriage_05
+ ~OR(14)
AreaCheck("AR5000")
AreaCheck("AR5003")
AreaCheck("AR5005")
AreaCheck("AR5006")
AreaCheck("AR5007")
AreaCheck("AR5008")
AreaCheck("AR5009")
AreaCheck("AR5010")
AreaCheck("AR5011")
AreaCheck("AR5012")
AreaCheck("AR5013")
AreaCheck("AR5014")
AreaCheck("AR5015")
AreaCheck("AR5016")~ + @1336 + marriage_09 
+ ~AreaCheck("AR5004")~ + @1337 + marriage_09 
+ ~AreaCheck("AR4500")
OR(5)
Class(Player2,CLERIC_ALL)
Class(Player3,CLERIC_ALL)
Class(Player4,CLERIC_ALL)
Class(Player5,CLERIC_ALL)
Class(Player6,CLERIC_ALL)~ + @1338 + marriage_10
+ ~!AreaCheck("AR4500")
OR(5)
Class(Player2,CLERIC_ALL)
Class(Player3,CLERIC_ALL)
Class(Player4,CLERIC_ALL)
Class(Player5,CLERIC_ALL)
Class(Player6,CLERIC_ALL)~ + @1338 + marriage_11
++ @1339 + marriage_06 
++ @1340 + marriage_07

END

IF ~~ THEN marriage_04
SAY @1341
IF ~~ THEN + marriage_08
END

IF ~~ THEN marriage_05
SAY @1342
IF ~~ THEN + marriage_08
END

IF ~~ THEN marriage_06
SAY @1343
++ @1334 + marriage_04
++ @1335 + marriage_05
+ ~OR(14)
AreaCheck("AR5000")
AreaCheck("AR5003")
AreaCheck("AR5005")
AreaCheck("AR5006")
AreaCheck("AR5007")
AreaCheck("AR5008")
AreaCheck("AR5009")
AreaCheck("AR5010")
AreaCheck("AR5011")
AreaCheck("AR5012")
AreaCheck("AR5013")
AreaCheck("AR5014")
AreaCheck("AR5015")
AreaCheck("AR5016")~ + @1336 + marriage_09 
+ ~AreaCheck("AR5004")~ + @1337 + marriage_09 
+ ~AreaCheck("AR4500")
OR(5)
Class(Player2,CLERIC_ALL)
Class(Player3,CLERIC_ALL)
Class(Player4,CLERIC_ALL)
Class(Player5,CLERIC_ALL)
Class(Player6,CLERIC_ALL)~ + @1338 + marriage_10
+ ~!AreaCheck("AR4500")
OR(5)
Class(Player2,CLERIC_ALL)
Class(Player3,CLERIC_ALL)
Class(Player4,CLERIC_ALL)
Class(Player5,CLERIC_ALL)
Class(Player6,CLERIC_ALL)~ + @1338 + marriage_11
++ @1340 + marriage_07

END

IF ~~ THEN marriage_07
SAY @1344
IF ~~ THEN + talk_romance_tob
END

IF ~~ THEN marriage_08
SAY @1345
IF ~~ THEN + talk_romance_tob
END

IF ~~ THEN marriage_09
SAY @1346
IF ~~ THEN + talk_romance_tob
END

IF ~~ THEN marriage_10
SAY @1347
IF ~~ THEN + marriage_11
END

IF ~~ THEN marriage_11
SAY @1348
++ @1334 + marriage_04
++ @1335 + marriage_05
++ @1340 + marriage_07
END


IF ~~ THEN as_you_wish
SAY @192
IF ~~ THEN EXIT
END



//
//
//
/* miss family */

IF ~~ THEN miss_family
SAY @1349
= @1350
= @1351
IF ~~ THEN + talk_romance_tob
END


//
//
//
/* Briefe an die Familie */
IF ~~ THEN briefe
SAY @1352
= @1353
++ @1354 + briefe_01
++ @1355 + briefe_02
++ @1356 + briefe_04
++ @1357 + briefe_03
END

IF ~~ THEN briefe_01
SAY @1358
IF ~~ THEN + briefe_04
END

IF ~~ THEN briefe_02
SAY @1359
IF ~~ THEN + briefe_04
END

IF ~~ THEN briefe_03
SAY @1360
IF ~~ THEN + briefe_04
END

IF ~~ THEN briefe_04
SAY @1361
= @1362
= @1363
= @1364
++ @1365 + parents_13
++ @1366 + parents_12
++ @1367 + parents_15
END

IF ~~ THEN parents_12
SAY @1368
IF ~~ THEN + parents_14
END

IF ~~ THEN parents_13
SAY @1369
IF ~~ THEN + parents_14
END

IF ~~ THEN parents_14
SAY @1370
= @1371
= @1372
IF ~~ THEN + talk_romance_tob
END

IF ~~ THEN parents_15
SAY @1373
IF ~~ THEN + parents_14
END

END //APPEND C#Aja25J
