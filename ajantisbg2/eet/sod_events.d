/* EET, continuous game: Ajantis ponders about the SoD events at the beginning of BGII */




APPEND c#ajanj

IF WEIGHT #-1
~Global("C#Ajantis_TalkAboutSoD","GLOBAL",1)~ THEN sod_events
SAY @0
++ @1 + sod_events_01
++ @2 + sod_events_01
++ @3 + sod_events_02
END

IF ~~ THEN sod_events_01
SAY @4
IF ~~ THEN + sod_events_02
END

IF ~~ THEN sod_events_02
SAY @5
IF ~~ THEN DO ~SetGlobal("C#Ajantis_TalkAboutSoD","GLOBAL",3)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3)
	Global("C#AjantisEngagedMatch","GLOBAL",1)
	Global("C#AjantisEngaged","GLOBAL",1)~ THEN + sod_events_rom
END

IF ~Global("C#Ajantis_TalkAboutSoD","GLOBAL",2)~ THEN sod_events_rom
SAY @6
++ @7 + sod_events_06
++ @8 + sod_events_06
++ @9 + sod_events_04
++ @10 + sod_events_03
END

IF ~~ THEN sod_events_03
SAY @11
IF ~~ THEN DO ~SetGlobal("C#Ajantis_TalkAboutSoD","GLOBAL",3)~ EXIT
END

IF ~~ THEN sod_events_04
SAY @12
IF ~~ THEN + sod_events_06
END

IF ~~ THEN sod_events_05
SAY @13
IF ~~ THEN + sod_events_03
END

IF ~~ THEN sod_events_06
SAY @14
++ @15 + sod_events_05
++ @10 + sod_events_03
END

END //APPEND
