BEGIN C#Aja25B



/* Ajantis - Anomen */

/* Anomen: Ritter, und von Cor hinausgejagt
Ajantis: verheiratet / verlobt, -> von seinen Eltern enterbt 

~OR(2)
GlobalGT("C#AjantisDisinheritage","GLOBAL",0)
GlobalGT("C#AjanToB_FamilyShieldRA2","GLOBAL",1)~

IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)

*/


CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_AnomenBanter","GLOBAL",0) 
InParty("C#Ajantis") InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("AnomenIsNotknight","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN BANOME25 anomen_01
@0 
DO ~SetGlobal("C#AjanToB_AnomenBanter","GLOBAL",1)~
== C#Aja25B IF ~GlobalGT("C#AjantisPCMarriage","GLOBAL",0)~ THEN @1
== C#Aja25B IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN @2
== BANOME25 @3
= @4
== C#Aja25B @5
EXIT



/* Anomen: Moira tot, Ritter 
Ajantis: egal */

CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
OR (2) 
Global("C#AjanToB_AnomenBanter","GLOBAL",1) 
!Global("C#AjantisRomanceActive","GLOBAL",2)
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("AnomenIsNotknight","GLOBAL",0)~ THEN BANOME25 anomen_02
@6 
DO ~SetGlobal("C#AjanToB_AnomenBanter","GLOBAL",2)~
== C#Aja25B @7
== BANOME25 @8
== C#Aja25B @9
== BANOME25 @10
== C#Aja25B @11
== BANOME25 @12
EXIT


/* Ajantis - Keldorn */



CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_KeldornBanter","GLOBAL",0)
InParty("KELDORN") 
InMyArea("KELDORN") 
!StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN C#Aja25B keldorn_01
@13
DO ~SetGlobal("C#AjanToB_KeldornBanter","GLOBAL",1)~ 
== BKELDO25 @14
== C#Aja25B @15
== BKELDO25 @16
EXIT

/* Ajantis -Sarevok */

APPEND C#Aja25B

/*  berücksichtigt Sarevoks Schwur */

IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_SarevokBanter","GLOBAL",0) 
InParty("Sarevok") 
InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN ajantis_sarevok1
SAY @17
IF ~~ THEN DO ~SetGlobal("C#AjanToB_SarevokBanter","GLOBAL",1)~ EXTERN BSarev25 ajantis_sarevok_01
END

END


CHAIN
IF ~~ THEN BSarev25 ajantis_sarevok_01
@18
== BSarev25 IF ~GlobalGT("SarevokOath","GLOBAL",0)~ THEN @19
== C#Aja25B IF ~GlobalGT("SarevokOath","GLOBAL",0)~ THEN @20
== C#Aja25B @21
== BSarev25 @22
EXIT


/* Ajantis - Keldorn */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_KeldornBanter","GLOBAL",1)
InParty("KELDORN") 
InMyArea("KELDORN") 
!StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN C#Aja25B keldorn_02
@23
DO ~SetGlobal("C#AjanToB_KeldornBanter","GLOBAL",2)~ 
== BKELDO25 @24
= @25
== C#Aja25B @26
== BKELDO25 @27
EXIT


/* Ajantis -Sarevok */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_SarevokBanter","GLOBAL",1) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN BSarev25 ajantis_sarevok_02
@28
DO ~SetGlobal("C#AjanToB_SarevokBanter","GLOBAL",2)~ 
== C#Aja25B @29
== BSarev25 @30
== C#Aja25B @31
== BSarev25 @32
== BSarev25 @33
EXIT



/* Ajantis - Imoen - ToB */


APPEND C#Aja25B

/* HC hat Sarevok wieder hergestellt */

IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
GlobalLT("ImoenGiveSoul","GLOBAL",2) 
GlobalGT("SarevokAlive","GLOBAL",0) 
Global("C#AjanToB_ImoenBanter","GLOBAL",0)
InParty("imoen2") 
InMyArea("imoen2") 
!StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN ajantis_imoen1
SAY @34
IF ~~ THEN DO ~SetGlobal("C#AjanToB_ImoenBanter","GLOBAL",1)~ EXTERN BIMOEN25 ajantis_imoen_01
END

/* Imoen hat Sarevok wieder hergestellt */

IF ~Global("ImoenGiveSoul","GLOBAL",2) GlobalGT("SarevokAlive","GLOBAL",0) Global("C#AjanToB_ImoenBanter","GLOBAL",0) InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN ajantis_imoen2
SAY @35
IF ~~ THEN DO ~SetGlobal("C#AjanToB_ImoenBanter","GLOBAL",1)~ EXTERN BIMOEN25 ajantis_imoen_01
END



/* Sarevok (noch) nicht wieder hergestellt */

IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("SarevokAlive","GLOBAL",0) 
Global("C#AjanToB_ImoenBanter","GLOBAL",0) 
InParty("imoen2") 
InMyArea("imoen2") 
!StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN ajantis_imoen3
SAY @36
IF ~~ THEN DO ~SetGlobal("C#AjanToB_ImoenBanter","GLOBAL",1)~ EXTERN BIMOEN25 ajantis_imoen_01
END

END //APPEND


CHAIN
IF ~~ THEN BIMOEN25 ajantis_imoen_01
@37
== C#Aja25B @38
== BIMOEN25 @39
= @40
= @41
== C#Aja25B @42
== BIMOEN25 @43
== BIMOEN25 IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @44
== C#Aja25B IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @45
== BIMOEN25 @46
= @47
EXIT



/* Ajantis - Edwin */

CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_EdwinBanter","GLOBAL",0)
InParty("edwin") 
InMyArea("edwin") 
!StateCheck("edwin",CD_STATE_NOTVALID)~ THEN C#Aja25B ajantis_edwin
@48
DO ~SetGlobal("C#AjanToB_EdwinBanter","GLOBAL",1)~ 
== BEDWIN25 @49
== C#Aja25B @50
== BEDWIN25 @51
== C#Aja25B @52
= @53
== BEDWIN25 @54
EXIT

/* Ajantis - Mazzy */

CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_MazzyBanter","GLOBAL",0)
InParty("MAZZY") 
InMyArea("MAZZY") 
!StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN C#Aja25B ajantis_mazzy
@55
DO ~SetGlobal("C#AjanToB_MazzyBanter","GLOBAL",1)~ 
== BMAZZY25 @56
== C#Aja25B @57
= @58
== BMAZZY25 @59
EXIT

/* Ajantis - Valygar */

CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_ValygarBanter","GLOBAL",0)
InParty("VALYGAR") 
InMyArea("VALYGAR") 
!StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN C#Aja25B ajantis_valygar
@60
DO ~SetGlobal("C#AjanToB_ValygarBanter","GLOBAL",1)~ 
== BVALYG25 @61
== C#Aja25B @62
== BVALYG25 @63
= @64
EXIT


/* Ajantis - Nalia */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_NaliaBanter","GLOBAL",0)
InParty("nalia") 
InMyArea("nalia") 
!StateCheck("nalia",CD_STATE_NOTVALID)~ THEN C#Aja25B nalia_02
@65 DO ~SetGlobal("C#AjanToB_NaliaBanter","GLOBAL",1)~
== BNALIA25 @66
== C#Aja25B @67
== BNALIA25 @68
== C#Aja25B @69
== BNALIA25 @70
== C#Aja25B @71
EXIT



/* Ajantis - Anomen */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_AnomenBanter","GLOBAL",2) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("AnomenIsNotknight","GLOBAL",0)~ THEN BANOME25 anomen_03
@72 
DO ~SetGlobal("C#AjanToB_AnomenBanter","GLOBAL",3)~
== C#Aja25B @73
== BANOME25 @74
== C#Aja25B @75
== C#Aja25B @76
== C#Aja25B @77
== BANOME25 @78
== C#Aja25B @79
EXIT


/* Ajantis - Keldorn */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_KeldornBanter","GLOBAL",2) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN BKELDO25 keldorn_03
@80 
DO ~SetGlobal("C#AjanToB_KeldornBanter","GLOBAL",3)~
== C#Aja25B @81
== BKELDO25 @82
== C#Aja25B @83
== BKELDO25 @84 
== C#Aja25B @85
EXIT

/* Ajantis - Keldorn */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_KeldornBanter","GLOBAL",3) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN BKELDO25 keldorn_04
@86 
DO ~SetGlobal("C#AjanToB_KeldornBanter","GLOBAL",4)~
== C#Aja25B @87
= @88
== BKELDO25 @89
EXIT



/* Ajantis - Imoen */


CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_ImoenBanter","GLOBAL",1)
InParty("imoen2") 
InMyArea("imoen2") 
!StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN C#Aja25B ajantis_imoen_2
@90
DO ~SetGlobal("C#AjanToB_ImoenBanter","GLOBAL",2)~ 
= @91
== C#Aja25B IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @92
== C#Aja25B @93
== BIMOEN25 @94
== C#Aja25B @95
== BIMOEN25 @96
= @97
EXIT


/* Ajantis -Sarevok */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_SarevokBanter","GLOBAL",2) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN BSarev25 ajantis_sarevok_03
@98 
DO ~SetGlobal("C#AjanToB_SarevokBanter","GLOBAL",3)~ 
== BSarev25 IF ~GlobalGT("SarevokOath","GLOBAL",0)~ THEN @99
== C#Aja25B @100
== BSarev25 @101
== C#Aja25B @102
== BSarev25 @103
EXIT

/* 2nd Ajantis - Mazzy */

CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_MazzyBanter","GLOBAL",1)
InParty("MAZZY") 
InMyArea("MAZZY") 
!StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN C#Aja25B ajantis_mazzy
@149
DO ~SetGlobal("C#AjanToB_MazzyBanter","GLOBAL",2)~ 
== BMAZZY25 @150
== C#Aja25B @151
== BMAZZY25 @152
== C#Aja25B @153
EXIT



/* Ajantis - Anomen */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_AnomenBanter","GLOBAL",3) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("AnomenIsNotknight","GLOBAL",0)~ THEN BANOME25 anomen_04
@104 
DO ~SetGlobal("C#AjanToB_AnomenBanter","GLOBAL",4)~
== C#Aja25B @105
== BANOME25 @106
= @107
EXIT


/* Ajantis - Imoen */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_ImoenBanter","GLOBAL",2) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN BIMOEN25 ajantis_imoen_3
@108
DO ~SetGlobal("C#AjanToB_ImoenBanter","GLOBAL",3)~ 
== C#Aja25B @109
== BIMOEN25 @110
= @111
= @112
= @113
== C#Aja25B @114
== BIMOEN25 @115
EXIT


/* Ajantis -Sarevok */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_SarevokBanter","GLOBAL",3) 
InParty("C#Ajantis") 
InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN BSarev25 ajantis_sarevok_04
@116 
DO ~SetGlobal("C#AjanToB_SarevokBanter","GLOBAL",4)~
== C#Aja25B @117
== BSarev25 @118
= @119
EXIT



/* Ajantis - Keldorn */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_KeldornBanter","GLOBAL",4)
InParty("KELDORN") 
InMyArea("KELDORN") 
!StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN C#Aja25B keldorn_05
@120
DO ~SetGlobal("C#AjanToB_KeldornBanter","GLOBAL",5)~
== BKELDO25 @121
== C#Aja25B @122
== BKELDO25 @123
= @124
== C#Aja25B @125
== BKELDO25 @126
== C#Aja25B @127
== BKELDO25 @128
EXIT



/* Ajantis -Sarevok */
CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_SarevokBanter","GLOBAL",4) 
InParty("C#Ajantis") InMyArea("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN BSarev25 ajantis_sarevok_05
@129 
DO ~SetGlobal("C#AjanToB_SarevokBanter","GLOBAL",5)~
== C#Aja25B @130
== BSarev25 @131
== C#Aja25B @132
== BSarev25 @133
= @134
== BSarev25 IF ~GlobalGT("SarevokOath","GLOBAL",0)~ THEN @135
== BSarev25 @136
= @137
EXIT

/* Sarevok Redemption */

CHAIN
IF ~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#AjanToB_SarevokRedemption","GLOBAL",0) 
InParty("Sarevok") 
InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID) !Alignment("Sarevok",MASK_EVIL)~ THEN C#Aja25B sarevok_redemption
@138
DO ~SetGlobal("C#AjanToB_SarevokRedemption","GLOBAL",1)~ 
== BSarev25 @139
== C#Aja25B @140
= @141
== BSarev25 @142
== C#Aja25B @143
= @144
== BSarev25 @145
== C#Aja25B @146
= @147
== BSarev25 @148
EXIT