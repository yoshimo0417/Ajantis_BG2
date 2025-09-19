////////////////////////////////////////////////////////////////
//C#AjanP
////////////////////////////////////////////////////////////////


//Antworten für Global("C#AjantisPCMarriage","GLOBAL",2) einfügen!

BEGIN ~C#AjanP~


//--- evil leave ----

IF ~Global("C#AjantisKeldornEnemy","GLOBAL",1)~ THEN keldorn_enemy
SAY @0
IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",1)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisKeldornEnemy","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("TempleShout0903","GLOBAL",1) Enemy() Attack(Player1)~ EXIT
IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("C#AjantisKeldornEnemy","GLOBAL",2)
SetGlobal("TempleShout0903","GLOBAL",1) Enemy() Attack(Player1)~ EXIT
END

IF ~Global("C#AjantisAdalonEnemy","GLOBAL",1)~ THEN adalon_enemy
SAY @1
IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",1)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisAdalonEnemy","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("TempleShout0903","GLOBAL",1) Enemy() Attack(Player1)~ EXIT
IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("C#AjantisAdalonEnemy","GLOBAL",2)
SetGlobal("TempleShout0903","GLOBAL",1) Enemy() Attack(Player1)~ EXIT
END

IF ~Global("C#AjantisDrowSklaven","GLOBAL",2)
Global("C#AjantisImUnterreich","GLOBAL",1)
Global("C#AjantisKickedOut","GLOBAL",1)~ THEN BEGIN return_meeting_drowsklaven
SAY @2 
IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven","GLOBAL",6) SetGlobal("TempleShout0903","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven","GLOBAL",6) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("TempleShout0903","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + return_meeting_drowsklaven_01
END

IF ~~ THEN return_meeting_drowsklaven_01
SAY @3
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowSklaven","GLOBAL",6) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("TempleShout0903","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ EXIT
END

//Ajantis knows of other PC love (engaged path)


IF ~Global("C#AjantisKickedOut","GLOBAL",1)
GlobalTimerExpired("C#AjantisKnowsPCLoveT","GLOBAL")
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisPCBrokeRomance","GLOBAL",0)
Global("C#AjantisBrokenRomanceP","GLOBAL",0)
~ THEN other_romance
SAY @4
IF ~Global("C#AjantisPCAnomenRom","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
OR(2)
GlobalGT("C#CheckAnomenLTGT32","GLOBAL",0) //after Anomen love night
Global("C#AjantisPCSleptWithAno","GLOBAL",1)
Global("C#AjantisPCAnomenRomance","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisBrokenRomanceP","GLOBAL",1)~ + anomen_romance_P
IF ~Global("C#AjantisPCAnomenRom","GLOBAL",1)
OR(2)
Global("C#CheckAnomenLTGT34","GLOBAL",1) //romance proceeded 
Global("C#AjantisPCSleptWithAno","GLOBAL",1) //PC slept with Anomen
Global("C#AjantisPCAnomenRomance","GLOBAL",0) //no dialogue after Anomen loving
Global("AnomenRomanceActive","GLOBAL",3) //Anomen romance dead	
Global("C#AjantisPCAnomenNight","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisBrokenRomanceP","GLOBAL",1)~ + anomen_lovenight_P
IF ~Global("C#AjantisPCAnomenRom","GLOBAL",0) Global("C#AjantisPCModRomance","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisBrokenRomanceP","GLOBAL",1)~ + mod_romance_P
END


//first meeting after broken romance 

IF ~Global("C#AjantisPCBrokeRomance","GLOBAL",1) Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisRomanceTotCheck","GLOBAL",0)
Global("C#AjantisKickedOut","GLOBAL",1)~ THEN erstes_treffen_nach_rom_ende
SAY @5
IF ~ReputationLT(Player1,13)~ THEN DO ~SetGlobal("C#AjantisRomanceTotCheck","GLOBAL",1)~ + return_meeting_rep_01
IF ~ReputationGT(Player1,12)~ THEN DO ~SetGlobal("C#AjantisRomanceTotCheck","GLOBAL",1)~ + return_meeting_rep_02
END


//meeting after bad reputation leave

IF ~Global("C#AjantisReputation","GLOBAL",1)
Global("C#AjantisKickedOut","GLOBAL",1)
ReputationLT(Player1,13)~ THEN BEGIN return_meeting_rep_01
SAY @6
IF ~~ THEN DO ~MoveToPoint([1730.400])~ EXIT
END

IF ~Global("C#AjantisReputation","GLOBAL",1)
Global("C#AjantisKickedOut","GLOBAL",1)
ReputationGT(Player1,12)~ THEN BEGIN return_meeting_rep_02
SAY @7
IF ~~ THEN DO ~SetGlobal("C#AjantisReputation","GLOBAL",0)~ + return_meeting
END

//normal non-romance meeting

IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)
!Global("C#AjantisReputation","GLOBAL",1)
Global("C#AjantisKickedOut","GLOBAL",1)~ THEN BEGIN return_meeting
SAY @8
+ ~Global("FirkraagDeal","GLOBAL",0)
Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")
Global("C#FirkraagErledigt","GLOBAL",0)~ + @9 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + return_meeting_01
+ ~Global("FirkraagDeal","GLOBAL",0)
Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")
Global("C#FirkraagErledigt","GLOBAL",1)~ + @10 + return_meeting_02
+ ~OR(4)
Global("FirkraagDeal","GLOBAL",1)
Dead ("garren")
Dead("garkid01")
Dead("garkid02")~ + @11 + return_meeting_04
+ ~Global("FirkraagDeal","GLOBAL",0)
!Dead("firkra02")
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @10 + return_meeting_02
+ ~AreaCheck("AR0903")~ + @12 DO ~MoveToPoint([1730.400])~ EXIT
+ ~!AreaCheck("AR0903")~ + @12 EXIT
+ ~!AreaCheck("AR0903")
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
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @13 + return_meeting_03
+ ~!AreaCheck("AR0903")
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
AreaCheck("AR1516")~ + @14 + return_rom_06
+ ~!AreaCheck("AR0903")
OR(18)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @14 DO ~SetGlobal("C#AjantisWegAlleine","GLOBAL",1) ~ + return_rom_06
END

//drow belt, Ajantis went to Athkatla alone

IF ~Global("C#AjantisUDBelt","GLOBAL",19)
Global("C#AjantisRomanceActive","GLOBAL",2)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN belt_gone_P
SAY @15
IF ~~ THEN DO ~SetGlobal("C#AjantisUDBelt","GLOBAL",20)~ EXIT
END



//normal engaged romance meeting dialogue 

IF ~Global("C#AjantisRomanceActive","GLOBAL",2) Global("C#AjantisKickedOut","GLOBAL",1)~ THEN BEGIN return_meeting_rom
SAY @16
+ ~Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")
Global("C#FirkraagErledigt","GLOBAL",0)~ + @9 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + return_rom_01
+ ~Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")
Global("C#FirkraagErledigt","GLOBAL",1)~ + @17 + return_rom_02
+ ~OR(3)
Dead ("garren")
Dead("garkid01")
Dead("garkid02")~ + @11 + return_rom_04
+ ~!Dead("firkra02")
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @18 + return_rom_02
+ ~AreaCheck("AR0903") !Dead("garren") !Dead("garkid01") !Dead("garkid02")~ + @19 DO ~MoveToPoint([1730.400])~ EXIT
+ ~!AreaCheck("AR0903")
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @19 EXIT
+ ~!AreaCheck("AR0903")
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
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @13 + return_rom_03
+ ~!AreaCheck("AR0903")
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
AreaCheck("AR1516")~ + @14 + return_rom_06
+ ~!AreaCheck("AR0903")
OR(18)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @14 DO ~SetGlobal("C#AjantisWegAlleine","GLOBAL",1) ~ + return_rom_06
END



//--------------------------------------------------------------------------



IF ~~ THEN BEGIN return_meeting_01
SAY @20
++ @21 + return_meeting_02
+ ~!AreaCheck("AR0903")~ + @22 EXIT
+ ~AreaCheck("AR0903")~ + @22 DO ~MoveToPoint([1730.400])~ EXIT
+ ~!AreaCheck("AR0903")
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
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @23 + return_meeting_03
+ ~!AreaCheck("AR0903")
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
AreaCheck("AR1516")~ + @14 + return_rom_06
+ ~!AreaCheck("AR0903")
OR(18)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @14 DO ~SetGlobal("C#AjantisWegAlleine","GLOBAL",1) ~ + return_rom_06
END
 
IF ~~ THEN BEGIN return_meeting_02
  SAY @24 
  IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",0) 
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN return_meeting_03
SAY @25 
IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END

IF ~~ THEN BEGIN return_meeting_04
SAY @26 
++ @27 + return_meeting_05
++ @28 + return_meeting_05
END 

IF ~~ THEN BEGIN return_meeting_05
SAY @29
IF ~~ THEN DO ~SetGlobal("TempleShout0903","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ EXIT
END



//------------------romance-----



IF ~~ THEN BEGIN return_rom_01
SAY @20
++ @21 + return_rom_02
+ ~AreaCheck("AR0903")~ + @30 DO ~MoveToPoint([1730.400])~ EXIT
+ ~!AreaCheck("AR0903")~ + @30 EXIT
+ ~!AreaCheck("AR0903")
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
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @23 + return_rom_03
+ ~!AreaCheck("AR0903")
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
AreaCheck("AR1516")~ + @14 + return_rom_06
+ ~!AreaCheck("AR0903")
OR(18)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @14 DO ~SetGlobal("C#AjantisWegAlleine","GLOBAL",1) ~ + return_rom_06
END
 
IF ~~ THEN BEGIN return_rom_02
  SAY @24 
  IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",0) 
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN return_rom_03
SAY @25 
IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END

IF ~~ THEN BEGIN return_rom_04
SAY @26 
++ @27 + return_rom_05
++ @28 + return_rom_05
END 

IF ~~ THEN BEGIN return_rom_05
SAY @31
IF ~~ THEN DO ~SetGlobal("TempleShout0903","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN return_rom_06
SAY @32 
IF ~~ THEN DO ~SetGlobal("C#AjantisWegAlleine","GLOBAL",1) EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END


//romance conflict:

IF ~~ THEN anomen_romance_P
SAY @33
IF ~~ THEN + broken_romance_detected
END

IF ~~ THEN anomen_lovenight_P
SAY @34
IF ~~ THEN + broken_romance_detected
END

IF ~~ THEN mod_romance_P
SAY @35
IF ~~ THEN + broken_romance_detected
END

IF ~~ THEN broken_romance_detected
SAY @36
IF ~~ THEN EXIT
END

/* not used
IF ~~ THEN end_engagement_P
SAY @37
= @38
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2) 
SetGlobal("C#AjantisPCModRomance","GLOBAL",3)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)~ SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN end_marriage_P
SAY @37
= @39
= @40
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisScheidung","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
EscapeArea()~  SOLVED_JOURNAL @10030 EXIT
END
*/

//----------------------Kickout---------------------------------------


IF ~Global("C#AjantisKickedOut","GLOBAL",0)  !Global("C#AjantisRomanceActive","GLOBAL",2)
OR(2)
Global("C#AjantisThiefStronghold","GLOBAL",2)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ THEN BEGIN kickout_diebesgilde
  SAY @41
++ @42 DO ~JoinParty()~ EXIT
++ @43 + kickout_1
END

IF ~Global("C#AjantisKickedOut","GLOBAL",0) 
!Global("C#AjantisRomanceActive","GLOBAL",2)
!Global("C#AjantisThiefStronghold","GLOBAL",2)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",1)~ THEN BEGIN kickout 
  SAY @44
++ @42 DO ~JoinParty()~ EXIT
++ @43 + kickout_1
END

IF ~Global("C#AjantisKickedOut","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN BEGIN kickout_lover 
  SAY @45
++ @42 DO ~JoinParty()~ EXIT
++ @43 + kickout_1
END

IF ~~ THEN BEGIN kickout_1 
  SAY @46
++ @47 + kickout_03
+ ~!AreaCheck("AR0903")
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
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @48 + kickout_02
+ ~!AreaCheck("AR0903")
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
AreaCheck("AR1516")~ + @14 + kickout_04
+ ~!AreaCheck("AR0903")
OR(18)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @14 DO ~SetGlobal("C#AjantisWegAlleine","GLOBAL",1) ~ + kickout_04
END

IF ~~ THEN BEGIN kickout_02
SAY @49 
IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN kickout_03
SAY @50 
IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END

IF ~~ THEN BEGIN kickout_04
SAY @32 
IF ~~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END
