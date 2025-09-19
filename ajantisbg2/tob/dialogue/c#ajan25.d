BEGIN C#Ajan25

IF ~Global("%AjantisSummoned_Variable%","GLOBAL",2)~ THEN ajantis_summoned
SAY @0
IF ~Gender(Player1,MALE)~ DO ~TakeItemReplace("C#AJSHL2","SHLD06",Myself)~ + ajantis_summoned_02
IF ~%IsNotContiGameToB%
  Gender(Player1,FEMALE)
  !Class(Player1,THIEF)
  OR(4)
    Alignment(Player1,MASK_GOOD)
    Alignment(Player1,LAWFUL_NEUTRAL)
    Alignment(Player1,NEUTRAL)
    Class(Player1,DRUID_ALL)
  OR(4)
    Race(Player1,HUMAN)
    Race(Player1,HALF_ELF)
    Race(Player1,HALFLING)
    Race(Player1,ELF)~ THEN + ajantis_summoned_01
IF ~%IsNotContiGameToB%
  Gender(Player1,FEMALE)
  !Class(Player1,THIEF)
  !Alignment(Player1,MASK_GOOD)
  !Alignment(Player1,LAWFUL_NEUTRAL)
  !Alignment(Player1,NEUTRAL)
  !Class(Player1,DRUID_ALL)  
  !Race(Player1,HUMAN)
  !Race(Player1,HALF_ELF)
  !Race(Player1,HALFLING)
  !Race(Player1,ELF)~ THEN DO ~TakeItemReplace("C#AJSHL2","SHLD06",Myself)~ + ajantis_summoned_02
IF ~%IsNotContiGameToB%
  Gender(Player1,FEMALE)
  Class(Player1,THIEF)~ DO ~TakeItemReplace("C#AJSHL2","SHLD06",Myself)~ + ajantis_summoned_02
IF ~%IsContiGameToB%
  Gender(Player1,FEMALE)
  Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + ajantis_summoned_03
IF ~%IsContiGameToB%
  Gender(Player1,FEMALE)
  !Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + ajantis_summoned_02
END

//Global("C#AjantisDisinheritage","GLOBAL",1)

//TakeItemReplace("SHLD06","C#AJSHLD",Myself) TakeItemReplace("SHLD06","C#AJSHL2",Myself)

IF ~~ THEN ajantis_summoned_01
SAY @1 
++ @2 DO ~SetGlobal("C#AjantisPCMarriage","GLOBAL",1) SetGlobal("C#AjantisRomanceActive","GLOBAL",2) SetGlobal("C#AjantisDisinheritage","GLOBAL",1)
TakeItemReplace("C#AJSHL2","SHLD06",Myself)~ + ajantis_summoned_03
++ @3 DO ~SetGlobal("C#AjantisPCMarriage","GLOBAL",0) SetGlobal("C#AjantisRomanceActive","GLOBAL",2) TakeItemReplace("C#AJSHL2","SHLD06",Myself)~ + ajantis_summoned_03
++ @4 DO ~TakeItemReplace("C#AJSHL2","SHLD06",Myself)~ + ajantis_summoned_02
END

IF ~~ THEN ajantis_summoned_02
SAY @5
++ @6 DO ~SetGlobal("%AjantisSummoned_Variable%","GLOBAL",3)~ + ajantis_summoned_04
++ @7 DO ~SetGlobal("%AjantisSummoned_Variable%","GLOBAL",3)
SetGlobal("C#AjantisOrderWatch","LOCALS",1)~ + ajantis_summoned_06
++ @8 DO ~SetGlobal("%AjantisSummoned_Variable%","GLOBAL",3) SetGlobal("C#AjantisOrderWatch","LOCALS",1)~ + ajantis_summoned_04
++ @9 DO ~SetGlobal("%AjantisSummoned_Variable%","GLOBAL",3) SetGlobal("C#AjantisOrderWatch","LOCALS",1)~ + ajantis_summoned_05
END

IF ~~ THEN ajantis_summoned_03
SAY @10
++ @8 DO ~SetGlobal("%AjantisSummoned_Variable%","GLOBAL",3)~ + ajantis_summoned_04
++ @9 DO ~SetGlobal("%AjantisSummoned_Variable%","GLOBAL",3)~ + ajantis_summoned_05
END

IF ~~ THEN ajantis_summoned_04
SAY @11
IF ~~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) 
JoinParty()~ EXIT
END

IF ~~ THEN ajantis_summoned_05
SAY @12
IF ~~ THEN DO ~MoveToPoint([1599.1520])~ EXIT
END

IF ~~ THEN ajantis_summoned_06
SAY @13
++ @8 + ajantis_summoned_04
++ @9 + ajantis_summoned_05
END

IF ~!Global("C#AjantisRomanceActive","GLOBAL",2) Global("%AjantisSummoned_Variable%","GLOBAL",3)~ THEN join_now
SAY @14
++ @8 + ajantis_summoned_04
++ @9 + ajantis_summoned_05
END

IF ~Global("C#AjantisRomanceActive","GLOBAL",2) Global("%AjantisSummoned_Variable%","GLOBAL",3)~ THEN join_now_rom
SAY @15
++ @8 + ajantis_summoned_04
++ @9 + ajantis_summoned_05
END

BEGIN C#Aja25P

IF ~Global("C#AjantisJoined","GLOBAL",1)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN ajantis_kickout_rom
SAY @16
+ ~!AreaCheck("AR4500")~ + @17 + ajantis_kickout_02
+ ~AreaCheck("AR4500")~ + @17 + ajantis_kickout_03
++ @18 + ajantis_kickout_01
END

IF ~Global("C#AjantisJoined","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN ajantis_kickout
SAY @19
+ ~!AreaCheck("AR4500")~ + @20 + ajantis_kickout_04
+ ~AreaCheck("AR4500")~ + @20 + ajantis_kickout_05
++ @18 + ajantis_kickout_01
END

IF ~~ THEN ajantis_kickout_01
SAY @21
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN ajantis_kickout_02
SAY @22
IF ~~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",0)~ EXIT
END

IF ~~ THEN ajantis_kickout_03
SAY @23
IF ~~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",0) MoveToPoint([1599.1520])~ EXIT
END

IF ~~ THEN ajantis_kickout_04
SAY @24
IF ~~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",0)~ EXIT
END

IF ~~ THEN ajantis_kickout_05
SAY @25
IF ~~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",0) MoveToPoint([1599.1520])~ EXIT
END

IF ~!Global("C#AjantisRomanceActive","GLOBAL",2) Global("C#AjantisJoined","GLOBAL",0)~ THEN join_now
SAY @14
++ @8 + ajantis_summoned_04
++ @9 EXIT
END

IF ~Global("C#AjantisRomanceActive","GLOBAL",2) Global("C#AjantisJoined","GLOBAL",0)~ THEN join_now_rom
SAY @15
++ @8 + ajantis_summoned_04
++ @9 EXIT
END

IF ~~ THEN ajantis_summoned_04
SAY @11
IF ~~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) 
JoinParty()~ EXIT
END

