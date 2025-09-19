/* Anomen - Ajantis romance bickering. New beginnings romance */

CHAIN
IF WEIGHT #-1
~Global("C#AjantisNBAnomenConflict","GLOBAL",2)~ THEN C#AjanJ ajantis_anomen_conflict1
@0  
== BANOMEN @1
== C#AjanJ IF ~Global("AnomenIsKnight","GLOBAL",1)~ THEN @2
== C#AjanJ IF ~!Global("AnomenIsKnight","GLOBAL",1)~ THEN @3
== C#AjanJ @4
== C#AjanJ @5 
== BANOMEN @6 DO ~SetGlobal("C#AjantisNBAnomenConflict","GLOBAL",3) RestParty()~
EXIT

CHAIN
IF WEIGHT #-1
~Global("C#AjantisNBAnomenConflict","GLOBAL",4)~ THEN ANOMENJ ajantis_anomen_conflict2
@7 DO ~SetGlobal("C#AjantisNBAnomenConflict","GLOBAL",5)~
== C#AjanJ @8
== BANOMEN @9 
== C#AjanJ @10
== BANOMEN @11
== C#AjanJ @12
== BANOMEN @13
EXIT

CHAIN
IF WEIGHT #-1
~Global("C#AjantisNBAnomenConflict","GLOBAL",6)~ THEN C#AjanJ ajantis_anomen_conflict3
@14 DO ~SetGlobal("C#AjantisNBAnomenConflict","GLOBAL",7)~  
== BANOMEN @15 
= @16
EXIT

CHAIN
IF WEIGHT #-1
~Global("C#AjantisNBAnomenConflict","GLOBAL",8)~ THEN ANOMENJ ajantis_anomen_conflict4
@17 DO ~SetGlobal("C#AjantisNBAnomenConflict","GLOBAL",9)~
== C#AjanJ @18
== BANOMEN @19 
== C#AjanJ @20
== BANOMEN @21 
== C#AjanJ @22
= @23
== BANOMEN @24 
== C#AjanJ @25
== BANOMEN @26 
EXIT

CHAIN
IF WEIGHT #-1
~Global("C#AjantisNBAnomenConflict","GLOBAL",10)~ THEN C#AjanJ ajantis_anomen_conflict5
@27 DO ~SetGlobal("C#AjantisNBAnomenConflict","GLOBAL",11)~  
== C#AjanJ @28
== BANOMEN @29
= @30
== C#AjanJ @31
== BANOMEN @32
== C#AjanJ @33
= @34
== BANOMEN @35
= @36
= @37
EXIT
