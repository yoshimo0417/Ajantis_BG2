//GlobalGT("C#AjantisBodhiAbduction","GLOBAL",0)

EXTEND_BOTTOM BODHIAMB 5
     IF ~Global("C#AjantisBodhiAbduction","GLOBAL",0)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
InParty("C#Ajantis")~ THEN DO ~SetGlobal("C#AjantisBodhiAbduction","GLOBAL",1)~ + ajantis_abduction
END

APPEND BODHIAMB
IF ~~ THEN ajantis_abduction
SAY #56544 /* ~Ihr tut dies in der Hoffnung, etwas, das Euch lieb ist, zurückzubekommen. Je länger Ihr daran festhaltet, desto mehr werdet Ihr verlieren.~ */
IF ~OR(2)
!InPartyAllowDead("C#Ajantis")
Dead("C#Ajantis")~ THEN GOTO 6
IF ~InPartyAllowDead("C#Ajantis")
!Dead("C#Ajantis")~ THEN GOTO ajantis_abduction_01
END

END

CHAIN
IF ~~ THEN BODHIAMB ajantis_abduction_01
@0 
== C#AjanJ IF ~InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @1
== BODHIAMB @2 
END
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C#BOCUT")
~ UNSOLVED_JOURNAL @10008 EXIT

EXTEND_BOTTOM C6BODHI 21
IF ~Global("C#AjantisVampire","GLOBAL",2)~ THEN GOTO 23
END

EXTEND_BOTTOM C6BODHI 23
IF ~Global("C#AjantisVampire","GLOBAL",2)~ THEN REPLY @3 + ajantis_01
IF ~Global("C#AjantisVampire","GLOBAL",2)~ THEN REPLY @4 + ajantis_01
IF ~Global("C#AjantisVampire","GLOBAL",2)~ THEN REPLY @5 + ajantis_01
IF ~Global("C#AjantisVampire","GLOBAL",2)~ THEN REPLY @6 + ajantis_02
END

APPEND C6BODHI 

IF ~~ THEN ajantis_02
  SAY #59187 /* ~Ein interessanter Trick, obwohl ich mir sicher bin, dass sein Schicksal immer noch als Beispiel dienen wird, ob Ihr ihn nun zurückwollt oder nicht.~ */
  IF ~~ THEN + ajantis_01
END

IF ~~ THEN ajantis_01
SAY @7
IF ~~ THEN UNSOLVED_JOURNAL @10009 EXTERN ~C#AJVAMP~ 0
END

END //APPEND C6BODHI

BEGIN ~C#AJVAMP~

IF ~~ THEN BEGIN 0 // from:
  SAY @8 
  IF ~~ THEN EXTERN ~C6BODHI~ 13
END

ADD_TRANS_ACTION C6BODHI BEGIN 5 END BEGIN 0 END ~EraseJournalEntry(@10008) EraseJournalEntry(@10009)~

EXTEND_BOTTOM WARSAGE 0 
IF ~OR(2)
Global("C#AjantisVampire","GLOBAL",1) 
Global("C#AjantisVampire","GLOBAL",2)~ THEN REPLY #56579 /* ~Jemand, den ich liebte, wurde von einem Vampir genommen. Was erwartet mich, wenn ich sie finde?~ */ + 6
IF ~PartyHasItem("C#AJBODY")~ THEN REPLY @9 GOTO 5
END

EXTEND_BOTTOM DOGHMA 0
IF ~PartyHasItem("C#AJBODY")~ THEN REPLY #57916 /* ~Eine befreundete Person wurde Opfer des Vampirismus. In einem alten Buch wurde erwähnt, dass Anhänger des Oghma etwas darüber wissen könnten.~ */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 3
IF ~PartyHasItem("C#AJBODY")~ THEN REPLY #57916 /* ~Eine befreundete Person wurde Opfer des Vampirismus. In einem alten Buch wurde erwähnt, dass Anhänger des Oghma etwas darüber wissen könnten.~ */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 7
IF ~PartyHasItem("C#AJBODY")~ THEN REPLY #57916 /* ~Eine befreundete Person wurde Opfer des Vampirismus. In einem alten Buch wurde erwähnt, dass Anhänger des Oghma etwas darüber wissen könnten.~ */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 9
IF ~PartyHasItem("C#AJBODY")~ THEN REPLY #57916 /* ~Eine befreundete Person wurde Opfer des Vampirismus. In einem alten Buch wurde erwähnt, dass Anhänger des Oghma etwas darüber wissen könnten.~ */ GOTO 10
END

EXTEND_BOTTOM C6ELHAN2 70
IF ~PartyHasItem("C#AJBODY")~ THEN REPLY @10 GOTO 76
END

EXTEND_BOTTOM SUDEMIN 2
IF ~PartyHasItem("C#AJBODY")~ THEN REPLY #59237 /* ~Ich verlor einen geliebten Menschen in einem Kampf mit seiner Schwester Bodhi. Ich suche nach einer Möglichkeit, ihn zu heilen.~ */ GOTO 3
END

EXTEND_BOTTOM IMNBOOK1 0
IF ~PartyHasItem("C#AJBODY")~ THEN REPLY #59383 /* ~Ich suche nach einem Folianten, der Heilung von Vampirismus beschreibt.~ */ GOTO 4
END

//OGHMONK1.dlg
ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("C#AJBODY")~ 
ADD_STATE_TRIGGER OGHMONK1 1 ~!PartyHasItem("C#AJBODY")~ 
ADD_STATE_TRIGGER OGHMONK1 2 ~!PartyHasItem("C#AJBODY")~ 
ADD_STATE_TRIGGER OGHMONK1 3 ~!PartyHasItem("C#AJBODY")~ 

APPEND OGHMONK1

IF WEIGHT #-1
~PartyHasItem("C#AJBODY")~ THEN BEGIN ajantis_vamp
  SAY #57510 /* ~Seid Ihr gekommen, um Weisheit vom Sammler alles Wissens zu erhalten? Der Weise Gott steht zur Verfügung.~ */
  IF ~~ THEN REPLY #57511 /* ~Danke, aber wir brauchen derzeit keine Hilfe.~ */ GOTO 5
  IF ~~ THEN REPLY #57512 /* ~Ein Freund ist vom Vampirismus befallen. Ein altes Buch erwähnte, dass Anhänger von Oghma vielleicht mehr darüber wissen könnten.~ */ GOTO 6
END

END

APPEND C#AjanP

IF WEIGHT #-1
~Global("C#AjantisVampire","GLOBAL",5)~ THEN gefallen
SAY @11
= @12
++ @13 + gefallen_01
++ @14 + gefallen_01
++ @15 + gefallen_02
++ @16 + gefallen_02
END

IF ~~ THEN gefallen_01
SAY @17 
IF ~~ THEN + gefallen_02
END

IF ~~ THEN gefallen_02
SAY @18 
= @19
++ @20 + gefallen_03
++ @21 + gefallen_05
++ @22 + gefallen_04
++ @23 + gefallen_04
++ @24 + gefallen_04
END

IF ~~ THEN gefallen_03
SAY @25
++ @21 + gefallen_05
++ @22 + gefallen_04
++ @23 + gefallen_04
++ @24 + gefallen_04
END

IF ~~ THEN gefallen_04
SAY @26
= @27
IF ~~ THEN DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(@10008) EraseJournalEntry(@10009)
SetGlobal("C#AjantisVampire","GLOBAL",6)
SetGlobalTimer("C#AjantisBetetZuHelmT","GLOBAL",ONE_DAY) 
MoveBetweenAreas("AR0512",[478.236],9)
~ UNSOLVED_JOURNAL @10010 EXIT
END

IF ~~ THEN gefallen_05
SAY @28
IF ~~ THEN + gefallen_04
END

IF WEIGHT #-1
~OR(2)
Global("C#AjantisVampire","GLOBAL",7)
Global("C#AjantisVampire","GLOBAL",6)~ THEN helm_beten
SAY @33
IF ~Global("C#AjantisVampire","GLOBAL",6)~ THEN DO ~SetGlobal("C#AjantisVampire","GLOBAL",7)~ EXTERN bhelm helm_ajantis
IF ~Global("C#AjantisVampire","GLOBAL",7)~ THEN EXIT
END

END


APPEND BHELM 

IF WEIGHT #-1
~Global("C#AjantisVampire","GLOBAL",6)~ THEN helm_ajantis
SAY @34
++ @35 DO ~SetGlobal("C#AjantisVampireWG","LOCALS",1)
SetGlobal("C#AjantisVampireSpoken","GLOBAL",1)~ + helm_ajantis_03
++ @36 DO ~SetGlobal("C#AjantisVampireWL","LOCALS",1)
SetGlobal("C#AjantisVampireSpoken","GLOBAL",1)~ + helm_ajantis_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @37 DO ~
SetGlobal("C#AjantisVampireSpoken","GLOBAL",1)~ + helm_ajantis_01
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @38 DO ~
SetGlobal("C#AjantisVampireSpoken","GLOBAL",1)~+ helm_ajantis_01
END

IF ~~ THEN helm_ajantis_01
SAY @39
++ @40 DO ~SetGlobal("C#AjantisVampireWG","LOCALS",1)~ + helm_ajantis_03
++ @41 DO ~SetGlobal("C#AjantisVampireWL","LOCALS",1)~ + helm_ajantis_05
++ @42 + helm_ajantis_02
END

IF ~~ THEN helm_ajantis_02
SAY @43
+ ~Global("C#AjantisVampireWG","LOCALS",0)~ + @40 DO ~SetGlobal("C#AjantisVampireWG","LOCALS",1)~ + helm_ajantis_03
+ ~Global("C#AjantisVampireWL","LOCALS",0)~ + @41 DO ~SetGlobal("C#AjantisVampireWL","LOCALS",1)~ + helm_ajantis_05
++ @44 + helm_ajantis_04
END

IF ~~ THEN helm_ajantis_03
SAY @45
+ ~Global("C#AjantisVampireWL","LOCALS",0)~ + @41 DO ~SetGlobal("C#AjantisVampireWL","LOCALS",1)~ + helm_ajantis_05
++ @46 + helm_ajantis_04
END

IF ~~ THEN helm_ajantis_04
SAY @47
IF ~~ THEN DO ~SetGlobal("C#AjantisVampire","GLOBAL",7)~ EXIT
END

IF ~~ THEN helm_ajantis_05
SAY @48
+ ~Global("C#AjantisVampireWG","LOCALS",0)~ + @49 DO ~SetGlobal("C#AjantisVampireWG","LOCALS",1)~ + helm_ajantis_03
++ @44 + helm_ajantis_04
END


IF ~~ THEN helm_ajantis_06
SAY @50
IF ~~ THEN EXIT
END

END

EXTEND_BOTTOM BHELM 0
+ ~Global("C#AjantisVampire","GLOBAL",7)~ + @51 + helm_ajantis_06
END



CHAIN
IF WEIGHT #-1
~Global("C#AjantisVampire","GLOBAL",8)~ THEN C#AjanP nach_vampir
@52
DO ~SetGlobal("C#AjantisVampire","GLOBAL",9)~ 
== BHELM @53 
== C#AjanP @54
= @55
END
++ @56 + nach_vampir_01
++ @57 + nach_vampir_01a
++ @58 + nach_vampir_02
++ @59 + nach_vampir_01b

APPEND C#AjanP

IF ~~ THEN nach_vampir_01
SAY @60
IF ~~ THEN + nach_vampir_02
END

IF ~~ THEN nach_vampir_01a
SAY @61
IF ~~ THEN + nach_vampir_02
END

IF ~~ THEN nach_vampir_01b
SAY @62
IF ~~ THEN + nach_vampir_02
END

IF ~~ THEN nach_vampir_02
SAY @63
IF ~~ THEN + nach_vampir_03
END

IF ~~ THEN nach_vampir_03
SAY @64
= @65
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @66 + nach_vampir_05
++ @67 + nach_vampir_05b
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @68 + nach_vampir_07
++ @69 + nach_vampir_04
END

IF ~~ THEN nach_vampir_04
SAY @70
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @71 + nach_vampir_09
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @71 + nach_vampir_10
+ ~Global("C#AjantisRomanceActive","GLOBAL",3)~ + @72 + nach_vampir_08
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @73 + nach_vampir_11
END

IF ~~ THEN nach_vampir_05
SAY @74
IF ~!Dead("firkra02")~ THEN + nach_vampir_06
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + nach_vampir_06
END

IF ~~ THEN nach_vampir_05b
SAY @75
IF ~!Dead("firkra02")~ THEN + nach_vampir_06
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + nach_vampir_06
END

IF ~~ THEN nach_vampir_06
SAY @76
IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",0) 
EraseJournalEntry(@10010) JoinParty()~ EXIT
END

IF ~~ THEN nach_vampir_07
SAY @77
= @78
IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) EraseJournalEntry(@10010) EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END

IF ~~ THEN nach_vampir_08
SAY @79
IF ~!Dead("firkra02")~ THEN + nach_vampir_06
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) EraseJournalEntry(@10010)~ + nach_vampir_06
END

IF ~~ THEN nach_vampir_09
SAY @80
++ @81 + nach_vampir_09b
++ @82 + nach_vampir_09b
++ @83 + nach_vampir_09b
+ ~Global("C#AjantisRomanceActive","GLOBAL",3)~ + @72 + nach_vampir_08
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @73 + nach_vampir_11
END

IF ~~ THEN nach_vampir_09b
SAY @84
= @85
= @86
IF ~~ THEN DO ~SetGlobal("C#AjantisWegAlleine","GLOBAL",1) 
SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisRomanceGestorben","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
EscapeAreaMove("AR0903",1730,400,9)~  SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN nach_vampir_10
SAY @87
++ @81 + nach_vampir_12
++ @82 + nach_vampir_12
++ @88 + nach_vampir_12
+ ~Global("C#AjantisRomanceActive","GLOBAL",3)~ + @72 + nach_vampir_08
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @73 + nach_vampir_11
END

IF ~~ THEN nach_vampir_11
SAY @89
++ @90 + nach_vampir_05
++ @91 + nach_vampir_07
END

IF ~~ THEN nach_vampir_12
SAY @92
= @93
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisScheidung","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
EscapeArea()~ SOLVED_JOURNAL @10030 EXIT
END




END //APPEND C#AjanP


APPEND C#AjanJ

IF ~Global("C#AjantisBodhiAfterTalk","GLOBAL",2)~ THEN nach_abduction1
SAY @29
= @30
++ @31 + nach_abduction1_01
++ @32 DO ~SetGlobal("C#AjantisBhodiKillAgain","LOCALS",1)~ + nach_abduction1_02
++ @139 DO ~SetGlobal("C#AjantisBhodiRunAway","LOCALS",1)~ + nach_abduction1_04
END

IF ~~ THEN nach_abduction1_01
SAY @94 
++ @32 DO ~SetGlobal("C#AjantisBhodiKillAgain","LOCALS",1)~ + nach_abduction1_02 
++ @95 DO ~SetGlobal("C#AjantisBhodiRunAway","LOCALS",1)~ + nach_abduction1_04
++ @96 + nach_abduction1_03
END

IF ~~ THEN nach_abduction1_02
SAY @97
+ ~Global("C#AjantisNachAbduction5","LOCALS",0)~ + @98 DO ~SetGlobal("C#AjantisNachAbduction5","LOCALS",1)~ + nach_abduction1_05
+ ~Global("C#AjantisNachAbduction5","LOCALS",0)~ + @101 DO ~SetGlobal("C#AjantisNachAbduction5","LOCALS",1)~ + nach_abduction1_05
+ ~Global("C#AjantisPCKillsAjantis","LOCALS",0)~ + @102 DO ~SetGlobal("C#AjantisPCKillsAjantis","LOCALS",1)~ + nach_abduction1_09
++ @140 DO ~SetGlobal("C#AjantisBhodiRunAway","LOCALS",1)~ + nach_abduction1_04
++ @96 + nach_abduction1_03
END

IF ~~ THEN nach_abduction1_03
SAY @141
IF ~~ THEN DO ~SetGlobal("C#AjantisBodhiAfterTalk","GLOBAL",3)~ EXIT
END

IF ~~ THEN nach_abduction1_04
SAY @142
++ @143 + nach_abduction1_03
++ @144 + nach_abduction1_06
++ @145 + nach_abduction1_06
++ @96 + nach_abduction1_03
END

IF ~~ THEN nach_abduction1_05
SAY @166
++ @167 + nach_abduction1_08
+ ~Global("C#AjantisBhodiRunAway","LOCALS",1)~ + @140 DO ~SetGlobal("C#AjantisBhodiRunAway","LOCALS",1)~ + nach_abduction1_04
++ @96 + nach_abduction1_03
END

IF ~~ THEN nach_abduction1_06
SAY @168
= @169
= @170 
++ @143 + nach_abduction1_07
+ ~Global("C#AjantisBhodiKillAgain","LOCALS",0)~ + @32 DO ~SetGlobal("C#AjantisBhodiKillAgain","LOCALS",1)~ + nach_abduction1_02 
++ @96 + nach_abduction1_03
END

IF ~~ THEN nach_abduction1_07
SAY @153
IF ~~ THEN + nach_abduction1_03
END

IF ~~ THEN nach_abduction1_08
SAY @171
++ @172 + nach_abduction1_03
+ ~Global("C#AjantisBhodiRunAway","LOCALS",1)~ + @140 DO ~SetGlobal("C#AjantisBhodiRunAway","LOCALS",1)~ + nach_abduction1_04
+ ~Global("C#AjantisPCKillsAjantis","LOCALS",0)~ + @173 DO ~SetGlobal("C#AjantisPCKillsAjantis","LOCALS",1)~ + nach_abduction1_09
++ @96 + nach_abduction1_03
END

IF ~~ THEN nach_abduction1_09
SAY @174
+ ~Global("C#AjantisBhodiKillAgain","LOCALS",0)~ + @32 DO ~SetGlobal("C#AjantisBhodiKillAgain","LOCALS",1)~ + nach_abduction1_02 
+ ~Global("C#AjantisNachAbduction5","LOCALS",0)~ + @98 DO ~SetGlobal("C#AjantisNachAbduction5","LOCALS",1)~ + nach_abduction1_05
+ ~Global("C#AjantisNachAbduction5","LOCALS",0)~ + @101 DO ~SetGlobal("C#AjantisNachAbduction5","LOCALS",1)~ + nach_abduction1_05
+ ~Global("C#AjantisBhodiRunAway","LOCALS",1)~ + @140 DO ~SetGlobal("C#AjantisBhodiRunAway","LOCALS",1)~ + nach_abduction1_04
++ @96 + nach_abduction1_03
END


IF ~Global("C#AjantisBodhiAfterTalk","GLOBAL",4)~ THEN nach_abduction2
SAY @175
+ ~Global("C#AjantisBhodiKillAgain","LOCALS",1)~ + @176 + nach_abduction2_01
+ ~Global("C#AjantisBhodiKillAgain","LOCALS",0) 
Global("C#AjantisNachAbduction5","LOCALS",0)~ + @177 + nach_abduction2_02
+ ~Global("C#AjantisBhodiKillAgain","LOCALS",0) 
Global("C#AjantisNachAbduction5","LOCALS",1)~ + @177 + nach_abduction2_01
++ @178 + nach_abduction2_03
++ @179 + nach_abduction2_04
END

IF ~~ THEN nach_abduction2_01
SAY @180
IF ~~ THEN + nach_abduction2_03
END

IF ~~ THEN nach_abduction2_02
SAY @166
++ @167 + nach_abduction2_05
++ @181 + nach_abduction2_01
END

IF ~~ THEN nach_abduction2_03
SAY @182
= @183
IF ~~ THEN DO ~SetGlobal("C#AjantisBodhiAfterTalk","GLOBAL",5)~ EXIT
END

IF ~~ THEN nach_abduction2_04
SAY @184
IF ~~ THEN + nach_abduction2_01
END

IF ~~ THEN nach_abduction2_05
SAY @171
IF ~~ THEN + nach_abduction2_01
END


IF ~Global("C#AjantisBodhiAfterTalk","GLOBAL",6)~ THEN nach_abduction3
SAY @185
++ @186 + nach_abduction_10
+ ~GlobalLT("C#AjantisLoveTalk","GLOBAL",14)~ + @99 + nach_abduction_03
++ @100 + nach_abduction_05a
++ @187 + nach_abduction_06
END

IF ~~ THEN nach_abduction_03
SAY @103
++ @104 + nach_abduction_04
+ ~!Class(Player1,PALADIN)~ + @105 + nach_abduction_05a
+ ~Class(Player1,PALADIN)~ + @106 + nach_abduction_05a
++ @107 + nach_abduction_05a
END

IF ~~ THEN nach_abduction_04
SAY @108
+ ~!Class(Player1,PALADIN)~ + @105 + nach_abduction_05a
+ ~Class(Player1,PALADIN)~ + @106 + nach_abduction_05a
++ @107 + nach_abduction_05a
END

IF ~~ THEN nach_abduction_05
SAY @109
= @110
IF ~~ THEN DO ~SetGlobal("C#AjantisBodhiAfterTalk","GLOBAL",7)~ EXIT
END

IF ~~ THEN nach_abduction_05a
SAY @111
IF ~~ THEN + nach_abduction_05
END

IF ~~ THEN nach_abduction_06
SAY @112
++ @113 + nach_abduction_05
++ @114 + nach_abduction_05
++ @115 + nach_abduction_07
END

IF ~~ THEN nach_abduction_07
SAY @116
++ @117 + nach_abduction_09
++ @118 + nach_abduction_08 
END

IF ~~ THEN nach_abduction_08
SAY @119
IF ~~ THEN + nach_abduction_05
END

IF ~~ THEN nach_abduction_09
SAY @120
IF ~~ THEN + nach_abduction_05
END

IF ~~ THEN nach_abduction_10
SAY @153
+ ~GlobalLT("C#AjantisLoveTalk","GLOBAL",14)~ + @99 + nach_abduction_03
++ @100 + nach_abduction_05a
++ @187 + nach_abduction_06
END


IF ~Global("C#AjantisBodhiAfterTalk","GLOBAL",8)~ THEN abduction_vorwurf
SAY @124 
= @125 
++ @126 + abduction_vorwurf_02
++ @127 + abduction_vorwurf_02
++ @128 + abduction_vorwurf_02
++ @129 + abduction_vorwurf_01
END

IF ~~ THEN abduction_vorwurf_01
SAY @130
++ @131 + abduction_vorwurf_02
++ @132 + abduction_vorwurf_02
++ @133 + abduction_vorwurf_04
END

IF ~~ THEN abduction_vorwurf_02
SAY @134
= @135
= @136
= @137
IF ~~ THEN DO ~SetGlobal("C#AjantisBodhiAfterTalk","GLOBAL",9)~ EXIT
END

IF ~~ THEN abduction_vorwurf_04
SAY @138
IF ~~ THEN + abduction_vorwurf_02
END


IF ~Global("C#AjantisBodhiAfterTalk","GLOBAL",10)~ THEN abduction_gedanken
SAY @146
++ @147 + abduction_gedanken_05
++ @148 + abduction_gedanken_06
++ @149 + abduction_gedanken_09
++ @150 + abduction_gedanken_06
++ @151 + abduction_gedanken_07
END

IF ~~ THEN abduction_gedanken_05
SAY @154
++ @155 + abduction_gedanken_08
++ @156 + abduction_gedanken_07
++ @157 + abduction_gedanken_07
END

IF ~~ THEN abduction_gedanken_06
SAY @158
IF ~~ THEN + abduction_gedanken_08
END

IF ~~ THEN abduction_gedanken_07
SAY @159
IF ~~ THEN + abduction_gedanken_08
END

IF ~~ THEN abduction_gedanken_08
SAY @160
= @152
IF ~!HasItem("C#AJCHBE","C#Ajantis")~ THEN DO ~SetGlobal("C#AjantisBodhiAfterTalk","GLOBAL",11)
SetGlobal("C#AjantisBodhiAbduction","GLOBAL",2)~ EXIT
IF ~HasItem("C#AJCHBE","C#Ajantis")~ THEN DO ~SetGlobal("C#AjantisBodhiAfterTalk","GLOBAL",11)
SetGlobal("C#AjantisBodhiAbduction","GLOBAL",2)~ + abduction_gedanken_10
END

IF ~~ THEN abduction_gedanken_09
SAY @161
++ @162 + abduction_gedanken_05
++ @148 + abduction_gedanken_06
++ @150 + abduction_gedanken_06
++ @151 + abduction_gedanken_07
END

IF ~~ THEN abduction_gedanken_10
SAY @121
IF ~GlobalLT("C#AjantisUDBelt","GLOBAL",11)~ THEN + abduction_gedanken_11
IF ~GlobalGT("C#AjantisUDBelt","GLOBAL",10)~ THEN + abduction_gedanken_12
END

IF ~~ THEN abduction_gedanken_11
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN abduction_gedanken_12
SAY @123
IF ~~ THEN EXIT
END

END

//ask for Ajantis in the temple district

EXTEND_BOTTOM HELMPR 0 
+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhere","GLOBAL",0)~ + @163 DO ~SetGlobal("C#AjantisAskedWhere","GLOBAL",1)~ + afterbodhi
END 

APPEND HELMPR 
IF ~~ THEN afterbodhi
SAY @164
= @165
COPY_TRANS HELMPR 0
END
END