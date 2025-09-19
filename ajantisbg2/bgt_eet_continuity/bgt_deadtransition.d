/* BeltBRD.dlg if Ajantis is dead but in the party... */

/* alternatively, this could be put as a script block into aram00.bcs (at the top) */


I_C_T ~BELTBRD~ 12 C#AjantisIsDeadBG1
== ~BELTBRD~ IF ~InPartyAllowDead("Ajantis")
	Dead("Ajantis")~ THEN ~I see not all of your comrades were so lucky in this fight. Let me take care of the squire. I will see he is returned to the Order of the Radiant Heart.~ DO ~TakePartyItem("x#ajshld") DestroyItem("x#ajshld")~ 
END