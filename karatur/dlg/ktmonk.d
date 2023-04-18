// A Slow Boat from Kara-Tur
//Monk gives quest dialog - KTDLG.d

//Contents
//First meeting, no quest
//Subsequent meetings, no quest
//Quest, first meeting
//Quest, subsequent meeting

BEGIN ~KTQDLG~

//First Meeting

APPEND ~KTQDLG~

IF ~NumTimesTalkedTo(0) !GlobalGT("KTQuest","GLOBAL",1)~THEN BEGIN KTMonk1
SAY @0     
IF ~~ THEN REPLY @1 GOTO KT1_2
IF ~~ THEN REPLY @2 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN KT1_2
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("KTQuest","GLOBAL",2)~ GOTO KT1_3
IF ~~ THEN REPLY @5 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN KT1_3
SAY @6

IF ~~ THEN REPLY @7 DO ~GiveItemCreate("POTN21",Player1,6,0,0)~ DO ~GiveItemCreate("KTSnow",Player1,1,0,0)~
EXIT
END

IF ~Global("KTQuest","AR2300",5)~ THEN BEGIN KTMonk4
SAY @8
IF ~~ THEN REPLY @9 DO ~TakePartyItem("KTSnow")~ DO ~TakePartyItem("KTRedB")~ DO ~GiveItemCreate("KTHlm01",Player1,0,0,0)~ DO ~SetNumTimesTalkedTo(4)~ DO ~SetGlobal("KTQuest","AR2300",6)~ EXIT
END

IF ~NumTimesTalkedTo(4)~THEN BEGIN KTMonk5
SAY @10
IF ~~ THEN REPLY @11 DO ~StartStore("KTStore",LastTalkedToBy(Myself))~ DO ~SetNumTimesTalkedTo(4)~ EXIT
IF ~~ THEN REPLY @2 DO ~SetNumTimesTalkedTo(4)~ EXIT
END
END