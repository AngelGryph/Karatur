// A Slow Boat from Kara-Tur
//Succubus Parlay - KTDLG.d

//Contents
//First meeting

BEGIN ~KTSDLG~

//First Meeting

APPEND ~KTSDLG~

IF ~NumTimesTalkedTo(0)~THEN BEGIN KTSirene
SAY ~Confound it ... days of trying to retrieve this ridiculous Red Bag for my master ... even this mindless Golem cannot move it! Why am I surrounded with such ingnorance? Perhaps I will need to summon a Coud Giant!!

Oh ... excuse me for expressing my frustrations in the company of strangers; normally I would have detected your presence long ago, but my current focus has been disturbed by the work of my thralls.

It seems we have not been formally introduced, I am known as Alura, and you smell of an aura I am all too aware of. Perhaps you would like to explain your presence here, and the aura of the item I wish to retrieve on your person, and what manner of master has sent you on this fools errand ... plain and clearly please, and more importantly immediately!~
IF ~~ THEN REPLY ~We are the party of <CHARNAME> and we are here for likely the same reason as you. We wish to retrieve this Red Bag for a friend met upon our travels, not for our master, as we serve none.~ GOTO KTS1_2
IF ~~ THEN REPLY ~No, we have no desire to speak with you!~ GOTO KTS1_4
END

IF ~~ THEN BEGIN KTS1_2
SAY ~So <CHARNAME> you do know of the treasure in which my master and I seek to possess, and from what I can ascertain, as my skills in such are great; you know more of this Red Bag than my master cared to share with me. Tell me now, and tell me fully what you have learned, and perhaps your useless life will be spared.~
IF ~~ THEN REPLY ~Bag of Red, know of we do ... sorry, it's a long story ... yes we know of the Red Bag, that you and your master wish to possess. We know of the owner of the Red Bag and that the bag is a magical item that only he may operate, and that a particularly strange crystal is required to move the Red Bag. We also know that it contains some type of treasures from lands far from here.~ GOTO KTS1_3
IF ~~ THEN REPLY ~No, I am afraid your evil nature and intent is obvious to me, for my skills in such are great as well. Whether or not the Red Bag is of concern, we will strike you down where you stand! BAG OF RED .... FIGHT FOR WILL WE! ~ DO ~SetGlobal("KTSiren","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN KTS1_3
SAY ~Very smart of you to divulge all of the information in your small and slow mind, surely the weight of which must have been quite painful. Now you may hand over the crystal you possess, and I will gladly make you a thrall to serve the needs of my master and I.~
IF ~~ THEN REPLY ~For one so great in power, you have mislead yourself as to our ability. The Red Bag, and the crystal will be returned to their rightful owner. Do your worst creature ... BAG OF RED .... FIGHT FOR WILL WE!~ DO ~SetGlobal("KTSiren","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN KTS1_4
SAY ~It is truly a shame you have decided to remove any chance of serving my master and I. Now you will die a slow and painful death at the hands of my thralls and I .... COME TO ME MY THRALLS!~
IF ~~ THEN REPLY ~BAG OF RED .... FIGHT FOR WILL WE!~ DO ~SetGlobal("KTSiren","GLOBAL",2)~ EXIT
END
END