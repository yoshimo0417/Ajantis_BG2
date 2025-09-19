EXTEND_BOTTOM HGWRA01 18
IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !Dead("C#Ajantis") Global("C#AjantisRomanceActive","GLOBAL",2) Global("C#AjantisMasterWraith","GLOBAL",0)~ THEN EXTERN HGWRA01 ajantis
END

CHAIN HGWRA01  ajantis
@0
== c#aja25j @1
== HGWRA01 @2
DO ~SetGlobal("C#AjantisMasterWraith","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#ajmwcu")~
EXIT

BEGIN ~C#AJ25MW~

CHAIN IF ~Global("C#AjantisMasterWraith","GLOBAL",1)~ THEN ~C#AJ25MW~ mw2
@3
DO ~SetGlobal("C#AjantisMasterWraith","GLOBAL",2)~
== c#aja25j @4
== C#AJ25MW @5
== c#aja25j @6
== C#AJ25MW @7
== c#aja25j @8
== C#AJ25MW @9
== c#aja25j @10
== C#AJ25MW @11
== c#aja25j @12
== C#AJ25MW @13
== c#aja25j @14
END
++ @15 EXTERN HGWRA01 25
++ @16 EXTERN HGWRA01 25
++ @17 EXTERN HGWRA01 25
+ ~CheckStatGT(Player1,16,WIS)~ + @18 EXTERN HGWRA01 25 


APPEND c#aja25j

IF ~Global("C#AjantisMasterWraith","GLOBAL",3)~ THEN masterwraith
SAY @19
++ @20 + masterwraith_00
++ @21 + masterwraith_01
++ @22 + masterwraith_05
END

IF ~~ THEN masterwraith_00
SAY @23
IF ~~ THEN + masterwraith_01
END 

IF ~~ THEN masterwraith_01
SAY @24
= @25
++ @26 + masterwraith_04
++ @22 + masterwraith_05
END

IF ~~ THEN masterwraith_02
SAY @27
= @37
IF ~~ THEN DO ~SetGlobal("C#AjantisMasterWraith","GLOBAL",4) RestParty()~ EXIT
END

IF ~~ THEN masterwraith_03
SAY @28 
IF ~~ THEN + masterwraith_06
END

IF ~~ THEN masterwraith_04
SAY @29
++ @30 + masterwraith_03
++ @31 + masterwraith_07
++ @32 + masterwraith_03
++ @22 + masterwraith_05
END

IF ~~ THEN masterwraith_05
SAY @33
IF ~~ THEN + masterwraith_02
END

IF ~~ THEN masterwraith_06
SAY @34
= @35
IF ~~ THEN + masterwraith_02
END

IF ~~ THEN masterwraith_07
SAY @36
IF ~~ THEN + masterwraith_03
END
END //APPEND c#aja25j