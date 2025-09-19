//Ajantis Core Romance Dialogues

// greeting, NPC-reactions

APPEND C#AjanJ

IF ~Global("C#AjantisLoveTalk","GLOBAL",2)~ THEN wieder_zusammen
SAY @0 
= @1
++ @2 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",3) RealSetGlobalTimer("C#AjantisRomanceTimer","GLOBAL",180)~ + wieder_zusammen_04
++ @3 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",3) RealSetGlobalTimer("C#AjantisRomanceTimer","GLOBAL",180)~ + wieder_zusammen_04
++ @4 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",3) RealSetGlobalTimer("C#AjantisRomanceTimer","GLOBAL",180)~ + wieder_zusammen_01
++ @5 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",3) RealSetGlobalTimer("C#AjantisRomanceTimer","GLOBAL",180)~ + wieder_zusammen_04
++ @6 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",3) RealSetGlobalTimer("C#AjantisRomanceTimer","GLOBAL",180)~ + wieder_zusammen_03
END

IF ~~ THEN wieder_zusammen_01
SAY @7
IF ~~ THEN + wieder_zusammen_04
END

IF ~~ THEN wieder_zusammen_02
SAY @8
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",2)~ + welcome_chain
END

IF ~~ THEN wieder_zusammen_03
SAY @9
++ @10 + rom_end_01
++ @11 + wieder_zusammen_02
END

IF ~~ THEN wieder_zusammen_04
SAY @12 
++ @13 + wieder_zusammen_02
++ @14 + wieder_zusammen_03
END

END


CHAIN 
IF ~~ THEN C#AjanJ welcome_chain
@15
== BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @16
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @17
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @18
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) !HasItem("MISC84","MINSC")~ THEN @19
== BKORGAN IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @20
== BEDWIN IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @21
== BHAERDA IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @22
== BNALIA IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @23
== BVALYGA IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @24
== BVICONI IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @25
== BYOSHIM IF ~InParty("yoshimo") InMyArea("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @26
== BMAZZY IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @27
== BCERND IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @28
== BJAN IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @29
== BIMOEN2 IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @30
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)~ THEN @31
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",1)~ THEN @32
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @33
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID) NumInPartyGT(3)~ THEN @34
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID) !NumInPartyGT(3)~ THEN @35
== C#AjanJ @36
EXIT




//-----------------------------------



/*What happened to you since we parted?*/

CHAIN
IF ~Global("C#AjantisLoveTalk","GLOBAL",4)~ THEN C#AjanJ hc_gefangenschaft
@37 
= @38 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",5) RealSetGlobalTimer("C#AjantisDialogPausenTimer","GLOBAL",200)~
== C#AjanJ IF ~GlobalGT("bd_plot","GLOBAL",0)~ THEN @1066
== C#AjanJ IF ~Global("C#IM_ImoenStays","GLOBAL",0)
OR(2)
Global("Chapter","GLOBAL",%bg2_chapter_1%)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ THEN @39 
== C#AjanJ IF ~Global("C#IM_ImoenStays","GLOBAL",0)
OR(2)
Global("Chapter","GLOBAL",%bg2_chapter_3%)
Global("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN @46
== C#AjanJ IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN @49
END
++ @40 + hc_gefangenschaft_02
++ @41 + hc_gefangenschaft_02
++ @42 + hc_gefangenschaft_03


APPEND C#AjanJ

IF ~~ THEN hc_gefangenschaft_02
SAY @43
IF ~~ THEN + hc_gefangenschaft_03_b
END

IF ~~ THEN hc_gefangenschaft_03
SAY @44
IF ~~ THEN + hc_gefangenschaft_03_b
END

IF ~~ THEN hc_gefangenschaft_03_b
SAY @45
IF ~Global("C#AjantisWhatHappened","LOCALS",1)~ THEN EXIT
IF ~Global("C#AjantisWhatHappened","LOCALS",0)~ THEN + hc_gefangenschaft_06
END

//hc_gefangenschaft_04

//hc_gefangenschaft_05

IF ~~ THEN hc_gefangenschaft_06
SAY @50
+ ~PartyHasItem("C#AJ0007")~ + @51 DO ~SetGlobal("C#AjantisWhatHappened","LOCALS",1)~ + hc_gefangenschaft_07
+ ~PartyHasItem("C#AJ0007")~ + @52 DO ~SetGlobal("C#AjantisWhatHappened","LOCALS",1)~ + hc_gefangenschaft_08
+ ~PartyHasItem("C#AJ0007")~ + @53 DO ~SetGlobal("C#AjantisWhatHappened","LOCALS",1)~ + hc_gefangenschaft_16
+ ~!PartyHasItem("C#AJ0007")~ + @52 DO ~SetGlobal("C#AjantisWhatHappened","LOCALS",1)~ + hc_gefangenschaft_10
+ ~!PartyHasItem("C#AJ0007")~ + @54 DO ~SetGlobal("C#AjantisWhatHappened","LOCALS",1)~ + hc_gefangenschaft_09
END

IF ~~ THEN hc_gefangenschaft_07
SAY @55
++ @56 + hc_gefangenschaft_12
++ @57 + hc_gefangenschaft_15
END

IF ~~ THEN hc_gefangenschaft_08
SAY @58
++ @56 + hc_gefangenschaft_12
++ @59 + hc_gefangenschaft_15
END

IF ~~ THEN hc_gefangenschaft_09
SAY @60
++ @56 + hc_gefangenschaft_12
+ ~Global("C#AjantisAlreadyKnighted","LOCALS",0)~ + @61 + hc_gefangenschaft_11
+ ~Global("C#AjantisAlreadyKnighted","LOCALS",1)~ + @62 + hc_gefangenschaft_11a
END

IF ~~ THEN hc_gefangenschaft_10
SAY @63
++ @56 + hc_gefangenschaft_12
+ ~Global("C#AjantisAlreadyKnighted","LOCALS",0)~ + @64 + hc_gefangenschaft_11
+ ~Global("C#AjantisAlreadyKnighted","LOCALS",1)~ + @65 + hc_gefangenschaft_11a
END

IF ~~ THEN hc_gefangenschaft_11
SAY @66
++ @67 + hc_gefangenschaft_20
++ @68 + hc_gefangenschaft_21
++ @69 + hc_gefangenschaft_22
END

IF ~~ THEN hc_gefangenschaft_11a
SAY @70
IF ~~ THEN + hc_gefangenschaft_17
END

IF ~~ THEN hc_gefangenschaft_12
SAY @71
IF ~Global("C#AjantisAlreadyKnighted","LOCALS",0)~ THEN + hc_gefangenschaft_13
IF ~Global("C#AjantisAlreadyKnighted","LOCALS",1)~ THEN + hc_gefangenschaft_14
END

IF ~~ THEN hc_gefangenschaft_13
SAY @72
++ @73 + hc_gefangenschaft_20
++ @68 + hc_gefangenschaft_21
++ @69 + hc_gefangenschaft_22
END

IF ~~ THEN hc_gefangenschaft_14
SAY @74
IF ~~ THEN + hc_gefangenschaft_17
END

IF ~~ THEN hc_gefangenschaft_15
SAY @75
++ @67 + hc_gefangenschaft_20
++ @68 + hc_gefangenschaft_21
++ @69 + hc_gefangenschaft_22 
END

IF ~~ THEN hc_gefangenschaft_16
SAY @76
IF ~Global("C#AjantisAlreadyKnighted","LOCALS",0)~ THEN + hc_gefangenschaft_16a
IF ~Global("C#AjantisAlreadyKnighted","LOCALS",1)~ THEN + hc_gefangenschaft_17a
END

IF ~~ THEN hc_gefangenschaft_16a
SAY @77
++ @67 + hc_gefangenschaft_20
++ @68 + hc_gefangenschaft_21
++ @69 + hc_gefangenschaft_22 
END

IF ~~ THEN hc_gefangenschaft_17
SAY @78
++ @79 + hc_gefangenschaft_19
++ @80 + hc_gefangenschaft_18
++ @81 + hc_gefangenschaft_18
END

IF ~~ THEN hc_gefangenschaft_17a
SAY @82
++ @79 + hc_gefangenschaft_19
++ @80 + hc_gefangenschaft_18
++ @81 + hc_gefangenschaft_18
END

IF ~~ THEN hc_gefangenschaft_18
SAY @83
IF ~~ THEN DO ~SetGlobal("C#AjantisAlreadyKnighted","LOCALS",1)~ EXIT
END

IF ~~ THEN hc_gefangenschaft_19
SAY @84
IF ~~ THEN DO ~SetGlobal("C#AjantisAlreadyKnighted","LOCALS",1)~ EXIT
END

IF ~~ THEN hc_gefangenschaft_19a
SAY @85
IF ~~ THEN DO ~SetGlobal("C#AjantisAlreadyKnighted","LOCALS",1)~ EXIT
END

IF ~~ THEN hc_gefangenschaft_20
SAY @86
++ @87 + hc_gefangenschaft_18
++ @88 + hc_gefangenschaft_18
++ @89 + hc_gefangenschaft_19a
END

IF ~~ THEN hc_gefangenschaft_21
SAY @90
= @91
++ @87 + hc_gefangenschaft_18
++ @92 + hc_gefangenschaft_19
++ @89 + hc_gefangenschaft_19
END

IF ~~ THEN hc_gefangenschaft_22
SAY @93
++ @79 + hc_gefangenschaft_19
++ @80 + hc_gefangenschaft_18
++ @81 + hc_gefangenschaft_18
END

//------------------------------------
//ring; if PC already asked via PID this talk starts at state "ring_necklace"


IF ~Global("C#AjantisLoveTalk","GLOBAL",6) PartyHasItem("C#AJ0008") Global("C#AjantisRingPID","LOCALS",1)~ THEN ring_01
SAY @94 
++ @95 DO ~TakePartyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",7)
SetGlobal("C#AjantisRingPID","LOCALS",2)~ + ring_03
++ @96 DO ~TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",7)
SetGlobal("C#AjantisRingPID","LOCALS",2)~ + ring_03
++ @97 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",7)
SetGlobal("C#AjantisRingPID","LOCALS",2)~ + ring_04
END

IF ~Global("C#AjantisLoveTalk","GLOBAL",6) !PartyHasItem("C#AJ0008") Global("C#AjantisRingPID","LOCALS",1)~ THEN ring_02
SAY @98 
+ ~GlobalGT("C#AjantisRomanceBG1Items","GLOBAL",2)~ + @99 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",7)
SetGlobal("C#AjantisRingPID","LOCALS",2)~ + ring_05
+ ~GlobalLT("C#AjantisRomanceBG1Items","GLOBAL",3)~ + @100 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",7)
SetGlobal("C#AjantisRingPID","LOCALS",2)~ + ring_06
+ ~GlobalLT("C#AjantisRomanceBG1Items","GLOBAL",3)~ + @101 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",7)
SetGlobal("C#AjantisRingPID","LOCALS",2)~ + ring_06
++ @102 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",7)
SetGlobal("C#AjantisRingPID","LOCALS",2)~ + ring_08
END

IF ~Global("C#AjantisLoveTalk","GLOBAL",6) Global("C#AjantisRingPID","LOCALS",2)
!PartyHasItem("X#AJRONE")~ THEN ring_nonecklace
SAY @103
IF ~~ THEN + ring_necklace_01
END

IF ~Global("C#AjantisLoveTalk","GLOBAL",6) Global("C#AjantisRingPID","LOCALS",2)
PartyHasItem("X#AJRONE")~ THEN ring_necklace
SAY @1062
IF ~~ THEN + ring_necklace_01
END

IF ~~ THEN ring_necklace_01
SAY @1061
++ @104 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",7)~ + ring_12
++ @105 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",7)~ + ring_13
++ @106 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",7)~ + ring_14
END

IF ~~ THEN ring_03
SAY @107
IF ~~ THEN + ring_07
END

IF ~~ THEN ring_04
SAY @108
++ @109 + ring_06
++ @110 + ring_10
+ ~PartyHasItem("C#AJ0008")~ + @111 DO ~TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)~ + ring_03
+ ~!PartyHasItem("C#AJ0008")~ + @112 + ring_09
END

IF ~~ THEN ring_05
SAY @113
++ @114 + ring_09
++ @115 + ring_06
++ @97 + ring_04
END

IF ~~ THEN ring_06
SAY @116
IF ~~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1)~ + ring_07a
END

IF ~~ THEN ring_07
SAY @117
++ @118 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_farbe
++ @119 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_farbe 
++ @120 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_farbe 
++ @121 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_farbe 
++ @122 + ring_farbe_01
++ @123 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1)~ + ring_farbe
++ @124 + ring_farbe_02
END

IF ~~ THEN ring_07a
SAY @125
++ @126 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_farbe
++ @127 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_farbe 
++ @120 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_farbe 
++ @121 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_farbe 
++ @122 + ring_farbe_01
++ @128 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1)~ + ring_farbe
++ @124 + ring_farbe_02
END

IF ~~ THEN ring_farbe
SAY @129
IF ~~ THEN + ring_necklace
END

IF ~~ THEN ring_farbe_01
SAY @130
++ @131 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_farbe
++ @132 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_farbe 
++ @133 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_farbe 
++ @134 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_farbe 
++ @135 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1)~ + ring_farbe
++ @136 DO ~SetGlobal("C#AjantisRing11B","GLOBAL",1)~ + ring_farbe
++ @137 DO ~SetGlobal("C#AjantisRingFarblos","GLOBAL",1)~ + ring_farbe_02
END

IF ~~ THEN ring_farbe_02
SAY @138 
IF ~~ THEN DO ~SetGlobal("C#AjantisRingFarbe","GLOBAL",1)~ UNSOLVED_JOURNAL @10003 + ring_necklace
END

IF ~~ THEN ring_08
SAY @139
IF ~~ THEN + ring_05
END

IF ~~ THEN ring_09
SAY @140
IF ~~ THEN DO ~SetGlobal("C#AjantisWartetRing","GLOBAL",1)~ UNSOLVED_JOURNAL @10004 + ring_07
END

IF ~~ THEN ring_10
SAY @141
++ @142 + rom_end_01
++ @143 + ring_11
END

IF ~~ THEN ring_10b
SAY @144
++ @145 + ring_10c
++ @146 + ring_10c
++ @147 + ring_10c
++ @143 + ring_11
END

IF ~~ THEN ring_10c
SAY @148
IF ~~ THEN + rom_end_01
END

IF ~~ THEN ring_11
SAY @149
++ @150 + ring_06
+ ~PartyHasItem("C#AJ0008")~ + @151 DO ~TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)~ + ring_03
+ ~!PartyHasItem("C#AJ0008")~ + @152 + ring_09
END

IF ~~ THEN ring_12
SAY @153
= @154
= @155
IF ~~ THEN EXIT
END

IF ~~ THEN ring_13
SAY @156
IF ~~ THEN EXIT
END

IF ~~ THEN ring_14
SAY @157
IF ~~ THEN + ring_13
END

//-------------------------------------------

/* repeated question for the engagement ring specifications. starts at "_07" 
Either triggered from LT "messenger" or via C#Ajan.bcs if the ring pieces (C#AJ0008.itm) are in the inventory for more than 20 min. */

IF ~Global("C#AjantisFragtWegenRing","GLOBAL",2)~ THEN ring_nachfrage_07
SAY @158 
++ @159 DO ~SetGlobal("C#AjantisFragtWegenRing","GLOBAL",3)~ + ring_nachfrage_08
++ @160 DO ~SetGlobal("C#AjantisFragtWegenRing","GLOBAL",3)~ + ring_nachfrage_09
END

IF ~~ THEN ring_nachfrage_08
SAY @161
IF ~!Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisWartetRing","GLOBAL",2) SetGlobal("C#AjantisWartetRingPID","LOCALS",2) TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)
EraseJournalEntry(@10004)~ EXIT
IF ~Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisWartetRing","GLOBAL",2) SetGlobal("C#AjantisWartetRingPID","LOCALS",2) TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1) EraseJournalEntry(@10004)~ + ring_nachfrage_10
END

IF ~~ THEN ring_nachfrage_09
SAY @162
IF ~!Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1) SetGlobal("C#AjantisWartetRing","GLOBAL",2) SetGlobal("C#AjantisWartetRingPID","LOCALS",2) EraseJournalEntry(@10004)~ EXIT
IF ~Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1) SetGlobal("C#AjantisWartetRing","GLOBAL",2) SetGlobal("C#AjantisWartetRingPID","LOCALS",2) EraseJournalEntry(@10004)~ + ring_nachfrage_10
END

IF ~~ THEN ring_nachfrage_10
SAY @163
++ @164 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_nachfrage_11
++ @165 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_nachfrage_11 
++ @120 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_nachfrage_11
++ @121 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_nachfrage_11 
+ ~Global("C#AjantisRingFarblos","GLOBAL",0)~ + @122 DO ~SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_nachfrage_12
+ ~Global("C#AjantisRingFarblos","GLOBAL",1)~ + @166 DO ~SetGlobal("C#AjantisRing11B","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)
SetGlobal("C#AjantisRingFarblos","GLOBAL",0)~ + ring_nachfrage_11
++ @128 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_nachfrage_11
++ @167 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_nachfrage_13
END

IF ~~ THEN ring_nachfrage_11
SAY @168
IF ~~ THEN DO ~EraseJournalEntry(@10003)~ EXIT
END

IF ~~ THEN ring_nachfrage_12
SAY @130
++ @131 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_nachfrage_11
++ @132 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_nachfrage_11 
++ @133 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_nachfrage_11 
++ @134 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_nachfrage_11 
++ @135 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1)~ + ring_nachfrage_11
++ @136 DO ~SetGlobal("C#AjantisRing11B","GLOBAL",1)~ + ring_nachfrage_11
END

IF ~~ THEN ring_nachfrage_13
SAY @169 
IF ~~ THEN DO ~EraseJournalEntry(@10003)~ EXIT
END

IF ~~ THEN ring_nachfrage_14
SAY @170
IF ~!Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1)~ EXIT
IF ~Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1)~ + ring_nachfrage_10
END


//-------------
/*  Extradialog über Arans Wissen um CHARNAMEs Entführung 

"C#AjantisAranKnew" 
1 - Ajantis hears it from Aran himself 
2: triggers this dialogue, Ajantis didn't hear it himself
3: Ajantis heard Aran himself and triggers this dialogue


"C#Suche01d"
0 - none of both talks triggered yet.
1 - PC and Ajantis talked about the pricipal possibility in LT 8. No knowledge about Aran's knowledge yet.
2 - PC and Ajantis talked about the knowledge, either dialogue, no insult
3 - PC and Ajantis talked about it in the Aran talk - insult

*/


IF ~Global("C#AjantisAranKnew","GLOBAL",3)~ THEN entfuehrung
SAY @171 
IF ~~ THEN DO ~SetGlobal("C#AjantisAranKnew","GLOBAL",4) SetGlobal("C#Suche01d","LOCALS",2)~ + entfuehrung_00
END

IF ~Global("C#AjantisAranKnew","GLOBAL",2)~ THEN entfuehrung
SAY @173 
IF ~~ THEN DO ~SetGlobal("C#AjantisAranKnew","GLOBAL",4) SetGlobal("C#Suche01d","LOCALS",2)~ + entfuehrung_00
END

IF ~~ THEN entfuehrung_00
SAY @174
= @175
++ @176 + entfuehrung_01
++ @177 + entfuehrung_02
++ @178 + entfuehrung_03
++ @179 + entfuehrung_04
+ ~Global("C#Suche01d","LOCALS",0)~ + @209  /* ~Well, you obviously lacked the wisdom to cooperate with the *right* people on this matter, Ajantis!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + entfuehrung_07
+ ~Global("C#Suche01d","LOCALS",0)~ + @211  /* ~Rather than wait for the information to come to you, you could have just gone to them!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + entfuehrung_07
END

IF ~~ THEN entfuehrung_01
SAY @180
IF ~~ THEN + entfuehrung_06
END


IF ~~ THEN entfuehrung_02
SAY @181
IF ~~ THEN + entfuehrung_06
END


IF ~~ THEN entfuehrung_03
SAY @182
IF ~~ THEN + entfuehrung_06
END


IF ~~ THEN entfuehrung_04
SAY @183
++ @177 + entfuehrung_02
++ @178 + entfuehrung_03
+ ~Global("C#Suche01d","LOCALS",0)~ + @209  /* ~Well, you obviously lacked the wisdom to cooperate with the *right* people on this matter, Ajantis!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + entfuehrung_07
+ ~Global("C#Suche01d","LOCALS",0)~ + @211  /* ~Rather than wait for the information to come to you, you could have just gone to them!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + entfuehrung_07
END

IF ~~ THEN entfuehrung_05
SAY @184
IF ~~ THEN + entfuehrung_06
END

IF ~~ THEN entfuehrung_06
SAY @1064
IF ~~ THEN EXIT 
END

IF ~~ THEN entfuehrung_07
SAY @217
IF ~~ THEN + entfuehrung_08
END

IF ~~ THEN entfuehrung_08
SAY @218
++ @219 + entfuehrung_11
++ @220 + entfuehrung_12
++ @221 + entfuehrung_09
END

IF ~~ THEN entfuehrung_09
SAY @222
++ @223 + entfuehrung_11
++ @224 + entfuehrung_10
END

IF ~~ THEN entfuehrung_10
SAY @144
++ @145 + ring_10c
++ @146 + ring_10c
++ @147 + ring_10c
++ @143 + entfuehrung_11
END

IF ~~ THEN entfuehrung_11
SAY @225
IF ~~ THEN + entfuehrung_05
END

IF ~~ THEN entfuehrung_12
SAY @229
++ @219 + entfuehrung_11
++ @221 + entfuehrung_09
END


//-----------------------------------------------

/*I searched high and low!*/


IF ~Global("C#AjantisLoveTalk","GLOBAL",8)~ THEN suche
SAY @185 
++ @186 DO ~SetGlobal("C#AjantisHisSearchPID","LOCALS",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",9)~ + suche_01
++ @187 DO ~SetGlobal("C#AjantisHisSearchPID","LOCALS",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",9)~ + suche_02
++ @188 DO ~SetGlobal("C#Suche01b","LOCALS",1) SetGlobal("C#AjantisHisSearchPID","LOCALS",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",9)~ + suche_01b
+ ~OR(2)
	Global("C#Suche01d","LOCALS",2)
	Global("C#Suche01d","LOCALS",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",3) SetGlobal("C#AjantisHisSearchPID","LOCALS",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",9)~ + suche_01d3
END

IF ~~ THEN suche_01
SAY @189
++ @190 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
++ @191 DO ~SetGlobal("C#Suche01b","LOCALS",1)~ + suche_01b
++ @192  DO ~SetGlobal("C#Suche01e","LOCALS",1)~ + suche_01e

+ ~Global("C#Suche01d","LOCALS",0)  GlobalGT("AranJob","GLOBAL",2)~ + @1065 /* ~I don't mean to insult you, but it is a *fact* that the Shadow Thieves knew about my abduction, an information that would have helped you in your search.~ */ DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_03b
+ ~Global("C#Suche01d","LOCALS",0) GlobalLT("AranJob","GLOBAL",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d
+ ~Global("C#Suche01d","LOCALS",0) GlobalGT("AranJob","GLOBAL",2)~ + @197 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d2

+ ~OR(2)
	Global("C#Suche01d","LOCALS",2)
	Global("C#Suche01d","LOCALS",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_01d3
+ ~Global("C#Suche01d","LOCALS",2)~ + @209  /* ~Well, you obviously lacked the wisdom to cooperate with the *right* people on this matter, Ajantis!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03
+ ~Global("C#Suche01d","LOCALS",2)~ + @211  /* ~Rather than wait for the information to come to you, you could have just gone to them!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03

END

IF ~~ THEN suche_01a
SAY @193
+ ~Global("C#Suche01b","LOCALS",0)~ + @194 + suche_01b
+ ~Global("C#Suche01b","LOCALS",1)~ + @195 DO ~SetGlobal("C#Suche01b","LOCALS",2)~ + suche_01c

+ ~Global("C#Suche01e","LOCALS",0)~ + @192  DO ~SetGlobal("C#Suche01e","LOCALS",1)~ + suche_01e
+ ~Global("C#Suche01b","LOCALS",2) Global("C#Suche01d","LOCALS",1) Global("C#Suche01e","LOCALS",1)~ + @198 + suche_08

+ ~Global("C#Suche01d","LOCALS",0)  GlobalGT("AranJob","GLOBAL",2)~ + @1065 /* ~I don't mean to insult you, but it is a *fact* that the Shadow Thieves knew about my abduction, an information that would have helped you in your search.~ */ DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_03b
+ ~Global("C#Suche01d","LOCALS",0) GlobalLT("AranJob","GLOBAL",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d
+ ~Global("C#Suche01d","LOCALS",0) GlobalGT("AranJob","GLOBAL",2)~ + @197 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d2

+ ~OR(2)
	Global("C#Suche01d","LOCALS",2)
	Global("C#Suche01d","LOCALS",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_01d3
+ ~Global("C#Suche01d","LOCALS",2)~ + @209  /* ~Well, you obviously lacked the wisdom to cooperate with the *right* people on this matter, Ajantis!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03
+ ~Global("C#Suche01d","LOCALS",2)~ + @211  /* ~Rather than wait for the information to come to you, you could have just gone to them!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03

++ @979 + suche_09
++ @199 + suche_07
END

IF ~~ THEN suche_01b
SAY @200
+ ~Global("C#Suche01a","LOCALS",0) !Global("C#Suche01b","LOCALS",2)~ + @201 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01a","LOCALS",0) Global("C#Suche01b","LOCALS",2)~ + @202 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~!Global("C#Suche01b","LOCALS",2)~ + @195 DO ~SetGlobal("C#Suche01b","LOCALS",2)~ + suche_01c

+ ~Global("C#Suche01d","LOCALS",0)  GlobalGT("AranJob","GLOBAL",2)~ + @1065 /* ~I don't mean to insult you, but it is a *fact* that the Shadow Thieves knew about my abduction, an information that would have helped you in your search.~ */ DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_03b
+ ~Global("C#Suche01d","LOCALS",0) GlobalLT("AranJob","GLOBAL",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d
+ ~Global("C#Suche01d","LOCALS",0) GlobalGT("AranJob","GLOBAL",2)~ + @197 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d2

+ ~OR(2)
	Global("C#Suche01d","LOCALS",2)
	Global("C#Suche01d","LOCALS",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_01d3
+ ~Global("C#Suche01d","LOCALS",2)~ + @209  /* ~Well, you obviously lacked the wisdom to cooperate with the *right* people on this matter, Ajantis!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03
+ ~Global("C#Suche01d","LOCALS",2)~ + @211  /* ~Rather than wait for the information to come to you, you could have just gone to them!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03

+ ~Global("C#Suche01e","LOCALS",0)~ + @192  DO ~SetGlobal("C#Suche01e","LOCALS",1)~ + suche_01e
+ ~Global("C#Suche01a","LOCALS",1) Global("C#Suche01b","LOCALS",2) Global("C#Suche01d","LOCALS",1) Global("C#Suche01e","LOCALS",1)~ + @198 + suche_08
++ @979 + suche_09
++ @199 + suche_07
END

IF ~~ THEN suche_01c
SAY @203
+ ~Global("C#Suche01a","LOCALS",0) !Global("C#Suche01b","LOCALS",2)~ + @204 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01a","LOCALS",0) Global("C#Suche01b","LOCALS",2)~ + @205 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a

+ ~Global("C#Suche01d","LOCALS",0)  GlobalGT("AranJob","GLOBAL",2)~ + @1065 /* ~I don't mean to insult you, but it is a *fact* that the Shadow Thieves knew about my abduction, an information that would have helped you in your search.~ */ DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_03b
+ ~Global("C#Suche01d","LOCALS",0) GlobalLT("AranJob","GLOBAL",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d
+ ~Global("C#Suche01d","LOCALS",0) GlobalGT("AranJob","GLOBAL",2)~ + @197 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d2

+ ~OR(2)
	Global("C#Suche01d","LOCALS",2)
	Global("C#Suche01d","LOCALS",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_01d3
+ ~Global("C#Suche01d","LOCALS",2)~ + @209  /* ~Well, you obviously lacked the wisdom to cooperate with the *right* people on this matter, Ajantis!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03
+ ~Global("C#Suche01d","LOCALS",2)~ + @211  /* ~Rather than wait for the information to come to you, you could have just gone to them!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03

+ ~Global("C#Suche01e","LOCALS",0)~ + @192  DO ~SetGlobal("C#Suche01e","LOCALS",1)~ + suche_01e
+ ~Global("C#Suche01a","LOCALS",1) Global("C#Suche01d","LOCALS",1) Global("C#Suche01e","LOCALS",1)~ + @198 + suche_08
++ @979 + suche_09
++ @199 + suche_07
END

IF ~~ THEN suche_01d
SAY @206
+ ~Global("C#Suche01a","LOCALS",0) !Global("C#Suche01b","LOCALS",2)~ + @207 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01a","LOCALS",0) Global("C#Suche01b","LOCALS",2)~ + @208 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
++ @209 DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03
+ ~Global("C#Suche01e","LOCALS",0)~ + @192  DO ~SetGlobal("C#Suche01e","LOCALS",1)~ + suche_01e
+ ~Global("C#Suche01a","LOCALS",1) Global("C#Suche01b","LOCALS",2) Global("C#Suche01d","LOCALS",1) Global("C#Suche01e","LOCALS",1)~ + @198 + suche_08
++ @979 + suche_09
++ @199 + suche_07
END

IF ~~ THEN suche_01d2
SAY @210
+ ~Global("C#Suche01a","LOCALS",0) !Global("C#Suche01b","LOCALS",2)~ + @207 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01a","LOCALS",0) Global("C#Suche01b","LOCALS",2)~ + @208 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
++ @209 DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03
++ @211 DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03
+ ~Global("C#Suche01e","LOCALS",0)~ + @192  DO ~SetGlobal("C#Suche01e","LOCALS",1)~ + suche_01e
+ ~Global("C#Suche01a","LOCALS",1) Global("C#Suche01b","LOCALS",2) Global("C#Suche01d","LOCALS",1) Global("C#Suche01e","LOCALS",1)~ + @198 + suche_08
++ @979 + suche_09
++ @199 + suche_07
END

IF ~~ THEN suche_01d3
SAY @1063 /* ~I know very well what you are referring to. We... we already discussed about this, love. Believe me when I say that it aches me to know that the information about your distress was so near and yet so far away from me.~ */
+ ~Global("C#Suche01a","LOCALS",0) !Global("C#Suche01b","LOCALS",2)~ + @207 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01a","LOCALS",0) Global("C#Suche01b","LOCALS",2)~ + @208 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01e","LOCALS",0)~ + @192  DO ~SetGlobal("C#Suche01e","LOCALS",1)~ + suche_01e
+ ~Global("C#Suche01a","LOCALS",1) Global("C#Suche01b","LOCALS",2) Global("C#Suche01d","LOCALS",1) Global("C#Suche01e","LOCALS",1)~ + @198 + suche_08
++ @979 + suche_09
++ @199 + suche_07
END

IF ~~ THEN suche_01e
SAY @212
+ ~Global("C#Suche01a","LOCALS",0) !Global("C#Suche01b","LOCALS",2)~ + @201 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01a","LOCALS",0) Global("C#Suche01b","LOCALS",2)~ + @213 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01b","LOCALS",0)~ + @194 DO ~SetGlobal("C#Suche01b","LOCALS",1)~ + suche_01b
+ ~Global("C#Suche01b","LOCALS",1)~ + @195 DO ~SetGlobal("C#Suche01b","LOCALS",2)~ + suche_01c
+ ~Global("C#Suche01d","LOCALS",0)  GlobalGT("AranJob","GLOBAL",2)~ + @1065 /* ~I don't mean to insult you, but it is a *fact* that the Shadow Thieves knew about my abduction, an information that would have helped you in your search.~ */ DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_03b
+ ~Global("C#Suche01d","LOCALS",0) GlobalLT("AranJob","GLOBAL",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d
+ ~Global("C#Suche01d","LOCALS",0) GlobalGT("AranJob","GLOBAL",2)~ + @197 DO ~SetGlobal("C#Suche01d","LOCALS",1)~ + suche_01d2

+ ~OR(2)
	Global("C#Suche01d","LOCALS",2)
	Global("C#Suche01d","LOCALS",3)~ + @196 DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_01d3
+ ~Global("C#Suche01d","LOCALS",2)~ + @209  /* ~Well, you obviously lacked the wisdom to cooperate with the *right* people on this matter, Ajantis!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03
+ ~Global("C#Suche01d","LOCALS",2)~ + @211  /* ~Rather than wait for the information to come to you, you could have just gone to them!~ */ DO ~SetGlobal("C#Suche01d","LOCALS",3)~ + suche_03

+ ~Global("C#Suche01a","LOCALS",1) Global("C#Suche01b","LOCALS",2) Global("C#Suche01d","LOCALS",1)~ + @198 + suche_08
++ @979 + suche_09
++ @199 + suche_07
END

IF ~~ THEN suche_02
SAY @214
++ @215 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
++ @191 DO ~SetGlobal("C#Suche01b","LOCALS",1)~ + suche_01b
+ ~Global("C#Suche01e","LOCALS",0)~ + @192  DO ~SetGlobal("C#Suche01e","LOCALS",1)~ + suche_01e
++ @979 + suche_09
++ @216 + suche_07
END

IF ~~ THEN suche_03
SAY @217
IF ~~ THEN + suche_03b
END

IF ~~ THEN suche_03b
SAY @218
++ @219 + suche_05 
++ @220 + suche_06
++ @221 + suche_04  
END

IF ~~ THEN suche_04
SAY @222
++ @223 + suche_05 
++ @224 + suche_04b
END

IF ~~ THEN suche_04b
SAY @144
++ @145 + ring_10c
++ @146 + ring_10c
++ @147 + ring_10c
++ @143 + suche_05 
END

IF ~~ THEN suche_05
SAY @225
+ ~Global("C#Suche01a","LOCALS",0) !Global("C#Suche01b","LOCALS",2)~ + @226 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01a","LOCALS",0) Global("C#Suche01b","LOCALS",2)~ + @227 DO ~SetGlobal("C#Suche01a","LOCALS",1)~ + suche_01a
+ ~Global("C#Suche01b","LOCALS",0)~ + @194 DO ~SetGlobal("C#Suche01b","LOCALS",1)~ + suche_01b
+ ~Global("C#Suche01b","LOCALS",1)~ + @195 DO ~SetGlobal("C#Suche01b","LOCALS",2)~ + suche_01c
+ ~Global("C#Suche01a","LOCALS",1) Global("C#Suche01b","LOCALS",2)~ + @198 + suche_08
++ @228 + suche_07
END

IF ~~ THEN suche_06
SAY @229
++ @219 + suche_05 
++ @221 + suche_04  
END

IF ~~ THEN suche_07
SAY @230
IF ~~ THEN EXIT
END

IF ~~ THEN suche_08
SAY @231
IF ~~ THEN EXIT
END

IF ~~ THEN suche_09
SAY @980
IF ~~ THEN EXIT
END



//---------------------------
/*Windspear illusions*/

IF ~Global("C#AjantisLoveTalk","GLOBAL",10)~ THEN windspeerkampf
SAY @232 
++ @233 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",11)~ + windspeerkampf_01
++ @234 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",11)~ + windspeerkampf_01
++ @235 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",11)~ + windspeerkampf_01
++ @236 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",11)~ + windspeerkampf_04
++ @237 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",11)~ + windspeerkampf_03
END

IF ~~ THEN windspeerkampf_01
SAY @238
= @239
++ @240 + windspeerkampf_02
+ ~Global("C#AjantisWindspearBody","LOCALS",0)~ + @241 + windspeerkampf_06
+ ~Class(Player1,PALADIN) Global("C#AjantisWindspearBodyPal","GLOBAL",0)~ + @242 + windspeerkampf_06b
+ ~Class(Player1,PALADIN) Global("C#AjantisWindspearBodyPal","GLOBAL",1)~ + @243 + windspeerkampf_07e
++ @244 + windspeerkampf_10
++ @245 + windspeerkampf_09
END

IF ~~ THEN windspeerkampf_02
SAY @246
+ ~Global("C#AjantisWindspearBody","LOCALS",0)~ + @247 + windspeerkampf_06
+ ~Global("C#AjantisWindspearBody","LOCALS",1)~ + @247 + windspeerkampf_07b
+ ~Global("C#AjantisWindspearBody","LOCALS",0)~ + @241 + windspeerkampf_06
+ ~Class(Player1,PALADIN) Global("C#AjantisWindspearBodyPal","GLOBAL",0)~ + @242 + windspeerkampf_06b
+ ~Class(Player1,PALADIN) Global("C#AjantisWindspearBodyPal","GLOBAL",1)~ + @243 + windspeerkampf_07e
++ @245 + windspeerkampf_09
END

IF ~~ THEN windspeerkampf_03
SAY @248
IF ~~ THEN + windspeerkampf_05
END

IF ~~ THEN windspeerkampf_04
SAY @249
IF ~~ THEN + windspeerkampf_05
END

IF ~~ THEN windspeerkampf_05
SAY @250
++ @240 + windspeerkampf_02
+ ~Global("C#AjantisWindspearBody","LOCALS",0)~ + @241 + windspeerkampf_06
+ ~Global("C#AjantisWindspearBody","LOCALS",1)~ + @247 + windspeerkampf_07b
+ ~Class(Player1,PALADIN) Global("C#AjantisWindspearBodyPal","GLOBAL",0)~ + @242 + windspeerkampf_06b
+ ~Class(Player1,PALADIN) Global("C#AjantisWindspearBodyPal","GLOBAL",1)~ + @243 + windspeerkampf_07e
++ @244 + windspeerkampf_10
++ @245 + windspeerkampf_09
END

IF ~~ THEN windspeerkampf_06
SAY @251
++ @252 DO ~SetGlobal("C#AjantisWindspearBody","LOCALS",1)~ + windspeerkampf_07
++ @253 DO ~SetGlobal("C#AjantisWindspearBody","LOCALS",1)~ + windspeerkampf_07
+ ~Class(Player1,PALADIN)~ + @242 DO ~SetGlobal("C#AjantisWindspearBody","LOCALS",1)~ + windspeerkampf_07d
++ @254 DO ~SetGlobal("C#AjantisWindspearBody","LOCALS",1)~ + windspeerkampf_07c
END

IF ~~ THEN windspeerkampf_06b
SAY @255
++ @252 DO ~SetGlobal("C#AjantisWindspearBody","LOCALS",1)~ + windspeerkampf_07
++ @253 DO ~SetGlobal("C#AjantisWindspearBody","LOCALS",1)~ + windspeerkampf_07
++ @243 + windspeerkampf_07e
++ @254 DO ~SetGlobal("C#AjantisWindspearBody","LOCALS",1)~ + windspeerkampf_07c
END

IF ~~ THEN windspeerkampf_07
SAY @256
IF ~~ THEN + windspeerkampf_08
END

IF ~~ THEN windspeerkampf_07b
SAY @257
IF ~~ THEN + windspeerkampf_08
END

IF ~~ THEN windspeerkampf_07c
SAY @258
IF ~~ THEN + windspeerkampf_08
END

IF ~~ THEN windspeerkampf_07d
SAY @259
IF ~~ THEN + windspeerkampf_08
END

IF ~~ THEN windspeerkampf_07e
SAY @260
IF ~~ THEN + windspeerkampf_08
END

IF ~~ THEN windspeerkampf_08
SAY @261
++ @262 + windspeerkampf_12
++ @263 + windspeerkampf_13
++ @264 + windspeerkampf_14
++ @265 + windspeerkampf_15
END

IF ~~ THEN windspeerkampf_09
SAY @266
IF ~~ THEN EXIT
END

IF ~~ THEN windspeerkampf_10
SAY @267
+ ~Global("C#AjantisWindspearBody","LOCALS",0)~ + @268 DO ~SetGlobal("C#AjantisWindspearBody","LOCALS",1)~ + windspeerkampf_07
+ ~Global("C#AjantisWindspearBody","LOCALS",1)~ + @268 + windspeerkampf_17
++ @269 + windspeerkampf_11
END

IF ~~ THEN windspeerkampf_11
SAY @270
++ @271 + windspeerkampf_17
++ @272 + windspeerkampf_16
END

IF ~~ THEN windspeerkampf_12
SAY @273
IF ~~ THEN EXIT
END

IF ~~ THEN windspeerkampf_13
SAY @274
IF ~~ THEN EXIT
END

IF ~~ THEN windspeerkampf_14
SAY @275
++ @262 + windspeerkampf_12
++ @263 + windspeerkampf_13
++ @265 + windspeerkampf_15
END

IF ~~ THEN windspeerkampf_15
SAY @276
IF ~~ THEN EXIT
END

IF ~~ THEN windspeerkampf_16
SAY @277
++ @142 + windspeerkampf_16b
++ @143 + windspeerkampf_17 
END

IF ~~ THEN windspeerkampf_16b
SAY @144
++ @145 + ring_10c
++ @146 + ring_10c
++ @147 + ring_10c
++ @143 + windspeerkampf_17 
END


IF ~~ THEN windspeerkampf_17
SAY @278
IF ~~ THEN + windspeerkampf_08
END


//--------------------------------

/* Firkraag tricked the knights 
For "Global("C#AjantisFirkraagKidnapPID","LOCALS",1)" (via PID) dialogue starts at "taeuschung_04" */

IF ~Global("C#AjantisLoveTalk","GLOBAL",12) Global("C#AjantisFirkraagKidnapPID","LOCALS",0)~ THEN taeuschung
SAY @279 
++ @280 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_03
++ @281 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_06
++ @282 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_05
++ @283 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_05
END

IF ~~ THEN taeuschung_01
SAY @284
++ @285 + taeuschung_15
++ @286 + taeuschung_16
+ ~!Class(Player1,PALADIN)~ + @287 + taeuschung_17
++ @288 + taeuschung_18
++ @289 + taeuschung_08b
END

IF ~~ THEN taeuschung_02
SAY @290
++ @291 + taeuschung_01
++ @292 + taeuschung_01
++ @293 + taeuschung_01
END

IF ~~ THEN taeuschung_03
SAY @294
++ @295 + taeuschung_06
+ ~Global("C#AjantisEleianaPID","LOCALS",0)~ + @296 DO ~SetGlobal("C#AjantisEleianaPID","LOCALS",1)~ + taeuschung_09
+ ~Global("C#AjantisRitterinnenPID","LOCALS",0) Global("C#AjantisRitterinnenAjan","GLOBAL",0)~ + @297 DO ~SetGlobal("C#AjantisRitterinnenPID","LOCALS",1)~ + taeuschung_10
+ ~Global("C#AjantisRitterinnenPID","LOCALS",0) Global("C#AjantisRitterinnenAjan","GLOBAL",1)~ + @297 DO ~SetGlobal("C#AjantisRitterinnenPID","LOCALS",1)~ + taeuschung_11
++ @298 + taeuschung_05
END

IF ~Global("C#AjantisLoveTalk","GLOBAL",12) Global("C#AjantisFirkraagKidnapPID","LOCALS",1)~ THEN taeuschung_04
SAY @299
++ @300 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_01
++ @292 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_01
++ @293 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_01
++ @301 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_02
++ @302 DO ~SetGlobal("C#AjantisTaeuschung1","LOCALS",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",13)~ + taeuschung_07
END

IF ~~ THEN taeuschung_05
SAY @303
IF ~~ THEN + taeuschung_04
END

IF ~~ THEN taeuschung_06
SAY @304
= @305
IF ~~ THEN + taeuschung_04
END

IF ~~ THEN taeuschung_07
SAY @306
++ @285 + taeuschung_15
++ @286 + taeuschung_16
+ ~!Class(Player1,PALADIN)~ + @287 + taeuschung_17
++ @288 + taeuschung_18
++ @307 + taeuschung_08
END

IF ~~ THEN taeuschung_08
SAY @308
IF ~~ THEN EXIT
END

IF ~~ THEN taeuschung_08b
SAY @309
IF ~~ THEN EXIT
END

IF ~~ THEN taeuschung_09
SAY @310
++ @311 + taeuschung_06
+ ~Global("C#AjantisRitterinnenPID","LOCALS",0) Global("C#AjantisRitterinnenAjan","GLOBAL",0)~ + @297 DO ~SetGlobal("C#AjantisRitterinnenPID","LOCALS",1)~ + taeuschung_10
+ ~Global("C#AjantisRitterinnenPID","LOCALS",0) Global("C#AjantisRitterinnenAjan","GLOBAL",1)~ + @297 DO ~SetGlobal("C#AjantisRitterinnenPID","LOCALS",1)~ + taeuschung_11
++ @312 + taeuschung_05
END

IF ~~ THEN taeuschung_10
SAY @313
++ @314 + taeuschung_13
++ @315 + taeuschung_12
++ @316 + taeuschung_13
END

IF ~~ THEN taeuschung_11
SAY @317
++ @314 + taeuschung_13
++ @315 + taeuschung_12
++ @316 + taeuschung_13
END

IF ~~ THEN taeuschung_12
SAY @318
++ @319 + taeuschung_14
++ @320 + taeuschung_14
++ @321 + taeuschung_14
++ @316 + taeuschung_14
END

IF ~~ THEN taeuschung_13
SAY @322
++ @323 + taeuschung_06
+ ~Global("C#AjantisEleianaPID","LOCALS",0)~ + @296 DO ~SetGlobal("C#AjantisEleianaPID","LOCALS",1)~ + taeuschung_09
++ @324 + taeuschung_05
END

IF ~~ THEN taeuschung_14
SAY @325
= @326
++ @323 + taeuschung_06
+ ~Global("C#AjantisEleianaPID","LOCALS",0)~ + @296 DO ~SetGlobal("C#AjantisEleianaPID","LOCALS",1)~ + taeuschung_09
++ @327 + taeuschung_05
END

IF ~~ THEN taeuschung_15
SAY @328
++ @286 + taeuschung_16
+ ~!Class(Player1,PALADIN)~ + @287 + taeuschung_17
++ @288 + taeuschung_18
+ ~Global("C#AjantisTaeuschung1","LOCALS",1)~ + @289 + taeuschung_08
+ ~Global("C#AjantisTaeuschung1","LOCALS",0)~ + @289 + taeuschung_08b
END

IF ~~ THEN taeuschung_16
SAY @329
IF ~~ THEN EXIT
END


IF ~~ THEN taeuschung_17
SAY @330
= @331
IF ~~ THEN EXIT
END

IF ~~ THEN taeuschung_18
SAY @332
IF ~~ THEN EXIT
END


//---------------------------------

/* more thoughts about the Firkraag illusions, "honour and falling" */

IF ~Global("C#AjantisLoveTalk","GLOBAL",14)~ THEN paladin_ehre
SAY @333 
++ @334 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",15)~ + paladin_ehre_04
++ @335 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",15)~ + paladin_ehre_04
++ @336 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",15)~ + paladin_ehre_11
++ @337 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",15)~ + paladin_ehre_02
++ @338 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",15)~ + paladin_ehre_01
END

IF ~~ THEN paladin_ehre_01
SAY @339
IF ~!Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06
IF ~Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06a
IF ~GlobalGT("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06b
END

IF ~~ THEN paladin_ehre_02
SAY @340
IF ~GlobalGT("udDrowPlot","GLOBAL",99)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN + paladin_ehre_03
IF ~OR(2)
GlobalLT("udDrowPlot","GLOBAL",100)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%)~ + paladin_ehre_05
END

IF ~~ THEN paladin_ehre_03
SAY @341
IF ~!Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06
IF ~Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06a
IF ~GlobalGT("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06b
END

IF ~~ THEN paladin_ehre_04
SAY @342 
IF ~!Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06
IF ~Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06a
IF ~GlobalGT("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06b
END

IF ~~ THEN paladin_ehre_05
SAY @343
IF ~!Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06
IF ~Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06a
IF ~GlobalGT("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06b
END

IF ~~ THEN paladin_ehre_06
SAY @344
++ @345 + paladin_ehre_07
++ @346 + paladin_ehre_10
++ @347 + paladin_ehre_08b
END

IF ~~ THEN paladin_ehre_06a
SAY @348
++ @349 + paladin_ehre_08
++ @350 + paladin_ehre_07
++ @351 + paladin_ehre_10
++ @347 + paladin_ehre_08b
END

IF ~~ THEN paladin_ehre_06b
SAY @352
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_ehre_07
SAY @353
++ @354 + paladin_ehre_09
+ ~!Class(Player1,PALADIN)~ + @355 + paladin_ehre_08
+ ~Class(Player1,PALADIN)~ + @356 + paladin_ehre_08
++ @357 + paladin_ehre_08
END

IF ~~ THEN paladin_ehre_08
SAY @358
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_ehre_08b
SAY @359
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_ehre_09
SAY @360
+ ~!Class(Player1,PALADIN)~ + @355 + paladin_ehre_08
+ ~Class(Player1,PALADIN)~ + @356 + paladin_ehre_08
++ @357 + paladin_ehre_08
END

IF ~~ THEN paladin_ehre_10
SAY @361
++ @354 + paladin_ehre_09
+ ~!Class(Player1,PALADIN)~ + @355 + paladin_ehre_08
+ ~Class(Player1,PALADIN)~ + @356 + paladin_ehre_08
++ @357 + paladin_ehre_08
END

IF ~~ THEN paladin_ehre_11
SAY @362 
IF ~!Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06
IF ~Class(Player1,PALADIN) Global("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06a
IF ~GlobalGT("C#AjantisBodhiAbduction","GLOBAL",0)~ THEN + paladin_ehre_06b
END


//------------------------------------

/* Ajantis' scar... triggers rest talk "narbe_nighttalk"  Global("C#AjantisNarbeNighttalk","GLOBAL",1) */

IF ~Global("C#AjantisLoveTalk","GLOBAL",16)~ THEN narbe
SAY @363 
IF ~~ THEN DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",17)~ + narbe_00
END

IF ~~ THEN narbe_00
SAY @364
++ @365 + narbe_01
++ @366 + narbe_04
++ @367 + narbe_02
++ @368 + narbe_03
END

IF ~~ THEN narbe_01
SAY @369
++ @366 + narbe_04
++ @367 + narbe_02
++ @368 + narbe_03
END

IF ~~ THEN narbe_02
SAY @370
++ @366 + narbe_04
++ @371 + narbe_03
END

IF ~~ THEN narbe_03
SAY @372
IF ~~ THEN EXIT
END

IF ~~ THEN narbe_04
SAY @373
++ @374 + narbe_05
++ @371 + narbe_03
END

IF ~~ THEN narbe_05
SAY @375
++ @376 + narbe_06
++ @371 + narbe_03
END

IF ~~ THEN narbe_06
SAY @377
= @378
++ @379 + narbe_08
++ @380 + narbe_08
++ @381 + narbe_07
END

IF ~~ THEN narbe_07
SAY @382
IF ~~ THEN EXIT
END

IF ~~ THEN narbe_08
SAY @383
++ @384 + narbe_07
++ @385 + narbe_09
END

IF ~~ THEN narbe_09
SAY @386
++ @384 + narbe_07
++ @387 + narbe_10
END

IF ~~ THEN narbe_10
SAY @388
++ @384 DO ~SetGlobal("C#AjantisNarbeNighttalk","GLOBAL",1)~ + narbe_07
++ @389 + narbe_11
END

IF ~~ THEN narbe_11
SAY @390
= @391
IF ~~ THEN DO ~SetGlobal("C#AjantisNarbeNighttalk","GLOBAL",1)~ EXIT
END



//-------------------------------------------------------------


/* thoughts; Ajantis feels guilty of not being there when CHARNAME needed him. */

IF ~Global("C#AjantisLoveTalk","GLOBAL",18)~ THEN gedanken
SAY @392 
++ @976 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",19)~ + gedanken_07
++ @393 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",19)~ + gedanken_02
++ @394 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",19)~ + gedanken_02
++ @395 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",19)~ + gedanken_01
END

IF ~~ THEN gedanken_01
SAY @396
IF ~~ THEN + gedanken_02
END

IF ~~ THEN gedanken_02
SAY @397
++ @976 + gedanken_07
++ @398 + gedanken_05
++ @399 + gedanken_03
++ @400 + gedanken_03
++ @401 + gedanken_06
END

IF ~~ THEN gedanken_03
SAY @402
++ @976 + gedanken_07
++ @398 + gedanken_05
++ @403 + gedanken_04
++ @404 + gedanken_06
++ @401 + gedanken_06
END

IF ~~ THEN gedanken_04
SAY @405
IF ~~ THEN DO ~SetGlobal("C#AjantisWeitergehenPID","LOCALS",1)~ EXIT
END

IF ~~ THEN gedanken_05
SAY @406
= @407
IF ~~ THEN DO ~SetGlobal("C#AjantisWeitergehenPID","LOCALS",1)~ EXIT
END

IF ~~ THEN gedanken_06
SAY @408
IF ~~ THEN DO ~SetGlobal("C#AjantisWeitergehenPID","LOCALS",1)~ EXIT
END

IF ~~ THEN gedanken_07
SAY @977
= @978
= @406
IF ~~ THEN DO ~SetGlobal("C#AjantisWeitergehenPID","LOCALS",1)~ EXIT
END


//-------------------------------------
/* Expectation of Lord and Lady Ilvastarr's return. Will be skipped if the group is in an outdoor city area. Not to be triggered in the Underdark! 
Will be triggered if the group is outdoor, but not in a city, or if the group is somewhere trapped (sphere, etc.):

Global("C#AjantisLoveTalk","GLOBAL",19?), and RealGlobalTimerExpired("C#AjantisRomanceTimer","GLOBAL") and not outdoor, not city area. */

IF ~Global("C#AjantisLTWarten","GLOBAL",1)~ THEN warten
SAY @409 
++ @410 DO ~SetGlobal("C#AjantisLTWarten","GLOBAL",2)~ + warten_02
+ ~Global("C#AjantisIlvastarrWedding","GLOBAL",1)~ + @411 DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2) SetGlobal("C#AjantisLTWarten","GLOBAL",2)~ + warten_01
+ ~Global("C#AjantisIlvastarrWedding","GLOBAL",0)~ + @411 DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2) SetGlobal("C#AjantisLTWarten","GLOBAL",2)~ + warten_01b
+ ~OR(33)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")~ + @412 DO ~SetGlobal("C#AjantisWarten1","LOCALS",1) SetGlobal("C#AjantisLTWarten","GLOBAL",2)~ + warten_05c
++ @413 DO ~SetGlobal("C#AjantisLTWarten","GLOBAL",2)~ + warten_03
++ @414 DO ~SetGlobal("C#AjantisLTWarten","GLOBAL",2)~ + warten_04
END

IF ~~ THEN warten_01
SAY @415
++ @416 + warten_02
+ ~Global("C#AjantisWarten1","LOCALS",0)
OR(33)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")~ + @412 DO ~SetGlobal("C#AjantisWarten1","LOCALS",1)~ + warten_05c
++ @413 + warten_03
++ @414 + warten_04
END

IF ~~ THEN warten_01b
SAY @417
++ @416 + warten_02
+ ~Global("C#AjantisWarten1","LOCALS",0)
OR(33)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")~ + @412 DO ~SetGlobal("C#AjantisWarten1","LOCALS",1)~ + warten_05c
++ @413 + warten_03
++ @414 + warten_04
END

IF ~~ THEN warten_02
SAY @418
IF ~Global("C#AjantisWarten1","LOCALS",0)
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR0420")
!AreaCheck("AR0516")
!AreaCheck("AR0517")
!AreaCheck("AR0518")
!AreaCheck("AR0519")
!AreaCheck("AR0520")
!AreaCheck("AR0521")
!AreaCheck("AR0600")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1401")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + warten_05
IF ~Global("C#AjantisWarten1","LOCALS",0)
OR(33)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + warten_05b
IF ~Global("C#AjantisWarten1","LOCALS",1)~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ EXIT
END

IF ~~ THEN warten_03
SAY @419
IF ~Global("C#AjantisWarten1","LOCALS",0)
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR0420")
!AreaCheck("AR0516")
!AreaCheck("AR0517")
!AreaCheck("AR0518")
!AreaCheck("AR0519")
!AreaCheck("AR0520")
!AreaCheck("AR0521")
!AreaCheck("AR0600")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1401")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + warten_05
IF ~Global("C#AjantisWarten1","LOCALS",0)
OR(33)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + warten_05b
IF ~Global("C#AjantisWarten1","LOCALS",1)~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ EXIT
END

IF ~~ THEN warten_04
SAY @420
IF ~Global("C#AjantisWarten1","LOCALS",0)
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR0420")
!AreaCheck("AR0516")
!AreaCheck("AR0517")
!AreaCheck("AR0518")
!AreaCheck("AR0519")
!AreaCheck("AR0520")
!AreaCheck("AR0521")
!AreaCheck("AR0600")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1401")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + warten_05
IF ~Global("C#AjantisWarten1","LOCALS",0)
OR(33)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + warten_05b
IF ~Global("C#AjantisWarten1","LOCALS",1)~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ EXIT
END

IF ~~ THEN warten_05
SAY @421
IF ~OR(2)
Global("C#AjantisWartetRing","GLOBAL",1) Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + ring_nachfrage_10
IF ~!Global("C#AjantisWartetRing","GLOBAL",1) !Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ EXIT
END

IF ~~ THEN warten_05b
SAY @422
IF ~OR(2)
Global("C#AjantisWartetRing","GLOBAL",1) Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + ring_nachfrage_10
IF ~!Global("C#AjantisWartetRing","GLOBAL",1) !Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ EXIT
END

IF ~~ THEN warten_05c
SAY @423
++ @410 + warten_02
+ ~Global("C#AjantisIlvastarrWedding","GLOBAL",1)~ + @411 DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + warten_01
+ ~Global("C#AjantisIlvastarrWedding","GLOBAL",0)~ + @411 DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",2)~ + warten_01b
++ @413 + warten_03
++ @414 + warten_04
END

//--------------------Phase 2: Ajantis' Disinheritage--------------

/* PC and Ajantis haven't been to the see the Ilvastarrs yet. Ajantis reminds her (complains) */ 

IF ~Global("C#AjantisIlvastarrComplains","GLOBAL",1)~ THEN ilvastarr_complain
SAY @424 
IF ~~ THEN DO ~SetGlobal("C#AjantisIlvastarrComplains","GLOBAL",0) SetGlobalTimer("C#AjantisIlvastarrMeetingT","GLOBAL",THREE_DAYS)~ EXIT
END

//----------------
/* The party arrives at Brynnlaw, but HC and Ajantis didn't go to see Ajantis' parents. */

IF ~Global("C#AjantisIlvastarrComplains","GLOBAL",3)~ THEN ilvastarr_complain_01
SAY @425 
IF ~~ THEN DO ~SetGlobal("C#AjantisIlvastarrComplains","GLOBAL",4)~ EXIT
END

END //APPEND C#AjanJ


//---------------------------

/* Lord and Lady Ilvastarr's arrival (messenger)
To be triggered in City Areas */

BEGIN C#AJDOUG

CHAIN
IF ~Global("C#AjantisDouglasTalk1","GLOBAL",0) Global("C#AjantisLoveTalk","GLOBAL",19)~ THEN C#AJDOUG messenger
@426 
== C#AjanJ @427
== C#AJDOUG @428
== C#AjanJ @429
== C#AJDOUG @430 
== C#AjanJ @431 
= @432
END
++ @433 EXTERN C#AjanJ messenger_02
++ @434 EXTERN C#AjanJ messenger_01
++ @435 DO ~SetGlobal("C#AjantisMessenger_03","LOCALS",1)~ EXTERN C#AjanJ messenger_03



APPEND C#AjanJ

IF ~~ THEN messenger_01
SAY @436 
++ @437 + messenger_02
+ ~Global("C#AjantisMessenger_03","LOCALS",0)~ + @438 DO ~SetGlobal("C#AjantisMessenger_03","LOCALS",1)~ + messenger_03
+ ~Global("C#AjantisMessenger_03","LOCALS",1)~ + @438 + messenger_04
END

IF ~~ THEN messenger_02
SAY @439
IF ~OR(2)
Global("C#AjantisWartetRing","GLOBAL",1) Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisFragtWegenRing","GLOBAL",4)
SetGlobal("C#AjantisDouglasTalk1","GLOBAL",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",20)
SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",1) SetGlobalTimer("C#AjantisIlvastarrMeetingT","GLOBAL",TWO_DAYS) AddJournalEntry(@10005,QUEST)
SetGlobal("C#AjantisFragtWegenRing","GLOBAL",4) ActionOverride("C#AJDOUG",EscapeArea())~ EXIT

IF ~!Global("C#AjantisWartetRing","GLOBAL",1) !Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDouglasTalk1","GLOBAL",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",20)
SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",1) SetGlobalTimer("C#AjantisIlvastarrMeetingT","GLOBAL",TWO_DAYS) AddJournalEntry(@10005,QUEST)
ActionOverride("C#AJDOUG",EscapeArea())~ EXIT
END

IF ~~ THEN messenger_03
SAY @441
++ @433 + messenger_02
++ @434 + messenger_01
++ @442 + messenger_04
END


IF ~~ THEN messenger_04
SAY @443
IF ~~ THEN + messenger_02
END

/* this is an own dialogue now */
IF ~Global("C#AjantisFragtWegenRing","GLOBAL",4)~ THEN messenger_05
SAY @444
IF ~PartyHasItem("C#AJ0008") Global("C#AjantisWartetRing","GLOBAL",1)~ THEN + ring_nachfrage_07
IF ~!PartyHasItem("C#AJ0008") Global("C#AjantisWartetRing","GLOBAL",1)~ THEN + ring_nachfrage_14
IF ~!Global("C#AjantisWartetRing","GLOBAL",1) Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN + ring_nachfrage_10
END



END //APPEND C#AjanJ


//---------
I_C_T ARAN 47 C#AjantisIlvastarrsBeforUnderdark
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisIlvastarrMeeting","GLOBAL",1)~ THEN @445   
END

//-------------------------
/* If PC and Ajantis went to Brynnlaw without seeing the Ilvastarrs, they will be approached by a messenger after the return. */

CHAIN
IF ~Global("C#AjantisIlvastarrComplains","GLOBAL",4)~ THEN C#AJDOUG messenger_chap6
@449 DO ~SetGlobal("C#AjantisIlvastarrComplains","GLOBAL",5)~ 
== C#AjanJ @450
== C#AJDOUG @451
== C#AjanJ @452
== C#AJDOUG @453
== C#AjanJ @454
END
++ @455 + messenger_chap6_07
++ @456 + messenger_chap6_01

APPEND C#AJDOUG
IF ~~ THEN messenger_chap6_01
SAY @457
++ @458 + messenger_chap6_07
++ @459 EXTERN C#AjanJ messenger_chap6_02
END

IF ~~ THEN messenger_chap6_07
SAY @460
IF ~~ THEN DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",2) EraseJournalEntry(@10005)
StartCutScene("C#ILME02")
StartCutSceneMode()~ EXIT
END

END

CHAIN
IF ~~ THEN C#AjanJ messenger_chap6_02
@461
== C#AJDOUG @462 DO ~EraseJournalEntry(@10005) EscapeArea()~
== C#AjanJ @463
= @464
= @465
END
++ @466 + messenger_chap6_03
++ @467 + messenger_chap6_03
++ @468 + messenger_chap6_03

APPEND C#AjanJ

IF ~~ THEN messenger_chap6_03
SAY @469
= @470
= @471
= @472
++ @473 + messenger_chap6_04
++ @474 DO ~SetGlobal("C#Ajantismessenger_chap6_1","LOCALS",1)~ + messenger_chap6_05
++ @475 DO ~SetGlobal("C#Ajantismessenger_chap6_2","LOCALS",1)~ + messenger_chap6_06
++ @476 DO ~SetGlobal("C#Ajantismessenger_chap6_3","LOCALS",1)~ + messenger_chap6_06
END

IF ~~ THEN messenger_chap6_04
SAY @477
IF ~~ THEN DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",6)~ + verweigerung
END

IF ~~ THEN messenger_chap6_05
SAY @478
IF ~~ THEN DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",6)~ + verweigerung
END

IF ~~ THEN messenger_chap6_06
SAY @479
IF ~~ THEN DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",6)~ + verweigerung
END

//----------------
/* Meeting with Ajantis' parents 
When PC and Ajantis enter the inn, cutscene starts, that brings Ajantis and PC in front of Lord and Lady Ilvastarr  */

IF ~Global("C#AjantisIlvastarrMeeting","GLOBAL",2)~ THEN ilvastarr_treffen_a
SAY @480 
IF ~~ THEN DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",3) EraseJournalEntry(@10005)
StartCutScene("C#ILME01")
StartCutSceneMode()~ EXIT
END

IF ~Global("C#AjantisIlvastarrMeeting","GLOBAL",4)~ THEN ilvastarr_treffen
SAY @481
++ @482 DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",5)~ + ilvastarr_treffen_01 
++ @483 DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",5)~ EXTERN C#AJLAIL lady_ilvastarr_01
++ @484 DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",5)~ EXTERN C#AJLAIL lady_ilvastarr_01
++ @485 DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",5)~ + ilvastarr_treffen_01
END

END //APPEND C#AjanJ

BEGIN C#AJLOIL

BEGIN C#AJLAIL

IF ~~ THEN lady_ilvastarr_01
SAY @486 
IF ~~ THEN EXTERN C#AjanJ ilvastarr_treffen_01
END

CHAIN
IF ~~ THEN C#AjanJ ilvastarr_treffen_01
@487
== C#AJLOIL @488
== C#AjanJ @489
== C#AJLOIL @490
== C#AjanJ @491
== C#AJLAIL @492
== C#AjanJ @493
== C#AJLOIL @494
== C#AjanJ @495
== C#AJLAIL @496
== C#AjanJ @497
== C#AJLAIL @498
== C#AjanJ @499
== C#AJLOIL @500
== C#AjanJ @501
== C#AJLOIL @502
== C#AJLAIL @503
== C#AJLOIL @504 DO ~RealSetGlobalTimer("C#AjantisIlvastarrEntscheidungT","GLOBAL",15) ActionOverride("C#AJLAIL",EscapeArea()) EscapeArea()~
EXIT


//----------------
/*Ajantis talks about his probable disinheritage. Triggers directly after the Ilvastarrs left the room. OR: Transition from the note-messenger dialogue "messenger_chap6", if PC and Ajantis decided not to meet the Ilvastarrs. */

APPEND C#AjanJ


IF ~Global("C#AjantisIlvastarrMeeting","GLOBAL",6)~ THEN verweigerung
SAY @999
= @505 
++ @1000 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-2)~ + verweigerung_00
++ @506 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + verweigerung_01
++ @1003 + verweigerung_02
++ @507 + verweigerung_01
++ @508 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",1)~ + verweigerung_01
++ @509 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + verweigerung_01
END

IF ~~ THEN verweigerung_00
SAY @1001
IF ~~ THEN + verweigerung_01
END

IF ~~ THEN verweigerung_01
SAY @510
= @511
IF ~~ THEN DO ~SetGlobal("C#AjantisIlvastarrMeeting","GLOBAL",7) SetGlobal("C#AjantisIsThinking","GLOBAL",1)~ EXIT
END

IF ~~ THEN verweigerung_02
SAY @1002
IF ~~ THEN + verweigerung_01
END

//-------------------------

/* Global("C#Ajantis_EndThinking1","LOCALS",1), 
Global("C#Ajantis_EndThinking2","LOCALS",1)
Global("C#Ajantis_EndThinking3","LOCALS",1): internal dialogue tracking variables to prevent looping */


//IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",1): counts instances where she doesn't give him support - which he needs to gain his strength through her if his family is gone (the PC might not be aware she is judged)

//IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",1): counts instances where she doubts their love or the stability of their relationship

//IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",1): counts instances where she expresses discontent about his changed social situation after the disinheritage


/* Ajantis is thinking... This dialogue also triggeres in chap 4 and 5, and 7 */

IF ~Global("C#AjantisLoveTalk","GLOBAL",22)~ THEN thinking_1
SAY @512 

++ @440 /* ~Well... I'm not there yet, either. The refusal of your parents hurt me quite a bit, too.~ */ DO ~SetGlobal("C#Ajantis_EndThinking2","LOCALS",1)~ + thinking_1_04

+ ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ + @523 DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1) IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01j
+ ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ + @523 + thinking_1_01e

++ @531 /* ~I am quite sure I know what troubles you - the refusal of your parents. What I don't know is what thoughts you are turning in your heart right now.~ */ + thinking_1_01h

++ @513 + thinking_1_01b

++ @514 + thinking_1_01d

++ @530 /* ~Is there really nothing we can do to change their mind?~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01k

++ @515 + thinking_1_01c

++ @532 /* ~As hard as it is, you will have to come over it, if you chose me.~ */ + thinking_1_01m

++ @533 /* ~You have to make sure you don't neglect your paladin duties over this. You seem very distracted lately.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01l

++ @516 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",1)~ + thinking_1_07

++ @534 /* ~Did you really expect anything else? I didn't. Not from a pompous noble family.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + thinking_1_07

++ @517 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + thinking_1_07
END

IF ~~ THEN thinking_1_01
SAY @518
IF ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ THEN DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1)~ + thinking_1_01j
IF ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ THEN + thinking_1_01e
END

IF ~~ THEN thinking_1_01b
SAY @519
IF ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ THEN DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1)~ + thinking_1_01j
IF ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ THEN + thinking_1_01e
END

IF ~~ THEN thinking_1_01c
SAY @520
IF ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ THEN DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1)~ + thinking_1_01j
IF ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ THEN + thinking_1_01e
END

IF ~~ THEN thinking_1_01d
SAY @521
IF ~~ THEN + thinking_1_01i
END

IF ~~ THEN thinking_1_01e
SAY @546 /* ~Please, do not believe that I doubt our love. I know they are wrong, and their refusal pains me tremendously. But you know what my family means to me...~ */
IF ~~ THEN + thinking_1_01g
END

IF ~~ THEN thinking_1_01f
SAY @547 /* ~What? <CHARNAME>, do not doubt your worthyness! Yes, I love my family, but they... they *hurt* me so much with refusing you. And the thought of losing you... it pains me even more! It feels like chopping off a leg to save an arm! It does not make any sense!~ */
IF ~~ THEN + thinking_1_03 
END

IF ~~ THEN thinking_1_01g
SAY @522
IF ~~ THEN DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",23)~ EXIT
END

IF ~~ THEN thinking_1_01h
SAY @548 /* ~Is it not obvious? I am trying to understand that for marrying the woman I love, I will have to abandon the family I love.~ */

++ @564 /* ~Um, I meant a bit more specific.~ */ + thinking_1_01i
++ @440 /* ~Well... I'm not there yet, either. The refusal of your parents hurt me quite a bit, too.~ */ DO ~SetGlobal("C#Ajantis_EndThinking2","LOCALS",1)~ + thinking_1_04
+ ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ + @523 /* ~I am very sorry, Ajantis.~ */ DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1)~ + thinking_1_01j
+ ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ + @523 + thinking_1_01e

++ @524 /* ~Yes, but what exactly are you weighing? Are you doubting our love? Are you afraid it is not strong enough?~ */ + thinking_1_01i
+ ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ + @525 /* ~I see.~ */ DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1)~ + thinking_1_01j
+ ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ + @525 + thinking_1_01e

++ @526 /* ~(scoffs) That was helpful!~ */ + thinking_1_01i
END

IF ~~ THEN thinking_1_01i
SAY @527 /* ~My... my feelings are difficult to specify. I feel like I am torn apart inside.~ */
IF ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ THEN DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1)~ + thinking_1_01j
IF ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ THEN + thinking_1_01e
END

IF ~~ THEN thinking_1_01j
SAY @528 /* ~(Ajantis sighs, obviously in thought.)~ */
++ @529 /* ~Ajantis, do not trouble yourself any further. I... I love you from the bottom of my heart, but this is too much. I release you from your vow. You are free to chose a wife appropriate to a noble son who loves his family as much as you do.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-2)~ + thinking_1_01f

++ @591 /* ~Take all the time you want and need, Ajantis. The last thing I want is a decision made upon the feeling of duty. It is not your duty to fulfil your vow of marriage, Ajantis. Not under these conditions.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-2)~ + thinking_1_02

++ @592 /* ~Well, maybe we were too naive to expect anything else.~ */ + thinking_1_11

++ @593 /* ~We'll have to live with it, Ajantis. Let's get on with things.~ */ + thinking_1_01e
END

IF ~~ THEN thinking_1_01k
SAY @594 /* ~(scoffs unhappily) No... No, my mother knows her mind. And if it is set... it is set. They did not see the good in you, after all I told and showed them. There is nothing we can do.~ */
IF ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ THEN DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1)~ + thinking_1_01j
IF ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ THEN + thinking_1_01e
END

IF ~~ THEN thinking_1_01l
SAY @597 /* ~My capabilities as a paladin are not endangered, I assure you that. It is a well spoken warning, though.~ */
IF ~~ THEN + thinking_1_01i
END

IF ~~ THEN thinking_1_01m
SAY @598 /* ~Yes! I know!~ */
IF ~~ THEN + thinking_1_01i
END

IF ~~ THEN thinking_1_02
SAY @599 /* ~I made the vow because I love you, <CHARNAME>. That I made it with the expectation of my family's approval is true, but...~ */
IF ~~ THEN + thinking_1_03 
END

IF ~~ THEN thinking_1_03
SAY @600 /* ~You... you are ready to sacrifice your love for what you think is a higher goal. I appreciate your selflessness, <CHARNAME>. (He smiles, sadness and pain showing in his face.) And with this, you have once again proven that you *are* a worthy wife for an Ilvastarr noble.~ */
IF ~Global("C#Ajantis_EndThinking2","LOCALS",0)~ THEN DO ~SetGlobal("C#Ajantis_EndThinking2","LOCALS",1)~ + thinking_1_04
IF ~Global("C#Ajantis_EndThinking2","LOCALS",1)~ THEN + thinking_1_01e
END

IF ~~ THEN thinking_1_04
SAY @601 /* ~I am sorry I am as occupied as I am. You must be hurting, love! (He reaches out for you, his arms ready for a comforting embrace.)~ */
++ @602 /* ~(You hug him back, letting the comfort ease your own pain a little.)~ */ + thinking_1_05
++ @603 /* ~(You let him proceed, although you don't feel a need for it.)~ */ + thinking_1_05
+ ~Global("C#Ajantis_EndThinking1","LOCALS",0)~ + @604 /* ~(You signal that you do not wish to be hugged.)~ */ DO ~SetGlobal("C#Ajantis_EndThinking1","LOCALS",1)~ + thinking_1_06
+ ~Global("C#Ajantis_EndThinking1","LOCALS",1)~ + @604 /* ~(You signal that you do not wish to be hugged.)~ */ + thinking_1_01e
END

IF ~~ THEN thinking_1_05
SAY @605 /* ~(Ajantis holds you, a tiny bit longer than expected. You hear him breath into your hair.)~ */
IF ~Global("C#Ajantis_EndThinking1","LOCALS",0)~ THEN DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-2) SetGlobal("C#Ajantis_EndThinking1","LOCALS",1)~ + thinking_1_06
IF ~Global("C#Ajantis_EndThinking1","LOCALS",1)~ THEN DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-2)~ + thinking_1_01e
END

IF ~~ THEN thinking_1_06
SAY @606 /* ~This is not how we expected this to go, is it?~ */

++ @523 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01i
++ @524 + thinking_1_01i
++ @607 /* ~(scoff) No, not really.~ */ + thinking_1_01c
+ ~Global("C#Ajantis_EndThinking3","LOCALS",0)~ + @608 /* ~We can't change their decision, Ajantis.~ */ DO ~SetGlobal("C#Ajantis_EndThinking3","LOCALS",1)~ + thinking_1_01j
+ ~Global("C#Ajantis_EndThinking3","LOCALS",1)~ + @608 + thinking_1_01e

++ @530 /* ~Is there really nothing we can do to change their mind?~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01k

++ @532 /* ~As hard as it is, you will have to come over it, if you chose me.~ */ + thinking_1_01m

++ @533 /* ~You have to make sure you don't neglect your paladin duties over this. You seem very distracted lately.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01l

++ @516 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",1)~ + thinking_1_07

++ @534 /* ~Did you really expect anything else? I didn't. Not from a pompous noble family.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + thinking_1_07

++ @517 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + thinking_1_07
END

IF ~~ THEN thinking_1_07
SAY @535
++ @536 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01b
++ @537 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01
++ @538 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_08
++ @539 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",1)~ + thinking_1_09
++ @540 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + thinking_1_10
END

IF ~~ THEN thinking_1_08
SAY @541
IF ~~ THEN + thinking_1_01c
END

IF ~~ THEN thinking_1_09
SAY @542
++ @537 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_1_01
++ @538 + thinking_1_08
++ @543 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + thinking_1_10
END

IF ~~ THEN thinking_1_10
SAY @544
IF ~~ THEN DO ~SetGlobal("C#AjantisStillDenken","GLOBAL",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",23)~ EXIT
END

IF ~~ THEN thinking_1_11
SAY 
@609 /* ~Naive? My parents' reaction was not predictable, not for me. If only they would listen...~ */
IF ~~ THEN + thinking_1_01e
END



/* second "thinking" dialogue */
/* This dialogue also triggeres in chap 4, 5, and 7 */

IF ~Global("C#AjantisLoveTalk","GLOBAL",24)~ THEN thinking_2
SAY @610 /* ~(Ajantis looks at you. His face is stern and there is a troubled frown on his forehead. But when your eyes meet, you also see that they are full of love and appreciation.)~ */ 
= @611 /* ~(Upon realizing your attention, he clears his throat, but lets a moment pass before he speaks to you.) Are you doubting our love is strong enough? I ask without reproach, love. But I... I need to know.~ */

++ @612 /* ~Does this mean you came to terms with your parents' refusal?~ */ DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",25)~ + thinking_lovereassurance_02

++ @613 /* ~No, I don't question our love. I love you, Ajantis, and there is no doubt.~ */ DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",25) IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",-1)~ + thinking_lovereassurance_05

++ @614 /* ~Honest answer?~ */ DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",25)~ + thinking_lovereassurance_04

++ @616 /* ~Yes, I do.~ */ DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",25) IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",1)~ + thinking_lovereassurance_01

+ ~Global("C#AjantisStillDenken","GLOBAL",1)~ + @550 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",25) IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + thinking_2_04
+ ~Global("C#AjantisStillDenken","GLOBAL",0)~ + @550 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",25) IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",2)~ + thinking_2_04b

END

IF ~~ THEN thinking_lovereassurance_01
SAY @618 /* ~(exhales) I feared as much. What do we do now?~ */
++ @620 /* ~I do love you, Ajantis, and I know I want to be with you, whatever the future holds for our love.~ */ + thinking_lovereassurance_06
++ @621 /* ~Maybe it is best if we end our relationship.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",1)~ + thinking_lovereassurance_08
END

IF ~~ THEN thinking_lovereassurance_02
SAY @622 /* ~There is still a lot to think through, love, but I reached a point where the following steps do not depend on my feelings alone.~ */
IF ~~ THEN + thinking_lovereassurance_04
END

IF ~~ THEN thinking_lovereassurance_03
SAY @623 /* ~Do not worry about mine. But did your feelings change because of my parents' refusal?~ */
++ @613 /* ~No, I don't question our love. I love you, Ajantis, and there is no doubt.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",-1)~ + thinking_lovereassurance_05

++ @625 /* ~From what I can tell you now as the mortal that I am, I know that I love you and want to be with you, Ajantis.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",-1)~ + thinking_lovereassurance_05

++ @1004 /* ~I feel like in turmoil, but I know that I love you without doubt, Ajantis.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",-1)~ + thinking_lovereassurance_05

++ @1005 /* ~I have doubts our love will be strong enough.~ */ + thinking_lovereassurance_01

++ @1006 /* ~Well, I don't love you the way I did before, so, yes.~ */ + thinking_lovereassurance_01
END

IF ~~ THEN thinking_lovereassurance_04
SAY @1007 /* ~Your honest answer is what I need.~ */
++ @1008 /* ~I don't want to burden you with my love, if all it gives you is refusal and pain.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_lovereassurance_03 
++ @613 /* ~No, I don't question our love. I love you, Ajantis, and there is no doubt.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",-1)~ + thinking_lovereassurance_05
++ @1004 /* ~I feel like in turmoil, but I know that I love you without doubt, Ajantis.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",-1)~ + thinking_lovereassurance_05
++ @625 /* ~From what I can tell you now as the mortal that I am, I know that I love you and want to be with you, Ajantis.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",-1)~ + thinking_lovereassurance_05
++ @1009 /* ~I do love you, Ajantis, but I am scared the loss of your parents' approval and support will make it hard for *you* not to hate me some day.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",1)~ + thinking_lovereassurance_03
++ @1005 /* ~I have doubts our love will be strong enough.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative2","LOCALS",1)~ + thinking_lovereassurance_01
END

IF ~~ THEN thinking_lovereassurance_05
SAY @1010 /* ~(sighs with relief) I thank you, love.~ */
IF ~~ THEN + thinking_lovereassurance_07
END

IF ~~ THEN thinking_lovereassurance_06
SAY @1011 /* ~But you do doubt our love will be strong enough. (ponders for a small moment)~ */
IF ~~ THEN + thinking_lovereassurance_07
END

IF ~~ THEN thinking_lovereassurance_07
SAY @551 /* ~If my parents disown me, I cannot offer you the social position that I assumed up to now.~ */
IF ~Global("C#AjantisVerlLoesenLI","LOCALS",1)~ THEN + thinking_lovereassurance_07_01
IF ~Global("C#AjantisVerlLoesenLI","LOCALS",0)~ THEN + thinking_lovereassurance_07_02
END

IF ~~ THEN thinking_lovereassurance_07_01
SAY @1012 /* ~(sternly) You already stated your opinion on that... If I cannot offer you the position of a lady, it does not suffice you. Was this spoken in distress or is it still your opinion?~ */
++ @1013 /* ~It was spoken in complete distress. I am very sorry, Ajantis.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-2)~ + thinking_lovereassurance_07_03
++ @555 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-1)~ + thinking_2_07
++ @1014 /* ~I meant it. Actually, I made up my mind that it might be better to end our relationship.~ */ + thinking_2_06
END

IF ~~ THEN thinking_lovereassurance_07_02
SAY @545 /* ~You... you should consider whether you really want to be married with a have-not, beloved.~ */
IF ~~ THEN + thinking_lovereassurance_07_03
END

IF ~~ THEN thinking_lovereassurance_07_03
SAY @1015 /* ~This is something that torments me. Can I... impose myself on you as a nameless, disinherited man? With my admission to the Order, I departed from the usual paths of a nobleman. I am a paladin and knight, a fighter for justice. You can be proud of me, at least, I think that. (cough) You would not have to be ashamed with me at your side as your husband. I have my own livelihood and can provide for you well, with what I earn myself. But...~ */
= @552 /* ~Will it suffice to you to be married to a poor knight, <CHARNAME>?~ */

++ @1016 /* ~I would never be ashamed with you at my side! How can you even think something like that?~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_2_00c

++ @1017 /* ~Your family threatens to cast you out, the family you love deeply and who was your source of strength all your life, and all you worry about is whether *I* will be content with your future social status?~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_2_00

++ @1018 /* ~You are posing the wrong question. *You* should consider whether you want to spend the rest of your life with the woman who made you a have-not, Ajantis.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_2_00a

++ @1019 /* ~I am not sure, Ajantis... I am adjusting to the new situation.~ */ + thinking_2_00d

++ @556 /* ~What am I supposed to answer? 'No, it does not?'~ */ + thinking_2_09

++ @1020 /* ~I love you from the bottom of my heart, and your question shows what a true knight you are. I will be happy and content with you, if you would have me, Ajantis.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-2)~ + thinking_2_02

++ @554 /* ~As long as it is you, yes. In my eyes, you remain what you have always been: a knight and my hero.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-2)~ + thinking_2_02

++ @1021 /* ~Last time I checked, I wanted to marry you, not your parents. So, yes, it will suffice.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-1)~ + thinking_2_02

++ @553  /* ~Ajantis, you earn your living by the Order, and this is sufficient for me.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-1)~ + thinking_2_02

++ @555 /* ~Well, honestly, I would have liked to be in the position of a lady, but what cannot be, cannot be.~ */ + thinking_2_08

++ @1022 /* ~No, it wouldn't suffice.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",2)~ + thinking_2_01

+ ~Global("C#AjantisVerlLoesenLI","LOCALS",0)~ + @549 DO ~SetGlobal("C#AjantisVerlLoesenLI","LOCALS",1) IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",2)~ + thinking_2_06

END

IF ~~ THEN thinking_lovereassurance_08
SAY @568
++ @569 + thinking_lovereassurance_06
++ @570 + rom_end_01
END

IF ~~ THEN thinking_2_00
SAY @616 /* ~Yes, I do.~ */
IF ~~ THEN + thinking_2_00b
END

IF ~~ THEN thinking_2_00a
SAY @1023 /* ~You will not make me any such thing, <CHARNAME>. It is my parents who do that.~ */
IF ~~ THEN + thinking_2_00b
END

IF ~~ THEN thinking_2_00b
SAY @1024 /* ~I am asking, because I am weighing my worth. My worth as your husband, under the changed conditions we have to face... Please, love.~ */

++ @1020 /* ~I love you from the bottom of my heart, and your question shows what a true knight you are. I will be happy and content with you, if you would have me, Ajantis.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-2)~ + thinking_2_02

++ @574 /* ~As long as it is you, Ajantis, I'll take the poor knight. In my eyes, you remain what you have always been: a proud knight and my hero.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-2)~ + thinking_2_02

++ @553  /* ~Ajantis, you earn your living by the Order, and this is sufficient for me.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-1)~ + thinking_2_02

++ @1021 /* ~Last time I checked, I wanted to marry you, not your parents. So, yes, it will suffice.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-1)~ + thinking_2_02

++ @1019 /* ~I am not sure, Ajantis... I am adjusting to the new situation.~ */ + thinking_2_00d

++ @555 /* ~Well, honestly, I would have liked to be in the position of a lady, but what cannot be, cannot be.~ */ + thinking_2_08

++ @1022 /* ~No, it wouldn't suffice.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",2)~ + thinking_2_01

+ ~Global("C#AjantisVerlLoesenLI","LOCALS",0)~ + @575 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",25) SetGlobal("C#AjantisVerlLoesenLI","LOCALS",1) IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",2) IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",1)~ + thinking_2_06

END

IF ~~ THEN thinking_2_00c
SAY @1025 /* ~I thank you for saying that.~ */
IF ~~ THEN + thinking_2_00b
END

IF ~~ THEN thinking_2_00d
SAY @1026 /* ~An honest answer. Not the one I was hoping for, but... What does your heart tell you, do you think you can accept my new status?~ */
++ @1028 /* ~Yes, I think I will get used to it.~ */ + thinking_2_02
++ @1022 /* ~No, it wouldn't suffice.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",2)~ + thinking_2_01
++ @1027 /* ~No. Let us end the relationship.~ */ DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",2)~ + thinking_2_06
END


IF ~~ THEN thinking_2_01
SAY @1029 /* ~It... it wouldn't?~ */
++ @569 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",-1)~ + thinking_2_07
++ @1027 /* ~No. Let us end the relationship.~ */ + thinking_2_06
END

IF ~~ THEN thinking_2_02
SAY @557
++ @558 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative","LOCALS",-1)~ + thinking_2_10
++ @559 + thinking_2_05
++ @560 + thinking_2_03
END

IF ~~ THEN thinking_2_03
SAY @561
IF ~~ THEN + thinking_2_10
END

IF ~~ THEN thinking_2_04
SAY @562
++ @563 + thinking_lovereassurance_04
++ @582 + thinking_2_14
++ @565 + thinking_2_11
END

IF ~~ THEN thinking_2_04b
SAY @566
++ @563 + thinking_lovereassurance_04
++ @582 + thinking_2_14
++ @565 + thinking_2_11
END

IF ~~ THEN thinking_2_05
SAY @567
IF ~~ THEN + thinking_2_10
END

IF ~~ THEN thinking_2_06
SAY @568
++ @569 + thinking_2_07
++ @570 + rom_end_01
END

IF ~~ THEN thinking_2_07
SAY @571
IF ~~ THEN + thinking_2_10
END

IF ~~ THEN thinking_2_08
SAY @572
IF ~~ THEN + thinking_2_10
END

IF ~~ THEN thinking_2_09
SAY @573
IF ~~ THEN + thinking_2_00b
END

IF ~~ THEN thinking_2_10
SAY @576
IF ~~ THEN EXIT
END

IF ~~ THEN thinking_2_11
SAY @577
++ @578 + thinking_2_13
++ @579 + thinking_2_12
++ @580 + thinking_lovereassurance_08
END

IF ~~ THEN thinking_2_12
SAY @581
++ @578 + thinking_2_13
++ @582 + thinking_2_14
++ @583 + thinking_lovereassurance_08
END

IF ~~ THEN thinking_2_13
SAY @584
IF ~~ THEN + thinking_lovereassurance_04
END

IF ~~ THEN thinking_2_14
SAY @585
++ @586 + thinking_2_13
++ @587 DO ~IncrementGlobal("C#Ajantis_ThinkingNegative3","LOCALS",1)~ + thinking_2_15
END

IF ~~ THEN thinking_2_15
SAY @588
++ @589 + thinking_2_16
++ @590 + rom_end_01
END

IF ~~ THEN thinking_2_16
SAY @1030 /* ~I will, but this discussion leaves a foul taste in my mouth.~ */
IF ~~ THEN + thinking_lovereassurance_04
END

//----------------
/* This dialogue also triggeres in chap 4 and 5, and 7 


Ajantis' decision.

TRacker for "CHARNAME gives Ajantis the support he needs":

-GlobalLT("C#Ajantis_ThinkingNegative","LOCALS",0). CHARNAME gave good support

-Global("C#Ajantis_ThinkingNegative","LOCALS",0): CHARNAME acted indifferent

-GlobalGT("C#Ajantis_ThinkingNegative","LOCALS",0): CHARNAME didn't give support or was plain destructive.




Tracker for "CHARNAME loves Ajantis":

-GlobalLT("C#Ajantis_ThinkingNegative2","LOCALS",0): CHARNAME proclaimed her love without doubt.

-Global("C#Ajantis_ThinkingNegative2","LOCALS",0): CHARNAME was pondering whether Ajantis' love won't be damaged but proclaimed her love to him

-Global("C#Ajantis_ThinkingNegative2","LOCALS",1) CHARNAME outright said that she doubts their love is strong enough but proclaimed her love when asked for a decision

-Global("C#Ajantis_ThinkingNegative2","LOCALS",2) CHARNAME not only doubted their love but also suggested an end to the relationship but took it back when asked for a decision



Tracker for "CHARNAME is content with Ajantis' new social position":

-GlobalLT("C#Ajantis_ThinkingNegative3","LOCALS",-1): CHARNAME praised Ajantis for what he will be

-Global("C#Ajantis_ThinkingNegative3","LOCALS",-1): CHARNAME confirmed his status will be enough

-Global("C#Ajantis_ThinkingNegative3","LOCALS",0): CHARNAME is disappointed but accepts

-Global("C#Ajantis_ThinkingNegative3","LOCALS",1): CHARNAME said his status would not suffice but didn't want to end the relationship

-GlobalGT("C#Ajantis_ThinkingNegative3","LOCALS",1) CHARNAME suggested to end the relationship but didn't want to lose Ajantis when forced for a decision


*/

END //APPEND C#AjanJ

CHAIN
IF ~Global("C#AjantisLoveTalk","GLOBAL",26)~ THEN C#AjanJ entscheidung
@615 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",27) SetGlobal("C#AjantisIsThinking","GLOBAL",2)~
= @1031 /* ~The refusal of my parents... It shook me to the ground. I turned so many questions, weighed so many thoughts.~ */
= @617
= @619
= @1032 /* ~I already know that your heritage is no threat to my paladin duties. We have been over this many times.~ */
= @1033 /* ~But I am also a son of a noble family, one I affronted with my choice. So, I asked myself: Can I do this? Can I perform this affront against the family council, or would it be inherently wrong for me to do so? The answer is: It is not wrong. I am convinced that it is right because you are good and admirable. I have support for the wedding from my god and my brethren in the Order, so it is correct. My... parents are wrong.~ */
= @1034 /* ~I know that I love you, I love you endlessly. But I needed to be sure not to lose your love, should my parents disown me.~ */

/* answer for 0 -1 */
== C#AjanJ IF ~GlobalLT("C#Ajantis_ThinkingNegative2","LOCALS",1)~ THEN @1035 /* ~Love, how happy your reassurances of your endless love made me! I trust that your love for me will continue, that you love me for my own sake.~ */

/* addition for 0 */
== C#AjanJ IF ~Global("C#Ajantis_ThinkingNegative2","LOCALS",0)~ THEN @1036 /* ~And do not worry about my love for you. It will not falter. And never, not in the nine hells and by all the gods will my love for you turn to hate or even the slightest disdain!~ */


== C#AjanJ IF ~GlobalGT("C#Ajantis_ThinkingNegative2","LOCALS",0)~ THEN @1037 /* ~How... how it saddened me to hear you questioning our love.~ */

== C#AjanJ IF ~Global("C#Ajantis_ThinkingNegative2","LOCALS",1)~ THEN @1038 /* ~How can I trust that your love for me will continue, that you love me for my own sake, if you doubt it already?~ */

== C#AjanJ IF ~GlobalGT("C#Ajantis_ThinkingNegative2","LOCALS",1)~ THEN @1039 /* ~How can I trust that your love for me will continue, that you love me for my own sake, if you already suggested we end our bond?~ */


== C#AjanJ @1040 /* ~Another consideration I had was: Can I do this to you? Can I impose myself on you, as a nameless, familyless knight? I already told you my thoughts on this.~ */

== C#AjanJ IF ~GlobalLT("C#Ajantis_ThinkingNegative3","LOCALS",1)~ THEN @1041 /* ~How happy I was to see that you share my opinion. Your reassurance that my position as a knight would be enough for you gave me great comfort.~ */

== C#AjanJ IF ~GlobalLT("C#Ajantis_ThinkingNegative3","LOCALS",0)~ THEN @1042 /* ~And the way you said it was free from any doubt. I am very thankful, love.~ */

== C#AjanJ IF ~Global("C#Ajantis_ThinkingNegative3","LOCALS",0)~ THEN @1043 /* ~I am sorry that my position as a knight without a noble family does not make you as happy as you were, but I thank you for your support.~ */

== C#AjanJ IF ~GlobalGT("C#Ajantis_ThinkingNegative3","LOCALS",0)~ THEN @1044 /* ~Unfortunately, you made it clear that my position as a knight would not be enough for you, and that you were longing to become a lady by marriage. (sigh) Which I cannot offer you any more.~ */

== C#AjanJ @1045 /* ~I must confess that there was another, by no means unselfish side to these last questions. For in the end I would like to be able to count on you, trust you, and rely on you to support and appreciate me. I took so much strength from my family until now. This will no longer be possible after our wedding. The question that concerned me was: Will the strength you give me be sufficient?~ */

== C#AjanJ IF ~GlobalLT("C#Ajantis_ThinkingNegative","LOCALS",0)~ THEN @1046 /* ~And the answer is 'yes'. Since the very troubling answer from my parents, I received strength from your proximity and your support, and it is a neverending source.~ */
== C#AjanJ IF ~GlobalGT("C#Ajantis_ThinkingNegative","LOCALS",-1)~ THEN @1047 /* ~Alas... the counsel you gave me these last days troubled me, <CHARNAME>. I know it all concerns you, too, and my parents hurt you, so I cannot expect you to be there for me as you usually are, but... If I am to draw strength from you, I need more than this.~ */

== C#AjanJ @624
END
IF ~GlobalLT("C#Ajantis_ThinkingNegative2","LOCALS",1)
GlobalLT("C#Ajantis_ThinkingNegative3","LOCALS",1)
GlobalLT("C#Ajantis_ThinkingNegative","LOCALS",0)~ THEN + entscheidung_01

IF ~OR(3)
GlobalGT("C#Ajantis_ThinkingNegative2","LOCALS",0)
GlobalGT("C#Ajantis_ThinkingNegative3","LOCALS",0)
GlobalGT("C#Ajantis_ThinkingNegative","LOCALS",-1)~ THEN + entscheidung_02



APPEND C#AjanJ

IF ~~ THEN entscheidung_01
SAY @629
++ @626 + entscheidung_ja_09
++ @627 + entscheidung_ja_08
++ @628 + entscheidung_ja_07
++ @633 + entscheidung_ja_17
END

IF ~~ THEN entscheidung_02
SAY @630
= @1048 /* ~But... *you* do not seem to be content any more. I therefore suggest we end our bond.~ */
++ @595 + entscheidung_03
++ @596 + entscheidung_03
++ @1049 /* ~You gave a vow, Ajantis. You are bound to it!~ */ + entscheidung_04
++ @1050 /* ~Let us end our relationship.~ */ + rom_end_01
END

IF ~~ THEN entscheidung_03
SAY @1051 /* ~It was an offer to you, <CHARNAME>.~ */
++ @1049 /* ~You gave a vow, Ajantis. You are bound to it!~ */ + entscheidung_04
++ @1050 /* ~Let us end our relationship.~ */ + rom_end_01
END

IF ~~ THEN entscheidung_04
SAY @1052 /* ~I am indeed bound to my vow, and I will fulfill it.~ */
++ @1053 /* ~Then fulfill it, and speak no more about it.~ */ + entscheidung_ja_10_01
++ @1050 /* ~Let us end our relationship.~ */ + rom_end_01
END

IF ~~ THEN entscheidung_ja_07
SAY @631
++ @632 + entscheidung_ja_08
++ @633 + entscheidung_ja_17
END

IF ~~ THEN entscheidung_ja_08
SAY @634
= @635
= @636
++ @637 + entscheidung_ja_10
++ @638 + entscheidung_ja_17b
END

IF ~~ THEN entscheidung_ja_09
SAY @639
IF ~~ THEN + entscheidung_ja_08
END

IF ~~ THEN entscheidung_ja_10
SAY @640 
IF ~~ THEN + entscheidung_ja_10_01
END

IF ~~ THEN entscheidung_ja_10_01
SAY @1054 /* ~I thank you, <CHARNAME>.~ */
 
IF ~Global("C#AjantisSchmiedetRing","GLOBAL",1) 
OR(2)
Global("C#AjantisRing011","GLOBAL",1)
Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ0011",Player1,1,0,0) SetGlobal("C#AjantisSchmiedetRing","GLOBAL",2)
SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + entscheidung_ja_10_original
IF ~Global("C#AjantisSchmiedetRing","GLOBAL",1) Global("C#AjantisRing11A","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011A",Player1,1,0,0) SetGlobal("C#AjantisSchmiedetRing","GLOBAL",2)~ + entscheidung_ja_10_green
IF ~Global("C#AjantisSchmiedetRing","GLOBAL",1) Global("C#AjantisRing11B","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011B",Player1,1,0,0) SetGlobal("C#AjantisSchmiedetRing","GLOBAL",2)~ + entscheidung_ja_10_transparent
IF ~Global("C#AjantisSchmiedetRing","GLOBAL",1) Global("C#AjantisRing11C","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011C",Player1,1,0,0) SetGlobal("C#AjantisSchmiedetRing","GLOBAL",2)~ + entscheidung_ja_10_red
IF ~Global("C#AjantisSchmiedetRing","GLOBAL",1) Global("C#AjantisRing11D","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011D",Player1,1,0,0) SetGlobal("C#AjantisSchmiedetRing","GLOBAL",2)~ + entscheidung_ja_10_yellow
IF ~Global("C#AjantisSchmiedetRing","GLOBAL",1) Global("C#AjantisRing11G","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011G",Player1,1,0,0) SetGlobal("C#AjantisSchmiedetRing","GLOBAL",2)~ + entscheidung_ja_10_gemless

IF ~Global("C#AjantisNeuerRing","GLOBAL",1) 
OR(2)
Global("C#AjantisRing011","GLOBAL",1)
Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ0011",Player1,1,0,0) SetGlobal("C#AjantisNeuerRing","GLOBAL",2) SetGlobal("C#AjantisNeuerRingPID","LOCALS",2)
SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + entscheidung_ja_11_original
IF ~Global("C#AjantisNeuerRing","GLOBAL",1) Global("C#AjantisRing11A","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011A",Player1,1,0,0) SetGlobal("C#AjantisNeuerRing","GLOBAL",2) SetGlobal("C#AjantisNeuerRingPID","LOCALS",2)~ + entscheidung_ja_11_green
IF ~Global("C#AjantisNeuerRing","GLOBAL",1) Global("C#AjantisRing11B","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011B",Player1,1,0,0) SetGlobal("C#AjantisNeuerRing","GLOBAL",2) SetGlobal("C#AjantisNeuerRingPID","LOCALS",2)~ + entscheidung_ja_11_transparent
IF ~Global("C#AjantisNeuerRing","GLOBAL",1) Global("C#AjantisRing11C","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011C",Player1,1,0,0) SetGlobal("C#AjantisNeuerRing","GLOBAL",2) SetGlobal("C#AjantisNeuerRingPID","LOCALS",2)~ + entscheidung_ja_11_red
IF ~Global("C#AjantisNeuerRing","GLOBAL",1) Global("C#AjantisRing11D","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011D",Player1,1,0,0) SetGlobal("C#AjantisNeuerRing","GLOBAL",2) SetGlobal("C#AjantisNeuerRingPID","LOCALS",2)~ + entscheidung_ja_11_yellow
IF ~Global("C#AjantisNeuerRing","GLOBAL",1) Global("C#AjantisRing11G","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ011G",Player1,1,0,0) SetGlobal("C#AjantisNeuerRing","GLOBAL",2) SetGlobal("C#AjantisNeuerRingPID","LOCALS",2)~ + entscheidung_ja_11_gemless
END

IF ~~ THEN entscheidung_ja_10_original
SAY @641
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_10_green
SAY @642
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_10_transparent
SAY @643
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_10_red
SAY @644
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_10_yellow
SAY @645
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_10_gemless
SAY @646
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_11_original
SAY @647
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_11_green
SAY @648
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_11_transparent
SAY @649
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_11_red
SAY @650
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_11_yellow
SAY @651
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_11_gemless
SAY @652
IF ~~ THEN + entscheidung_ja_12
END

IF ~~ THEN entscheidung_ja_12
SAY @653
++ @654 + entscheidung_ja_13
++ @655 + entscheidung_ja_13
++ @656 + entscheidung_ja_13
++ @657 + entscheidung_ja_13
END

IF ~~ THEN entscheidung_ja_13
SAY @658
++ @659 + entscheidung_ja_15
++ @660 + entscheidung_ja_14
++ @661 + entscheidung_ja_16
END

IF ~~ THEN entscheidung_ja_14
SAY @662
++ @663 + entscheidung_ja_15
++ @664 + entscheidung_ja_16
END

IF ~~ THEN entscheidung_ja_15
SAY @665
IF ~~ THEN + entscheidung_ja_16
END

IF ~~ THEN entscheidung_ja_16
SAY @666
IF ~~ THEN DO ~SetGlobal("C#AjantisHochzeitsPlanen","GLOBAL",1)~ EXIT
END

IF ~~ THEN entscheidung_ja_17
SAY @667
++ @668 + entscheidung_ja_18
++ @669 + rom_end_01
END

IF ~~ THEN entscheidung_ja_17b
SAY @667
++ @668 + entscheidung_ja_10
++ @669 + rom_end_01
END

IF ~~ THEN entscheidung_ja_18
SAY @670
IF ~~ THEN + entscheidung_ja_08
END


//----------------

/*Ajantis gives a comment if he ordered the wedding rings */

IF ~Global("C#AjantisBestelltEhering","GLOBAL",3) !AreaCheck("AR0704")~ THEN bestellt
SAY @671 
IF ~~ THEN DO ~SetGlobal("C#AjantisBestelltEhering","GLOBAL",4)
SetGlobal("C#AjantisRINGSMWeg","GLOBAL",1)
SetGlobalTimer("C#AjantisGoldsmithSchmiedet","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~Global("C#AjantisBestelltEhering","GLOBAL",3) AreaCheck("AR0704")~ THEN bestellt_AR0704
SAY @672 
IF ~~ THEN DO ~SetGlobal("C#AjantisBestelltEhering","GLOBAL",4)
SetGlobal("C#AjantisRINGSMWeg","GLOBAL",1)
SetGlobalTimer("C#AjantisGoldsmithSchmiedet","GLOBAL",TWO_DAYS)~ EXIT
END

END //APPEND C#AjanJ 

//----------------
/* Wedding preparations. This talk only fires, if the PID wasn't chosen
(i.e. "Global("C#AjantisHochzeitsPlanen","GLOBAL",1)"): i.e. can be directly triggered by C#AjanPID */


CHAIN
IF ~Global("C#AjantisLoveTalk","GLOBAL",28)~ THEN C#AjanJ wedding_preparations
@673 

== C#AjanJ IF ~!Global("C#AjantisHochzeitsPlanen","GLOBAL",2)~ THEN @982
END

+ ~!Global("C#AjantisHochzeitsPlanen","GLOBAL",2)~ + @674 DO ~SetGlobal("C#AjantisHochzeitsPlanen","GLOBAL",2) SetGlobal("C#AjantisGoldsmithLT","GLOBAL",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",29)~ + wedding_preparations_00
+ ~!Global("C#AjantisHochzeitsPlanen","GLOBAL",2)~ + @675 DO ~SetGlobal("C#AjantisHochzeitsPlanen","GLOBAL",2) SetGlobal("C#AjantisGoldsmithLT","GLOBAL",1) SetGlobal("C#AjantisLoveTalk","GLOBAL",29)~ + wedding_preparations_00b
+ ~!Global("C#AjantisHochzeitsPlanen","GLOBAL",2)~ + @983 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",27)~ + wedding_preparations_00_00

IF ~Global("C#AjantisHochzeitsPlanen","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",29)~ + wedding_preparations_00

APPEND C#AjanJ 

IF ~~ THEN wedding_preparations_00_00
SAY @984 
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_preparations_00
SAY @676 
++ @677 + wedding_preparations_01
++ @678 + wedding_preparations_02
++ @679 + wedding_preparations_03
+ ~OR(2)
Global("JoinLathander","GLOBAL",1)
Kit(Player1,GODLATHANDER)
!Global("Stripped","GLOBAL",3)~ + @680 + wedding_preparations_03b
+ ~OR(2)
Global("JoinLathander","GLOBAL",1)
Kit(Player1,GODLATHANDER)
Global("Stripped","GLOBAL",3)~ + @681 + wedding_preparations_04
+ ~InPartyAllowDead("Anomen") !Global("AnomenIsNotKnight","GLOBAL",1)~ + @985 + wedding_preparations_03c
+ ~Class(Player2,CLERIC_ALL) !Name("ANOMEN",Player2) !Name("C#Ajantis",Player2) !Alignment(Player2,MASK_EVIL)~ + @986 + wedding_preparations_03d
+ ~Class(Player3,CLERIC_ALL) !Name("ANOMEN",Player3)  !Name("C#Ajantis",Player3) !Alignment(Player3,MASK_EVIL)~ + @987 + wedding_preparations_03d
+ ~Class(Player4,CLERIC_ALL) !Name("ANOMEN",Player4) !Name("C#Ajantis",Player4) !Alignment(Player4,MASK_EVIL)~ + @988 + wedding_preparations_03d
+ ~Class(Player5,CLERIC_ALL) !Name("ANOMEN",Player5) !Name("C#Ajantis",Player5) !Alignment(Player5,MASK_EVIL)~ + @989 + wedding_preparations_03d
+ ~Class(Player6,CLERIC_ALL) !Name("ANOMEN",Player6) !Name("C#Ajantis",Player6) !Alignment(Player6,MASK_EVIL)~ + @990 + wedding_preparations_03d
+ ~InPartyAllowDead("B!Gavin2")~ + @991 + wedding_preparations_03e
END

IF ~~ THEN wedding_preparations_00b
SAY @682
IF ~~ THEN + wedding_preparations_00
END

IF ~~ THEN wedding_preparations_01
SAY @683
IF ~~ THEN + wedding_preparations_05
END

IF ~~ THEN wedding_preparations_02
SAY @684
IF ~~ THEN + wedding_preparations_05
END

IF ~~ THEN wedding_preparations_03
SAY @685
++ @686 + wedding_preparations_01
++ @678 + wedding_preparations_02
++ @687 + wedding_preparations_04
+ ~OR(2)
Global("JoinLathander","GLOBAL",1)
Kit(Player1,GODLATHANDER)
!Global("Stripped","GLOBAL",3)~ + @680 + wedding_preparations_03b
+ ~OR(2)
Global("JoinLathander","GLOBAL",1)
Kit(Player1,GODLATHANDER)
Global("Stripped","GLOBAL",3)~ + @681 + wedding_preparations_04
+ ~InPartyAllowDead("Anomen") !Global("AnomenIsNotKnight","GLOBAL",1)~ + @985 + wedding_preparations_03c
+ ~Class(Player2,CLERIC_ALL) !Name("ANOMEN",Player2) !Name("C#Ajantis",Player2) !Alignment(Player2,MASK_EVIL)~ + @986 + wedding_preparations_03d
+ ~Class(Player3,CLERIC_ALL) !Name("ANOMEN",Player3)  !Name("C#Ajantis",Player3) !Alignment(Player3,MASK_EVIL)~ + @987 + wedding_preparations_03d
+ ~Class(Player4,CLERIC_ALL) !Name("ANOMEN",Player4) !Name("C#Ajantis",Player4) !Alignment(Player4,MASK_EVIL)~ + @988 + wedding_preparations_03d
+ ~Class(Player5,CLERIC_ALL) !Name("ANOMEN",Player5) !Name("C#Ajantis",Player5) !Alignment(Player5,MASK_EVIL)~ + @989 + wedding_preparations_03d
+ ~Class(Player6,CLERIC_ALL) !Name("ANOMEN",Player6) !Name("C#Ajantis",Player6) !Alignment(Player6,MASK_EVIL)~ + @990 + wedding_preparations_03d
+ ~InPartyAllowDead("B!Gavin2")~ + @991 + wedding_preparations_03e
END

IF ~~ THEN wedding_preparations_03b
SAY @688
++ @689 + wedding_preparations_01
++ @678 + wedding_preparations_02
++ @687 + wedding_preparations_04
+ ~InPartyAllowDead("Anomen") !Global("AnomenIsNotKnight","GLOBAL",1)~ + @985 + wedding_preparations_03c
+ ~Class(Player2,CLERIC_ALL) !Name("ANOMEN",Player2) !Name("C#Ajantis",Player2) !Alignment(Player2,MASK_EVIL)~ + @986 + wedding_preparations_03d
+ ~Class(Player3,CLERIC_ALL) !Name("ANOMEN",Player3)  !Name("C#Ajantis",Player3) !Alignment(Player3,MASK_EVIL)~ + @987 + wedding_preparations_03d
+ ~Class(Player4,CLERIC_ALL) !Name("ANOMEN",Player4) !Name("C#Ajantis",Player4) !Alignment(Player4,MASK_EVIL)~ + @988 + wedding_preparations_03d
+ ~Class(Player5,CLERIC_ALL) !Name("ANOMEN",Player5) !Name("C#Ajantis",Player5) !Alignment(Player5,MASK_EVIL)~ + @989 + wedding_preparations_03d
+ ~Class(Player6,CLERIC_ALL) !Name("ANOMEN",Player6) !Name("C#Ajantis",Player6) !Alignment(Player6,MASK_EVIL)~ + @990 + wedding_preparations_03d
+ ~InPartyAllowDead("B!Gavin2")~ + @991 + wedding_preparations_03e
END

END //APPEND

CHAIN
IF ~~ THEN C#AjanJ wedding_preparations_03c
@992
== C#AjanJ  IF ~OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ THEN @993
END
IF ~~ THEN + wedding_preparations_03d

APPEND C#AjanJ 

IF ~~ THEN wedding_preparations_03d
SAY @994
++ @995 + wedding_preparations_04
++ @996 + wedding_preparations_04
++ @997 + wedding_preparations_04
END

END //APPEND C#AjanJ 

CHAIN
IF ~~ THEN C#AjanJ wedding_preparations_03e
@998
== C#AjanJ IF ~OR(2) 
        Global("B!GavRA","GLOBAL",1) 
        Global("B!GavRA","GLOBAL",2)~ THEN @993
END
IF ~~ THEN + wedding_preparations_03d


APPEND C#AjanJ 

IF ~~ THEN wedding_preparations_04
SAY @690
IF ~~ THEN + wedding_preparations_05
END

IF ~~ THEN wedding_preparations_05
SAY @691
IF ~Global("C#AjantisPCChoseRing","GLOBAL",0)
OR(2)
Global("C#AjantisC#RINGSM","GLOBAL",2)
Global("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisGoldsmithLT","GLOBAL",1)~ + wedding_preparations_06
IF ~Global("C#AjantisPCChoseRing","GLOBAL",0)
!Global("C#AjantisC#RINGSM","GLOBAL",2)
!Global("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisGoldsmithLT","GLOBAL",1)~ + wedding_preparations_07
IF ~Global("C#AjantisPCChoseRing","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisGoldsmithLT","GLOBAL",1)~ + wedding_preparations_09
END

IF ~~ THEN wedding_preparations_06
SAY @692
= @693
++ @694 + wedding_preparations_11
++ @695 + wedding_preparations_14
END

IF ~~ THEN wedding_preparations_07
SAY @696
= @697
++ @698 + wedding_preparations_12
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @699 + wedding_preparations_08
++ @700 + wedding_preparations_11
END

IF ~~ THEN wedding_preparations_08
SAY @701
++ @700 + wedding_preparations_11
++ @695 + wedding_preparations_14
END

IF ~~ THEN wedding_preparations_09
SAY @702
++ @703 + wedding_preparations_10
++ @704 + wedding_preparations_11
++ @705 + wedding_preparations_14
END

IF ~~ THEN wedding_preparations_10
SAY @706
IF ~~ THEN DO ~SetGlobal("C#AjantisPCChoseRing","GLOBAL",2) SetGlobal("C#AjantisWeddingRingsPID","LOCALS",3) SetGlobal("C#AjantisBestelltEhering","GLOBAL",1) SetGlobal("C#AjantisMusterbeutel","GLOBAL",6)~ + wedding_preparations_17
END

IF ~~ THEN wedding_preparations_11
SAY @707
+ ~Global("C#AjantisPCChoseRing","GLOBAL",1)~ + @724 + wedding_preparations_10
+ ~!AreaCheck("AR0704")~ + @708 + wedding_preparations_13
++ @709 + wedding_preparations_18
+ ~AreaCheck("AR0704")~ + @712 + wedding_preparations_13
++ @695 + wedding_preparations_14
END

IF ~~ THEN wedding_preparations_12
SAY @713
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @714 + wedding_preparations_08
++ @700 + wedding_preparations_11
++ @715 + wedding_preparations_14
END

IF ~~ THEN wedding_preparations_13
SAY @716
IF ~~ THEN DO ~SetGlobal("C#AjantisMusterbeutel","GLOBAL",1)~ + wedding_preparations_17
END

IF ~~ THEN wedding_preparations_14
SAY @717
++ @718 + wedding_preparations_16
++ @719 + wedding_preparations_16
++ @720 + wedding_preparations_15
END

IF ~~ THEN wedding_preparations_15
SAY @721
++ @718 + wedding_preparations_16
++ @722 + wedding_preparations_16
END

IF ~~ THEN wedding_preparations_16
SAY @723
IF ~~ THEN + wedding_preparations_11
END

IF ~~ THEN wedding_preparations_17
SAY @725
++ @726 + wedding_preparations_19
++ @727 + wedding_preparations_19
++ @728 + wedding_preparations_20
END

IF ~~ THEN wedding_preparations_18
SAY @729
IF ~~ THEN DO ~SetGlobal("C#AjantisMusterbeutel","GLOBAL",2)~ + wedding_preparations_17
END

IF ~~ THEN wedding_preparations_19
SAY @730
IF ~~ THEN + wedding_preparations_21
END

IF ~~ THEN wedding_preparations_20
SAY @731
IF ~~ THEN + wedding_preparations_21
END

IF ~~ THEN wedding_preparations_21
SAY @732
= @733
++ @734 + wedding_preparations_24
++ @735 + wedding_preparations_22
++ @736 + wedding_preparations_23
END

IF ~~ THEN wedding_preparations_22
SAY @1055 /* ~This leaves the last question, my love. There will be only us... at least from my side. Do you see any reason not to marry as soon as possible?~ */
++ @1056 /* ~No. Let us do it as soon as possible.~ */ + wedding_preparations_26
+ ~Global("C#IM_ImoenStays","GLOBAL",0) GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @1057 /* ~Ajantis, Imoen is all family I have left. I want to wait until we freed her.~ */ + wedding_preparations_27
++ @1058 /* ~I don't care.~ */ + wedding_preparations_26
END

IF ~~ THEN wedding_preparations_23
SAY @738
IF ~~ THEN + wedding_preparations_22
END

IF ~~ THEN wedding_preparations_24
SAY @739
= @740
IF ~~ THEN + wedding_preparations_22
END

IF ~~ THEN wedding_preparations_25
SAY @314 /* ~Of course.~ */
IF ~~ THEN DO ~SetGlobal("C#AjantisWedNotWithoutImoen","GLOBAL",1)~ + wedding_preparations_26
END

IF ~~ THEN wedding_preparations_26
SAY @737
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_preparations_27
SAY @447
++ @448 + wedding_preparations_25
++ @710 + wedding_preparations_25
++ @711 + wedding_preparations_26
IF ~~ THEN EXIT
END


//-------------------------------
/* choosing of the ring
talk only fires if the PC wanted to have the sample bag, i.e. for "Global("C#AjantisHochzeitsPlanen","GLOBAL",2)" and "Global("C#AjantisMusterbeutel","GLOBAL",2)" and "GlobalTimerExpired("C#AjantisMusterbeutelT","GLOBAL")" and of course AreaChecks (CityAreas) etc.  --> "Romance.baf"
and PC didn't choose the ring yet: GlobalLT("C#AjantisPCChoseRing","GLOBAL",2) */

// gembag with wedding ring samples: "C#AJBA02"

IF ~Global("C#AjantisMusterbeutel","GLOBAL",4)~ THEN wedding_ring
SAY @741 
= @742
IF ~~ THEN DO ~GiveItemCreate("C#AJBA02",Myself,1,0,0) SetGlobal("C#AjantisMusterRing","GLOBAL",1) SetGlobal("C#AjantisMusterbeutel","GLOBAL",5)~ EXIT
END

END //APPEND C#AjanJ

I_C_T3 ARAN 47 C#AjantisRingBeforUnderdark
== C#AjanJ IF ~Global("C#IM_ImoenStays","GLOBAL",0)
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMusterbeutel","GLOBAL",5)
Global("C#AjantisMusterRing","GLOBAL",1)~ THEN @743 DO ~TakePartyItem("C#AJBA02") DestroyItem("C#AJBA02") 
SetGlobal("C#AjantisMusterbeutel","GLOBAL",1)
SetGlobal("C#AjantisMusterRing","GLOBAL",0)
SetGlobal("C#AjantisDestroyBag","GLOBAL",1)~
== C#AjanJ IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMusterbeutel","GLOBAL",5)
Global("C#AjantisMusterRing","GLOBAL",1)~ THEN @1067 DO ~TakePartyItem("C#AJBA02") DestroyItem("C#AJBA02") 
SetGlobal("C#AjantisMusterbeutel","GLOBAL",1)
SetGlobal("C#AjantisMusterRing","GLOBAL",0)
SetGlobal("C#AjantisDestroyBag","GLOBAL",1)~
END

//Baum des Lebens: Ajantis schickt den Beutel ebenfalls zurück (DONE)

//-------------------------------------

/* present: red gem bag
following LTs fire for GlobalGT("C#AjantisPCChoseRing","GLOBAL",1) 
This talk fires independent to the wedding */

APPEND C#AjanJ


IF ~Global("C#AjantisLoveTalk","GLOBAL",30)~ THEN present
SAY @744 
= @745
= @746
= @747
++ @748 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",31)~ + present_01
++ @749 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",31)~ + present_02
++ @750 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",31)~ + present_03
END

IF ~~ THEN present_01
SAY @751
IF ~~ THEN DO ~GiveItemCreate("C#AJBA01",Player1,1,0,0)~ EXIT
END

IF ~~ THEN present_02
SAY @752
IF ~~ THEN DO ~GiveItemCreate("C#AJBA01",Player1,1,0,0)~ EXIT
END

IF ~~ THEN present_03
SAY @753
IF ~~ THEN DO ~SetGlobal("C#AjantisSchmuckbeutelPID","GLOBAL",2) GiveItemCreate("C#AJBA01",Player1,1,0,0)~ EXIT
END

//---------------------------------------

/* following LTs fire for GlobalGT("C#AjantisPCChoseRing","GLOBAL",1) 
This talk fires independent to the wedding */

IF ~Global("C#AjantisLoveTalk","GLOBAL",32)~ THEN letters
SAY @754 
++ @755 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",33)~ + letters_0a
++ @756 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",33)~ + letters_00
++ @757 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",33)~ + letters_0b
++ @758 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",33)~ + letters_0c
END

IF ~~ THEN letters_0a
SAY @759
IF ~~ THEN + letters_00
END

IF ~~ THEN letters_0b
SAY @760
IF ~~ THEN + letters_00
END

IF ~~ THEN letters_0c
SAY @761
IF ~~ THEN + letters_00
END

IF ~~ THEN letters_00
SAY @762
= @763
++ @764 + letters_01
++ @765 + letters_01
++ @766 + letters_01b
END

IF ~~ THEN letters_01
SAY @767
++ @768 + letters_02
++ @769 + letters_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @770 + letters_03
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @770 + letters_04
END

IF ~~ THEN letters_01b
SAY @771
++ @768 + letters_02
++ @769 + letters_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @770 + letters_03
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @770 + letters_04
END

IF ~~ THEN letters_02
SAY @772
IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN + letters_03
IF ~Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN + letters_04
END

IF ~~ THEN letters_03
SAY @773
IF ~~ THEN DO ~SetGlobal("C#AjantisLetterparents","GLOBAL",1) SetGlobalTimer("C#AjantisDisinheritageT","GLOBAL",FOUR_DAYS)~ EXIT
END

IF ~~ THEN letters_04
SAY @774
IF ~~ THEN DO ~SetGlobal("C#AjantisLetterparents","GLOBAL",1) SetGlobalTimer("C#AjantisDisinheritageT","GLOBAL",FOUR_DAYS)~ EXIT
END

IF ~~ THEN letters_05
SAY @775
IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN + letters_03
IF ~Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN + letters_04
END

//-------------------------------------
/* wedding is ready: fires for "Global("C#AjantisPCChoseRing","GLOBAL",2) GlobalTimerExpired("C#AjantisGoldsmithSchmiedet","GLOBAL")


OR(2)
Global("C#AjantisWedNotWithoutImoen","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_6%)

For Global("C#AjantisWeddingReady","GLOBAL",2), PC and Ajantis can go to the temple of Helm any time they want, and the wedding cutscene will be triggered. */


/* PC said not without Imoen, Chapter < 4 */


IF ~Global("C#AjantisWeddingReady","GLOBAL",1)
Global("C#AjantisWedNotWithoutImoen","GLOBAL",1)
!Global("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN wedding_ready_imoen
SAY @446 /* ~Love, our wedding rings are forged and with my religious brethren. As soon as Imoen is freed, we can go to celebrate our wedding!~ */ 
IF ~~ THEN DO ~SetGlobal("C#AjantisWeddingReady","GLOBAL",6)~ EXIT
END


/* either PC said nothing about waiting for Imoen, or it's chapter > 5 */

IF ~Global("C#AjantisWeddingReady","GLOBAL",1)
OR(2)
Global("C#AjantisWedNotWithoutImoen","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN wedding_ready
SAY @776 
= @777
++ @778 DO ~SetGlobal("C#AjantisWeddingReady","GLOBAL",2)~ + wedding_ready_01
++ @779 DO ~SetGlobal("C#AjantisWeddingReady","GLOBAL",2)~ + wedding_ready_02
++ @780 DO ~SetGlobal("C#AjantisWeddingReady","GLOBAL",2)~ + wedding_ready_04
END

IF ~~ THEN wedding_ready_01
SAY @781
++ @779 + wedding_ready_02
++ @782 + wedding_ready_05
END

IF ~~ THEN wedding_ready_02
SAY @783
++ @784 DO ~SetGlobal("C#AjantisBrueckenTempel","GLOBAL",1)~ + wedding_ready_03
++ @785 + wedding_ready_03
END

IF ~~ THEN wedding_ready_03
SAY @786
IF ~~ THEN + wedding_ready_06
END

IF ~~ THEN wedding_ready_04
SAY @787
++ @788 DO ~SetGlobal("C#AjantisWeddingReady","GLOBAL",5)~ + wedding_ready_04b
++ @789 + wedding_ready_01
END

IF ~~ THEN wedding_ready_04b
SAY @144
++ @145 + ring_10c
++ @146 + ring_10c
++ @147 + ring_10c
++ @143 + wedding_ready_04
END

IF ~~ THEN wedding_ready_05
SAY @790
IF ~~ THEN + wedding_ready_06
END

IF ~~ THEN wedding_ready_06
SAY @791
IF ~!HasItem("C#AJCHBE","C#Ajantis")~ THEN UNSOLVED_JOURNAL @10006
EXIT
IF ~HasItem("C#AJCHBE","C#Ajantis")~ THEN UNSOLVED_JOURNAL @10006 + wedding_ready_07
END

IF ~~ THEN wedding_ready_07
SAY @792
IF ~GlobalLT("C#AjantisUDBelt","GLOBAL",11)~ THEN + nach_abduction_11
IF ~GlobalGT("C#AjantisUDBelt","GLOBAL",10)~ THEN + nach_abduction_12
END

IF ~~ THEN nach_abduction_11
SAY @793
IF ~~ THEN EXIT
END

IF ~~ THEN nach_abduction_12
SAY @794
IF ~~ THEN EXIT
END

//PC killed the priest 
IF ~Global("C#AjanPCKilledC#AJPR01","GLOBAL",1)~ THEN killed_priest
SAY @795 
IF ~~ THEN DO ~SetGlobal("C#AjanPCKilledC#AJPR01","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("TempleShout0903","GLOBAL",1) LeaveParty() Enemy() SetLeavePartyDialogFile() Attack(Player1)~ 
EXIT
END

END //APPEND C#AjanJ


/* INTERJECT, in Arans Dialog, wenn die HC aufbricht, obwohl alles vorbereitet ist. */

I_C_T ARAN 47 C#AjantisWeddingBeforeUD
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisWeddingReady","GLOBAL",2)
Global("C#AjantisWedNotWithoutImoen","GLOBAL",0)~ THEN @796   
END

//-------------------------------

/* Cutscene triggeres either in the temple of Helm in Temple district ("Global("C#AjantisBrueckenTempel","GLOBAL",0)") or in the temple of Helm in Bridge district (for "Global("C#AjantisBrueckenTempel","GLOBAL",1)") and Global("C#AjantisWeddingReady","GLOBAL",2)
*/

BEGIN C#AJPR01

IF ~InParty("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
InMyArea("C#Ajantis")
InMyArea(Player1)
Global("C#AjantisStartWedding","GLOBAL",0)~ THEN trauung
SAY @798 
+ ~!HasItem("C#AJCHBE","C#Ajantis")~ + @799 + trauung_05_chain
+ ~!HasItem("C#AJCHBE","C#Ajantis")~ + @800 DO ~SetGlobal("C#AJAskedAboutPR01","GLOBAL",1)~ + trauung_04
+ ~!HasItem("C#AJCHBE","C#Ajantis")~ + @801 + trauung_01
IF ~HasItem("C#AJCHBE","C#Ajantis")~ THEN EXTERN C#AjanJ no_wedding_with_belt
END

APPEND C#AjanJ

IF ~~ THEN no_wedding_with_belt
SAY @802 
IF ~~ THEN EXTERN C#AJPR01 trauung_01
END

END

APPEND C#AJPR01

IF ~~ THEN trauung_01
SAY @803
IF ~AreaCheck("AR0512")~ THEN DO ~MoveToPoint([338.299]) SetGlobal("C#AjantisStartWedding","GLOBAL",2)~ EXIT
IF ~AreaCheck("AR0901")~ THEN DO ~SetGlobal("C#AjantisStartWedding","GLOBAL",2)~ EXIT
END

IF ~Global("C#AjantisStartWedding","GLOBAL",2)
OR(2)
	IsGabber(Player1)
	IsGabber("C#Ajantis")
InParty("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
InMyArea("C#Ajantis")
InMyArea(Player1)
Global("C#AjantisWeddingReady","GLOBAL",2)~ THEN trauung_02
SAY @804
++ @799 + trauung_05_chain
+ ~Global("C#AJAskedAboutPR01","GLOBAL",0)~ + @800 DO ~SetGlobal("C#AJAskedAboutPR01","GLOBAL",1)~ + trauung_04
++ @801 + trauung_01
END

IF ~!Global("C#AjantisStartWedding","GLOBAL",3)
OR(2)
	!IsGabber(Player1)
	!IsGabber("C#Ajantis")
Global("C#AjantisWeddingReady","GLOBAL",2)~ THEN trauung_03
SAY @805
IF ~~ THEN EXIT
END

IF ~Global("C#AjantisStartWedding","GLOBAL",2)
OR(5)
	!InParty("C#Ajantis")
	StateCheck("C#Ajantis",CD_STATE_NOTVALID)
	StateCheck(Player1,CD_STATE_NOTVALID)
	!InMyArea("C#Ajantis")
	!InMyArea(Player1)
OR(2)
	IsGabber(Player1)
	IsGabber("C#Ajantis")
Global("C#AjantisWeddingReady","GLOBAL",2)~ THEN trauung_03b
SAY @806
IF ~~ THEN EXIT
END

IF ~~ THEN trauung_04
SAY @807
++ @799 + trauung_05_chain
++ @801 + trauung_01
END

IF ~~ THEN trauung_05
SAY @808
IF ~Global("C#AjantisEheRing","GLOBAL",1)~ THEN DO ~GiveItemCreate("C#AJ021A",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",2)~ THEN DO ~GiveItemCreate("C#AJ21AA",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",3)~ THEN DO ~GiveItemCreate("C#AJ21BA",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",4)~ THEN DO ~GiveItemCreate("C#AJ21CA",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",5)~ THEN DO ~GiveItemCreate("C#AJ21DA",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",6)~ THEN DO ~GiveItemCreate("C#AJ21AC",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",7)~ THEN DO ~GiveItemCreate("C#AJ021B",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",8)~ THEN DO ~GiveItemCreate("C#AJ21AB",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",9)~ THEN DO ~GiveItemCreate("C#AJ21BB",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",10)~ THEN DO ~GiveItemCreate("C#AJ21CB",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",11)~ THEN DO ~GiveItemCreate("C#AJ21DB",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
IF ~Global("C#AjantisEheRing","GLOBAL",12)~ THEN DO ~GiveItemCreate("C#AJ21BC",Player1,1,0,0) GiveItemCreate("C#AJ01AJ","C#Ajantis",1,0,0)~ + trauung_05_ext
END

IF ~~ THEN trauung_05_ext
SAY @809
= @810
IF ~~ THEN DO ~SetGlobal("C#AjantisStartWedding","GLOBAL",4)
SetGlobal("C#AjantisWeddingReady","GLOBAL",3) 
SetGlobal("C#AjantisPCMarriage","GLOBAL",1)
EraseJournalEntry(@10006) SetGlobalTimer("C#AjantisDisinheritageT","GLOBAL",FOUR_DAYS)
RealSetGlobalTimer("C#AjantisWeddingT","GLOBAL",10)
EscapeArea()~ SOLVED_JOURNAL @10022 EXIT
END

IF ~~ THEN trauung_06
SAY @811
++ @812 + trauung_07
++ @813 + trauung_05
END

IF ~~ THEN trauung_07
SAY @814
IF ~~ THEN DO ~SetGlobal("C#AjantisStartWedding","GLOBAL",4) SetGlobal("C#AjantisWeddingReady","GLOBAL",3) EscapeArea()~ EXTERN C#AjanJ rom_end_01
END

END //APPEND C#AJPR01

CHAIN
IF ~~ THEN C#AJPR01 trauung_05_chain
@815 DO ~GiveItemCreate("C#KRANZ",Player1,1,0,0)~
== C#AjanJ @816
END
IF ~AreaCheck("AR0512")~ THEN DO ~SetGlobal("C#AjantisStartWedding","GLOBAL",3) ClearAllActions() StartCutScene("C#WED1") StartCutSceneMode()~ EXIT
IF ~AreaCheck("AR0901")~ THEN DO ~SetGlobal("C#AjantisStartWedding","GLOBAL",3) ClearAllActions() StartCutScene("C#WED2") StartCutSceneMode()~ EXIT

CHAIN
IF ~Global("C#AjantisStartWedding","GLOBAL",3)~ THEN C#AJPR01 trauung_06_chain
@817
= @818
== C#AjanJ @819
== C#AJPR01 @820
END
++ @819 + trauung_05
++ @821 + trauung_06

//----------------------------
/* after wedding talk. Fires 10 s after the wedding 
IF Dialogue started over PID, it will start at "nach_hochzeit_07" (talk about children) "DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ " is done in "nach_hochzeit_07"
-- partly also in C#Ajan_PID.d-- */

APPEND C#AjanJ

IF ~Global("C#AjantisWeddingDialog","GLOBAL",1) GlobalLT("C#AjantisNachHochzeitPID","LOCALS",2)~ THEN nach_hochzeit
SAY @822 
++ @823 DO ~SetGlobal("C#AjantisNachHochzeitPID","LOCALS",2)~ + nach_hochzeit_03
++ @824 DO ~SetGlobal("C#AjantisNachHochzeitPID","LOCALS",2)~ + nach_hochzeit_04
++ @825 DO ~SetGlobal("C#AjantisNachHochzeitPID","LOCALS",2)~ + nach_hochzeit_01
END

IF ~~ THEN nach_hochzeit_01
SAY @826
= @827
IF ~~ THEN + nach_hochzeit_02
END

END //APPEND

CHAIN
IF ~~ THEN C#AjanJ nach_hochzeit_02
@828  
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @829
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)~ THEN @830
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @831
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) !HasItem("MISC84","MINSC")~ THEN @832
== BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @833
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @834
== BKORGAN IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @835
== BEDWIN IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @836
== BHAERDA IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @837
== BNALIA IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @838
== BVALYGA IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @839
== BVICONI IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @840
== BYOSHIM IF ~InParty("yoshimo") InMyArea("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @841
== BMAZZY IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @842
== BCERND IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @843
== BJAN IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @844
== BIMOEN2 IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @845
END
++ @846 + nach_hochzeit_06
++ @847 + nach_hochzeit_06
++ @848 + nach_hochzeit_05

APPEND C#AjanJ

IF ~~ THEN nach_hochzeit_03
SAY @849
IF ~~ THEN + nach_hochzeit_02
END

IF ~~ THEN nach_hochzeit_04
SAY @850
IF ~~ THEN + nach_hochzeit_02
END

IF ~~ THEN nach_hochzeit_05
SAY @851
IF ~~ THEN + nach_hochzeit_07
END

IF ~~ THEN nach_hochzeit_06
SAY @852
IF ~~ THEN + nach_hochzeit_07
END

IF ~Global("C#AjantisWeddingDialog","GLOBAL",1) Global("C#AjantisNachHochzeitPID","LOCALS",2)~ THEN nach_hochzeit_07
SAY @853
++ @854 DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ + nach_hochzeit_08
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @855 DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ + nach_hochzeit_10
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @855 DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ + nach_hochzeit_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @856 DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ + nach_hochzeit_10
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @856 DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ + nach_hochzeit_09
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + @857 DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ + nach_hochzeit_11
+ ~Global("C#IM_ImoenStays","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @858 DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ + nach_hochzeit_11
++ @859 DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",2)~ + nach_hochzeit_12
END

IF ~~ THEN nach_hochzeit_08
SAY @860
= @861
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @862 + nach_hochzeit_10
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @862 + nach_hochzeit_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @856 + nach_hochzeit_10
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @856 + nach_hochzeit_09
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + @857 + nach_hochzeit_11
+ ~Global("C#IM_ImoenStays","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @863 + nach_hochzeit_11
++ @864 + nach_hochzeit_12
END

IF ~~ THEN nach_hochzeit_09
SAY @865
++ @866 + nach_hochzeit_16
++ @867 + nach_hochzeit_17
++ @868 + nach_hochzeit_21
++ @869 + nach_hochzeit_15
END

IF ~~ THEN nach_hochzeit_10
SAY @870
++ @866 + nach_hochzeit_16
++ @867 + nach_hochzeit_17
++ @868 + nach_hochzeit_21
++ @869 + nach_hochzeit_15
++ @871 + nach_hochzeit_18
END

IF ~~ THEN nach_hochzeit_11
SAY @872
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @862 + nach_hochzeit_10
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @862 + nach_hochzeit_09
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @856 + nach_hochzeit_10
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ + @856 + nach_hochzeit_09
++ @864 + nach_hochzeit_12
END

IF ~~ THEN nach_hochzeit_12
SAY @873
IF ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ THEN + nach_hochzeit_13
IF ~Global("C#AjantisNoIntimacy","GLOBAL",0)~ THEN + nach_hochzeit_14
END

IF ~~ THEN nach_hochzeit_13
SAY @874
++ @875 + nach_hochzeit_16
++ @867 + nach_hochzeit_17
++ @868 + nach_hochzeit_21
++ @869 + nach_hochzeit_15
++ @871 + nach_hochzeit_18
END

IF ~~ THEN nach_hochzeit_14
SAY @876
++ @875 + nach_hochzeit_16
++ @867 + nach_hochzeit_17
++ @868 + nach_hochzeit_21
++ @869 + nach_hochzeit_15
END

IF ~~ THEN nach_hochzeit_15
SAY @877 
++ @878 + nach_hochzeit_16
++ @879 + nach_hochzeit_19
++ @880 + nach_hochzeit_17
++ @868 + nach_hochzeit_21
+ ~Global("C#AjantisNoIntimacy","GLOBAL",1)~ + @871 + nach_hochzeit_18
END

IF ~~ THEN nach_hochzeit_16
SAY @881
IF ~~ THEN EXIT
END

IF ~~ THEN nach_hochzeit_17
SAY @882
IF ~~ THEN + nach_hochzeit_20
END

IF ~~ THEN nach_hochzeit_18
SAY @883
IF ~~ THEN EXIT
END

IF ~~ THEN nach_hochzeit_19
SAY @884
IF ~~ THEN + nach_hochzeit_20
END

IF ~~ THEN nach_hochzeit_20
SAY @885
IF ~~ THEN EXIT
END

IF ~~ THEN nach_hochzeit_21
SAY @886
= @887
IF ~~ THEN EXIT
END


/* wedding night - morning after */

IF ~Global("C#AjantisWeddingDialog","GLOBAL",4)~ THEN wedding_morning
SAY @1059
= @1060
IF ~~ THEN DO ~SetGlobal("C#AjantisWeddingDialog","GLOBAL",5)~ EXIT
END


END //APPEND C#AjanJ







//------------------
/* disinheritage
fires after the wedding, obviously, and after the LT "letters" -> timer gets started at the two occasions and if all requirements are fulfilled, the messenger arrives.)
*/


CHAIN 
IF ~Global("C#AjantisDisinheritage","GLOBAL",1)~ THEN C#AJDOUG schildbote //Douglas
@888 DO ~SetGlobal("C#AjantisDisinheritage","GLOBAL",2)~
== C#AjanJ @889
= @890
END
++ @891 EXTERN C#AjanJ schildbote_01
++ @892 EXTERN C#AjanJ schildbote_01
++ @893 EXTERN C#AjanJ schildbote_01
++ @894 EXTERN C#AjanJ schildbote_01

APPEND C#AjanJ
IF ~~ THEN schildbote_01
SAY @895
= @896
= @897
IF ~~ THEN DO ~SetPlayerSound("C#Ajantis",@898,EXISTANCE5)~ EXTERN C#AJDOUG schildbote_02
END

IF ~~ THEN schildbote_03
SAY @899
++ @900 + schildbote_04a
+ ~PartyHasItem("C#AJSHLD")~ + @901 + schildbote_04b
+ ~OR(2)
PartyHasItem("C#AJSHL2")
PartyHasItem("C#AJSHL3")~ + @902 + schildbote_04b
+ ~OR(2)
PartyHasItem("C#AJSHL2")
PartyHasItem("C#AJSHL3")~ + @903 + schildbote_04c
END

IF ~~ THEN schildbote_03b
SAY @904
= @905
IF ~~ THEN DO ~ActionOverride("C#AJDOUG", EscapeArea())  SetGlobal("C#AjantisDisinheritage","GLOBAL",3) RealSetGlobalTimer("C#AjantisTalkAboutDisinh","GLOBAL",15)~ UNSOLVED_JOURNAL @10007 EXIT
END 

IF ~~ THEN schildbote_04a
SAY @906
IF ~~ THEN + schildbote_05
END

IF ~~ THEN schildbote_04b
SAY @907
IF ~~ THEN + schildbote_05
END

IF ~~ THEN schildbote_04c
SAY @908
IF ~~ THEN + schildbote_05
END

IF ~~ THEN schildbote_05
SAY @909
IF ~~ THEN DO ~SetGlobal("C#AjantisDisinheritage","GLOBAL",5)
ActionOverride("C#AJDOUG",EscapeArea())
RealSetGlobalTimer("C#AjantisTalkAboutDisinh","GLOBAL",15)~ EXIT
END 

END //APPEND

CHAIN 
IF ~~ THEN C#AJDOUG schildbote_02
@910 DO ~GiveItemCreate("SHLD04","C#Ajantis",1,0,0)~ 
== C#AjanJ @911
= @912
END
IF ~OR(3)
PartyHasItem("C#AJSHLD")
PartyHasItem("C#AJSHL2")
PartyHasItem("C#AJSHL3")~ THEN EXTERN C#AjanJ schildbote_03
IF ~!PartyHasItem("C#AJSHLD")
!PartyHasItem("C#AJSHL2")
!PartyHasItem("C#AJSHL3")~ THEN EXTERN C#AjanJ schildbote_03b


//---------------------------
/* Ajantis gives the shield to a messenger if not returned already */

BEGIN C#AJSHBO

CHAIN
IF ~Global("C#AjantisDisinheritage","GLOBAL",4)~ THEN C#AjanJ schildrueckgabe_02
@913 
= @914
== C#AJSHBO @915
== C#AjanJ @916
== C#AJSHBO @917 
== C#AjanJ @918 DO ~SetGlobal("C#AjantisDisinheritage","GLOBAL",5) EraseJournalEntry(@10007) ActionOverride("C#AJSHBO", EscapeArea())~
= @919
END
++ @920 + schildrueckgabe_03a
++ @921 + schildrueckgabe_03b


APPEND C#AjanJ

IF ~~ THEN schildrueckgabe_03a
SAY @922
IF ~~ THEN EXIT
END

IF ~~ THEN schildrueckgabe_03b
SAY @923
IF ~~ THEN EXIT
END

/* RealGlobalTimerExpired("C#AjantisTalkAboutDisinh","GLOBAL"): Ajantis talks about his disinheritage
*/

IF ~Global("C#AjantisDisinhDialog","GLOBAL",1)~ THEN verstossung
SAY @924
++ @925 + verstossung_02 
++ @926 + verstossung_02
++ @927 + verstossung_01
+ ~GlobalGT("C#AjantisSchildrueckgabe","GLOBAL",0)
GlobalLT("C#AjantisSchildrueckgabe","GLOBAL",4)~ + @928 + verstossung_02
+ ~OR(2)
Global("C#AjantisSchildrueckgabe","GLOBAL",0)
Global("C#AjantisSchildrueckgabe","GLOBAL",5)~ + @928 + verstossung_02
END

IF ~~ THEN verstossung_01
SAY @929
IF ~~ THEN + verstossung_02
END

IF ~~ THEN verstossung_02
SAY @930
= @931
IF ~~ THEN DO ~SetGlobal("C#AjantisDisinhDialog","GLOBAL",2)~ EXIT
END

//-------------------------

IF ~Global("C#AjantisLoveTalk","GLOBAL",34)~ THEN medallion
SAY @932 
+ ~OR(2)
	Global("%NewSoAGame%","GLOBAL",1)
	Global("X#AjantisRomanceFlirtFavor","GLOBAL",0)~ + @933 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",35)~ + medallion_01
+ ~OR(2)
	Global("%NewSoAGame%","GLOBAL",1)
	Global("X#AjantisRomanceFlirtFavor","GLOBAL",0)~ + @934 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",35)~ + medallion_03
+ ~OR(2)
	Global("%NewSoAGame%","GLOBAL",1)
	Global("X#AjantisRomanceFlirtFavor","GLOBAL",0)~ + @935 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",35)~ + medallion_02

+ ~GlobalGT("X#AjantisRomanceFlirtFavor","GLOBAL",0)
Global("X#AjantisRomanceHairLocket","GLOBAL",1)~ + @933 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",35)~ + medallion_01
+ ~GlobalGT("X#AjantisRomanceFlirtFavor","GLOBAL",0)
Global("X#AjantisRomanceHairLocket","GLOBAL",0)~ + @934 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",35)~ + medallion_03
+ ~GlobalGT("X#AjantisRomanceFlirtFavor","GLOBAL",0)
Global("X#AjantisRomanceHairLocket","GLOBAL",0)~ + @935 DO ~SetGlobal("C#AjantisLoveTalk","GLOBAL",35)~ + medallion_02
END

IF ~~ THEN medallion_01
SAY @936
= @937 
++ @938 + medallion_05
++ @939 + medallion_05
++ @940 + medallion_05
END

IF ~~ THEN medallion_02
SAY @941
IF ~~ THEN EXIT
END

IF ~~ THEN medallion_03
SAY @942
++ @943 + medallion_04
++ @944 + medallion_06
++ @945 + medallion_02
END

IF ~~ THEN medallion_04
SAY @946 
++ @938 + medallion_05
++ @939 + medallion_05
++ @940 + medallion_05
END

IF ~~ THEN medallion_05
SAY @947
IF ~~ THEN DO ~SetGlobal("C#AjantisMedallion","GLOBAL",1)~ EXIT
END

IF ~~ THEN medallion_06
SAY @948
++ @949 + medallion_07
++ @950 + medallion_02
END

IF ~~ THEN medallion_07
SAY @951 
++ @952 + medallion_05
++ @940 + medallion_05
END

END //APPEND
//------------
/* Medallion für Ajantis, "Global("C#AjantisMedallion","GLOBAL",1)"

DSHOP02: in DSHOP02.d
*/

EXTEND_BOTTOM RIBALD 0
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionRibald","GLOBAL",0)~ + @953 DO ~SetGlobal("C#AjantisMedallionRibald","GLOBAL",1)~ + ajantis_medallion_01
END

APPEND RIBALD  
IF ~~ THEN ajantis_medallion_01
SAY @954
COPY_TRANS RIBALD 0
END

END //APPEND RIBALD


//Maheer

EXTEND_BOTTOM SHOP03 2
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionMaheer","GLOBAL",0)~ + @955 DO ~SetGlobal("C#AjantisMedallionMaheer","GLOBAL",1)~ + ajantis_medallion_01
END

EXTEND_BOTTOM SHOP03 4
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionMaheer","GLOBAL",0)~ + @955 DO ~SetGlobal("C#AjantisMedallionMaheer","GLOBAL",1)~ + ajantis_medallion_01
END

EXTEND_BOTTOM SHOP03 8
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionMaheer","GLOBAL",0)~ + @955 DO ~SetGlobal("C#AjantisMedallionMaheer","GLOBAL",1)~ + ajantis_medallion_01
END

APPEND SHOP03 
IF ~~ THEN ajantis_medallion_01
SAY @956
IF ~~ THEN REPLY #15985 /* ~Ja, zeigt mir, was Ihr habt.~ */ GOTO 5
  IF ~~ THEN REPLY #60999 /* ~Was für Waffen verkauft Ihr?~ */ GOTO 4
  IF ~~ THEN REPLY #15987 /* ~Nein, ich werde jetzt gehen.~ */ GOTO 1
END

END //APPEND SHOP03 


//"Kaufmann" in Handelstreff
EXTEND_BOTTOM TRMER02 0
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionTRMER02","GLOBAL",0) 
Global("geniesgone","GLOBAL",0)~ + @953 DO ~SetGlobal("C#AjantisMedallionTRMER02","GLOBAL",1)~ + ajantis_medallion_01
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionTRMER02","GLOBAL",0) 
Global("geniesgone","GLOBAL",1)~ + @953 DO ~SetGlobal("C#AjantisMedallionTRMER02","GLOBAL",1)~ + ajantis_medallion_02
END

EXTEND_BOTTOM TRMER02 15
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionTRMER02","GLOBAL",0) 
Global("geniesgone","GLOBAL",0)~ + @953 DO ~SetGlobal("C#AjantisMedallionTRMER02","GLOBAL",1)~ + ajantis_medallion_01
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionTRMER02","GLOBAL",0) 
Global("geniesgone","GLOBAL",1)~ + @953 DO ~SetGlobal("C#AjantisMedallionTRMER02","GLOBAL",1)~ + ajantis_medallion_02
END

APPEND TRMER02 
IF ~~ THEN ajantis_medallion_01
SAY @957
IF ~~ THEN + 7
END

IF ~~ THEN ajantis_medallion_02
SAY @958 
++ @959 EXIT
++ @960 EXIT
END

END //APPEND TRMER02 


//Schmied in Handelstreff
EXTEND_BOTTOM TRMER04 3
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionTRMER04","GLOBAL",0)~ + @955 DO ~SetGlobal("C#AjantisMedallionTRMER04","GLOBAL",1)~ + ajantis_medallion_01
END

EXTEND_BOTTOM TRMER04 7
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionTRMER04","GLOBAL",0)~ + @955 DO ~SetGlobal("C#AjantisMedallionTRMER04","GLOBAL",1)~ + ajantis_medallion_01
END

APPEND TRMER04 
IF ~~ THEN ajantis_medallion_01
SAY @961
COPY_TRANS TRMER04 3
END

END //APPEND TRMER04 

//Elence Fielding in den Umarhügeln
EXTEND_BOTTOM UHMER01 1
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionUHMER01","GLOBAL",0)~ + @955 DO ~SetGlobal("C#AjantisMedallionUHMER01","GLOBAL",1)~ + ajantis_medallion_01
END

EXTEND_BOTTOM UHMER01 11
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionUHMER01","GLOBAL",0)~ + @955 DO ~SetGlobal("C#AjantisMedallionUHMER01","GLOBAL",1)~ + ajantis_medallion_01
END

EXTEND_BOTTOM UHMER01 14
+ ~Global("C#AjantisRomanceActive","GLOBAL",2) 
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMedallion","GLOBAL",1)
Global("C#AjantisMedallionUHMER01","GLOBAL",0)~ + @955 DO ~SetGlobal("C#AjantisMedallionUHMER01","GLOBAL",1)~ + ajantis_medallion_01
END

APPEND UHMER01 
IF ~~ THEN ajantis_medallion_01
SAY @962
++ @963 EXIT
++ @964 EXIT
END

END //APPEND UHMER01 




//-----------

APPEND C#AjanJ

IF ~Global("C#AjantisMedallion","GLOBAL",4)~ THEN medallion_2
SAY @965 
++ @966 DO ~SetGlobal("C#AjantisMedallion","GLOBAL",5)~ + medallion_2_01
++ @967 DO ~SetGlobal("C#AjantisMedallion","GLOBAL",5)~ + medallion_2_01
++ @968 DO ~SetGlobal("C#AjantisMedallion","GLOBAL",5)~ + medallion_2_02
END

IF ~~ THEN medallion_2_01
SAY @969
IF ~~ THEN DO ~SetGlobal("C#AjantisReplaceMedallion","GLOBAL",1)~ + medallion_2_03
END

IF ~~ THEN medallion_2_02
SAY @970
++ @971 + medallion_2_01
++ @972 EXIT
END

IF ~~ THEN medallion_2_03
SAY @973 
IF ~~ THEN EXIT
END



//--------------------------------------------

IF ~~ THEN rom_end_01
SAY @974
= @975
IF ~~ THEN DO ~SetGlobal("C#AjantisWegAlleine","GLOBAL",1) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
LeaveParty() SetLeavePartyDialogFile()
EscapeAreaMove("AR0903",1730,400,9)~  SOLVED_JOURNAL @10029 EXIT
END

END //APPEND