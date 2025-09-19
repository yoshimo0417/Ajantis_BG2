//Fate spirit: no summoning for evil PC
//Assumes PC rescued Ajantis, and also took him along.


/* for EET, the original Ajantis fatesp entries show if the BG2 mod is prevented, i.e. 
!GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3) (ar4000_eet_add.baf) */



EXTEND_TOP FATESP 6

/* all BGII games or new game */
  IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
%IsNotContiGameToB%
!Dead("C#Ajantis")
Global("C#AjantisSummoned","GLOBAL",0)
!Alignment(Player1,MASK_EVIL)~ THEN 
   REPLY @749  
    DO ~SetGlobal("C#AjantisSummoned","GLOBAL",1)~ GOTO 9

/* EET only, conti game: Ajantis BG2 is dead */
  IF ~%IsContiGameToB%
GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Global("C#AjantisSummoned","GLOBAL",0)
Dead("C#Ajantis")
~ THEN REPLY @749 DO ~SetGlobal("C#AjantisSummoned","GLOBAL",4)
~ GOTO 10    /* ~I cannot do as you ask, child of Bhaal. The one you seek is dead and thus forever beyond my reach. His thread no longer connects with yours.~ */

/* EET only, conti game: Ajantis was not in party BG2 */
  IF ~%IsContiGameToB%
GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Global("C#AjantisSummoned","GLOBAL",0)
!Alignment(Player1,MASK_EVIL)
!Global("C#AjantisInPartySvA","GLOBAL",1)
!Dead("C#Ajantis")
~ THEN REPLY @749 DO ~SetGlobal("C#AjantisSummoned","GLOBAL",4)
~ GOTO 7  /* ~I cannot do as you ask, child of Bhaal. The thread of the one you speak is beyond my sight, as it no longer touches yours.~ */                                      
/* EET only, conti game: PC not evil and Ajantis BG2 in party */ 
  IF ~%IsContiGameToB%
GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
Global("C#AjantisSummoned","GLOBAL",0)
!Alignment(Player1,MASK_EVIL)
Global("C#AjantisInPartySvA","GLOBAL",1)
!Dead("C#Ajantis")
~ THEN REPLY @749 DO ~SetGlobal("C#AjantisSummoned","GLOBAL",1)
~ GOTO 9

/* evil PC */
  IF ~GlobalLT("C#AjantisIsDeadBG1","GLOBAL",3)
!Dead("C#Ajantis")
Global("C#AjantisSummoned","GLOBAL",0)
Alignment(Player1,MASK_EVIL)~ THEN 
   REPLY @749  
    DO ~SetGlobal("C#AjantisSummoned","GLOBAL",4)~ + no_ajantissummon_evil

END

APPEND FATESP
IF ~~ THEN no_ajantissummon_evil
SAY @750
IF ~~ THEN + 6
END

END 