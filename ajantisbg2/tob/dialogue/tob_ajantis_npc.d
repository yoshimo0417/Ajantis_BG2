
/* Wird getriggert, nachdem die seltsamen Bhaalkinder in den Wandernden Bergen getroffen wurden. Es wird nur Ajantis überprüft. Evtl. wird geprüft, ob PLAYER2-6 reden können? 

Dead("ysgp04")
Dead("ysgp03")
Dead("ysgp02")
Dead("ysgp01")
*/


CHAIN
IF ~Global("C#AjToB_Chinchilla","GLOBAL",1)~ THEN C#Aja25J chinchilla_bhaalkids
@0
DO ~SetGlobal("C#AjToB_Chinchilla","GLOBAL",2)~ 

== NALIA25J IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @1

== BIMOEN25 IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @2

== BJAN25 IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @3  

== C#Aja25J @4

== VICON25J IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @5

== KELDO25J IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @6

== CERND25J IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @7 

== BJAHEI25 IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @8

== BJAN25 IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)
!Dead("Abazigal")~ THEN @9

== BJAN25 IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)
Dead("Abazigal")~ THEN @10

== C#Aja25J @11

== BIMOEN25 IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @12

== ANOME25J IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)~ THEN @13

== HAERD25J IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @14

== BMINSC25 IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @15
 
== BIMOEN25 IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @16

== BKORGA25 IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @17

== BJAHEI25 IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID) InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @18

== BJAN25 IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID) InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @19

== BJAHEI25 IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID) InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID) InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @20

== BAERIE25 IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @21

== EDWIN25J IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @22

== MAZZY25J IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @23

== VALYG25J IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @24

== C#Aja25J @25

== BSarev25 IF ~InParty("Sarevok") InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN @26

== C#Aja25J IF ~InParty("Sarevok") InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN @27

== BSarev25 IF ~InParty("Sarevok") InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @28

== BSarev25 IF ~InParty("Sarevok") InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID) !Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @29

== C#Aja25J IF ~InParty("Sarevok") InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN @30

== BSarev25 IF ~InParty("Sarevok") InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN @31

== BSarev25 IF ~InParty("Sarevok") InMyArea("Sarevok") 
!StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN @32

== C#Aja25J @33
EXIT



/* Saradush's fall */

CHAIN
IF ~Global("C#AjToB_Talk","GLOBAL",3)~ THEN c#aja25j saradush_fallen
@34 DO ~SetGlobal("C#AjToB_Talk","GLOBAL",4)~ 
== SAREV25J IF ~InParty("sarevok") InMyArea("sarevok") !StateCheck("sarevok",CD_STATE_NOTVALID)~ THEN @35
== KELDO25J IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @36
== ANOME25J IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)~ THEN @37
== MINSC25J IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @38
== AERIE25J IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @39
== JAHEI25J IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @40
== KORGA25J IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @41
== EDWIN25J IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @42
== HAERD25J IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @43
== NALIA25J IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @44
== VALYG25J IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @45
== VICON25J IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @46
== MAZZY25J IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @47
== CERND25J IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @48
== JAN25J IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @49
== IMOEN25J IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @50

== c#aja25j @51
EXIT

	
	
