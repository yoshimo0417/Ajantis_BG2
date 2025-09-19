
APPEND c#aja25j

/* PC went with the Saradush vampires */

IF ~Global("C#AjantisSARPROVM_1","GLOBAL",2) Global("ToldVampires","GLOBAL",1)~ THEN vampcourtesans
SAY @0
= @1
++ @2 + vampcourtesans_02
++ @3 + vampcourtesans_04
++ @4 + vampcourtesans_03
++ @5 + vampcourtesans_01
END

IF ~~ THEN vampcourtesans_01
SAY @6
IF ~~ THEN + vampcourtesans_04
END

IF ~~ THEN vampcourtesans_02
SAY @7
IF ~~ THEN + vampcourtesans_04
END

IF ~~ THEN vampcourtesans_03
SAY @8
IF ~~ THEN + vampcourtesans_04
END

IF ~~ THEN vampcourtesans_04
SAY @9
IF ~~ THEN + vampcourtesans_end
END

IF ~~ THEN vampcourtesans_end
SAY @10
IF ~~ THEN DO ~SetGlobal("C#AjantisSARPROVM_1","GLOBAL",3)~ EXIT
END


IF ~Global("C#AjantisSARPROVM_1","GLOBAL",2) !Global("ToldVampires","GLOBAL",1)~ THEN vampcourtesans2
SAY @11
= @12
++ @13 + vampcourtesans2_01
++ @14 + vampcourtesans2_01
++ @15 + vampcourtesans2_02
++ @16 + vampcourtesans2_01
END

IF ~~ THEN vampcourtesans2_01
SAY @17
= @18
++ @19 + vampcourtesans2_03
++ @20 + vampcourtesans2_03
++ @21 + vampcourtesans2_03
END

IF ~~ THEN vampcourtesans2_02
SAY @22
IF ~~ THEN + vampcourtesans2_01
END

IF ~~ THEN vampcourtesans2_03
SAY @23
IF ~~ THEN + vampcourtesans_end
END





/* Sand, Sand, überall Sand! 
RA = 2
*/

IF ~Global("C#AjToB_Sand","GLOBAL",1)~ THEN sand
SAY @24
= @25
= @26
IF ~~ THEN DO ~SetGlobal("C#AjToB_Sand","GLOBAL",2)~ EXIT
END


/* Nach dem Tauchen in Abazigals Höhlen 

RA = 2
AreaCheck("AR6004")*/

IF ~Global("C#AjToB_Diving","GLOBAL",1)~ THEN tauchen
SAY @27
++ @28 + tauchen_01
++ @29 + tauchen_02
++ @30 + tauchen_02
++ @31 + tauchen_02
END

IF ~~ THEN tauchen_01
SAY @32
IF ~~ THEN + tauchen_02
END

IF ~~ THEN tauchen_02
SAY @33
= @34
IF ~~ THEN DO ~SetGlobal("C#AjToB_Diving","GLOBAL",2)~ EXIT
END










END //APPEND c#aja25j