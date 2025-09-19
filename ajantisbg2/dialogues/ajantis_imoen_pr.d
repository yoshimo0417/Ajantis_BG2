//Ajantis - Imoen after Spellhold 

CHAIN
IF ~Global("C#Ajantis_ImoenSpellholdBanter","GLOBAL",1)~ THEN ~C#AjanJ~ ajantisimoen_sh
@0 /* ~Imoen, ich bin froh, Euch wieder zu sehen. Doch ich bin betrübt über die Umstände, unter denen es geschieht - und ich muss sagen, Ihr habt Euch sehr verändert.~ */  DO ~SetGlobal("C#Ajantis_ImoenSpellholdBanter","GLOBAL",2)~
== BIMOEN2 @1 /* ~Oh, Ajantis, es ist schön Euch zu sehen. Ich fühle mich, als wäre mein Innerstes nach außen gekehrt worden... Ich.. ich möchte mich gar nicht erinnern.~ */
== C#AjanB @2 /* ~Niemals hätte ich die Wahrheit über Eure Herkunft geglaubt, meine Dame. Diese Enthüllung erschreckt mich, aber für Euch muss es noch viel entsetzlicher gewesen sein. Für mich ist klar, dass Ihr dem Makel nicht nachgegeben habt, den Ihr bis jetzt unwissentlich getragen habt. Ich habe niemals Böses in Euch gespürt.~ */
= @3 /* ~Sie haben Euch schreckliche Dinge angetan. Dass sie auf solch eine schreckliche, verdrehte Art versuchen, die bösartige Macht Eures Erzeugers anzuzapfen, macht mich wütend! Wenn es in meiner Macht läge, würde ich die Dinge auf der Stelle richtig stellen. Ich fürchte jedoch, dass Euch die Erinnerungen selbst dann noch jagen werden, wenn wir Eure Seele wiederbeschafft haben.~ */
== BIMOEN2 @4 /* ~Lasst uns von etwas anderem sprechen, Ajantis. Auch Ihr habt Euch verändert... Eure Rüstung zum Beispiel glänzt jetzt *noch* stärker! (zwinkert)~ */
== C#AjanB @5 /* ~Es ist gut zu sehen, dass Ihr Euren Humor nicht ganz verloren habt, Imoen. Seid Euch versichert, dass ich auf Euer Wohl achten werde, solange wir zusammen reisen. Lasst uns voranschreiten und die Schurken stellen, die wir jagen!~ */
== BIMOEN2 @6 /* ~Ah, stolzer Ritter! Wie immer ein Quell des Glaubens und der Stärke. Ich danke Euch.~ */
EXIT

/* first dialogue - I4E in chapter 2 or 3 */

CHAIN
IF WEIGHT #-1
~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
See("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#Ajantis_ImoenBanter1","GLOBAL",0)~ THEN ~BIMOEN2~ ajantisimoen_01
@62 DO ~SetGlobal("C#Ajantis_ImoenBanter1","GLOBAL",1)~
== C#AjanB @63
== BIMOEN2 @64
== C#AjanB @65
== BIMOEN2 @66
== C#AjanB @67
EXIT


//Ajantis - Imoen #2

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("imoen2")
See("imoen2") 
!StateCheck("imoen2",CD_STATE_NOTVALID)
!Dead("imoen2")
Class("imoen2",MAGE_ALL)
GlobalLT("C#Ajantis_ImoenBanterMage","GLOBAL",0)
OR(2)
GlobalGT("C#Ajantis_ImoenBanter1","GLOBAL",0)
Global("C#Ajantis_ImoenSpellholdBanter","GLOBAL",2)~ THEN ~C#AjanB~ ajantisimoen_02
@7 DO ~SetGlobal("C#Ajantis_ImoenBanterMage","GLOBAL",1)~
== BIMOEN2 @8
== C#AjanB @9
== BIMOEN2 @10
== C#AjanB @11
== BIMOEN2 @12
== C#AjanB @13
== BIMOEN2 @14
EXIT

//committed PC - Ajantis romance, not married yet
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
See("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisPCMarriage","GLOBAL",0) //not married
!Global("C#AjantisIsThinking","GLOBAL",1)
ReputationGT(Player1,14)
Global("C#Ajantis_ImoenRomBanter","GLOBAL",0)~ THEN ~BIMOEN2~ ajantisimoen_rom
@15 DO ~SetGlobal("C#Ajantis_ImoenRomBanter","GLOBAL",1)~
== C#AjanB @16
END
IF ~~ THEN EXTERN BIMOEN2 ajantisimoen_rom_02

//committed PC - Ajantis romance, married
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
See("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisPCMarriage","GLOBAL",1) //married
Global("C#Ajantis_ImoenRomBanter","GLOBAL",0)~ THEN ~BIMOEN2~ ajantisimoen_rom_01
@21 DO ~SetGlobal("C#Ajantis_ImoenRomBanter","GLOBAL",1)~
== C#AjanB @22
END
IF ~~ THEN EXTERN BIMOEN2 ajantisimoen_rom_02

CHAIN
IF ~~ THEN BIMOEN2 ajantisimoen_rom_02
@17
== C#AjanB @18
== BIMOEN2 @19
== C#AjanB @20
EXIT

//Ajantis / Imoen #3

CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("C#Ajantis")
See("C#Ajantis") 
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Dead("C#Ajantis")
OR(2)
GlobalGT("C#Ajantis_ImoenBanter1","GLOBAL",0)
Global("C#Ajantis_ImoenSpellholdBanter","GLOBAL",2)
GlobalLT("C#Ajantis_ImoenBanter1","GLOBAL",4)~ THEN ~BIMOEN2~ ajantisimoen_03
@23 DO ~SetGlobal("C#Ajantis_ImoenBanter1","GLOBAL",4)~
== C#AjanB @24
== BIMOEN2 @25
== C#AjanB @26
== BIMOEN2 @27
== C#AjanB @28
== BIMOEN2 @29
= @30
== C#AjanB @31
== BIMOEN2 @32
== C#AjanB @33
== BIMOEN2 @34
== C#AjanB @35
EXIT

//#4
CHAIN
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) InParty("imoen2")
See("imoen2") 
!StateCheck("imoen2",CD_STATE_NOTVALID)
!Dead("imoen2")
Global("C#Ajantis_ImoenBanter1","GLOBAL",4)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)
!Global("C#IM_ImoenStays","GLOBAL",1)~ THEN ~C#AjanB~ ajantisimoen_04
@36 DO ~SetGlobal("C#Ajantis_ImoenBanter1","GLOBAL",5)~
= @37
== BIMOEN2 @38
== C#AjanB @39
== BIMOEN2 @40
== C#AjanB @41
== BIMOEN2 @42
EXIT

//---------------PC - Imoen for Ajantis romance

APPEND BIMOEN2 
IF WEIGHT #-1
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0) !See([ENEMY]) 
Detect(Player1) 
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisPCMarriage","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",1)
!Dead("C#Ajantis")
Global("C#AjantisPC_Imoen1","GLOBAL",0)~ THEN pc_imoen_ajantisrom
SAY @43
++ @44 DO ~SetGlobal("C#AjantisPC_Imoen1","GLOBAL",1)~ + pc_imoen_ajantisrom_01
++ @45 DO ~SetGlobal("C#AjantisPC_Imoen1","GLOBAL",1)~ + pc_imoen_ajantisrom_02
END

IF ~~ THEN pc_imoen_ajantisrom_01
SAY @46
++ @47 + pc_imoen_ajantisrom_AreYouHappy
++ @48 + pc_imoen_ajantisrom_SecondThoughts
END

IF ~~ THEN pc_imoen_ajantisrom_02
SAY @49
++ @50 + pc_imoen_ajantisrom_BrushOff
++ @51 + pc_imoen_ajantisrom_AreYouHappy
++ @48 + pc_imoen_ajantisrom_SecondThoughts
END

IF ~~ THEN pc_imoen_ajantisrom_BrushOff
SAY @52
IF ~~ THEN + pc_imoen_ajantisrom_AreYouHappy
END

IF ~~ THEN pc_imoen_ajantisrom_AreYouHappy
SAY @53
++ @54 + pc_imoen_ajantisrom_ImoenHappy
++ @55 + pc_imoen_ajantisrom_NeedToTalk
++ @56 + pc_imoen_ajantisrom_NeedToTalk
++ @57 + pc_imoen_ajantisrom_YouToldMe
END

IF ~~ THEN pc_imoen_ajantisrom_SecondThoughts
SAY @58
IF ~~ THEN + pc_imoen_ajantisrom_NeedToTalk
END

IF ~~ THEN pc_imoen_ajantisrom_NeedToTalk
SAY @59
IF ~~ THEN EXIT
END

IF ~~ THEN pc_imoen_ajantisrom_ImoenHappy
SAY @60
IF ~~ THEN EXIT
END

IF ~~ THEN pc_imoen_ajantisrom_YouToldMe
SAY @61
IF ~~ THEN EXIT
END
END
