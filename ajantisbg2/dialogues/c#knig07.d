BEGIN C#KNIG07

IF ~True()~ THEN knight07
SAY @0
++ @1 + knight07_01
++ @2 + knight07_02 
++ @3 EXIT
END

IF ~~ THEN knight07_01
SAY @4
++ @5 + knight07_02
++ @6 EXIT
END

IF ~~ THEN knight07_02
SAY @7
++ @8 + knight07_03
++ @13 + knight07_05
++ @3 EXIT
END

IF ~~ THEN knight07_03
SAY @9 
++ @10 + knight07_04
++ @11 EXIT
END

IF ~~ THEN knight07_04
SAY @12
IF ~~ THEN DO ~SetGlobal("C#AjantisEngaged","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN knight07_05
SAY @9
++ @14 + knight07_06
++ @11 EXIT
END

IF ~~ THEN knight07_06
SAY @15
IF ~~ THEN DO ~SetGlobal("C#AjantisEngaged","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",0)
SetGlobal("C#AjanEngagementBrokenBG1","GLOBAL",1) EscapeArea()~ EXIT
END