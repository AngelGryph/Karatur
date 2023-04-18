// A Slow Boat from Kara-Tur
//Succubus Parlay - KTDLG.d

//Contents
//First meeting

BEGIN ~KTSDLG~

//First Meeting

APPEND ~KTSDLG~

IF ~NumTimesTalkedTo(0)~THEN BEGIN KTSirene
SAY @0
IF ~~ THEN REPLY @1 GOTO KTS1_2
IF ~~ THEN REPLY @2 GOTO KTS1_4
END

IF ~~ THEN BEGIN KTS1_2
SAY @3
IF ~~ THEN REPLY @4 GOTO KTS1_3
IF ~~ THEN REPLY @5 DO ~SetGlobal("KTSiren","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN KTS1_3
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("KTSiren","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN KTS1_4
SAY @8
IF ~~ THEN REPLY @9 DO ~SetGlobal("KTSiren","GLOBAL",2)~ EXIT
END
END