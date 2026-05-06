leftCol(50).
leftCol(60).
leftCol(80).
leftCol(100).
leftCol(590).

cola(bluMon).
cola(esmar).
cola(fazenda).
cola(helena).
cola(kopi).

colb(195).
colb(200).
colb(205).
colb(210).
colb(215).

colc(45).
colc(1).
colc(2).
colc(3).
colc(35).


%clues

% clue 1
:- combo(80, kopi, _, _).

% clue 2
:- not combo(100, _, 215, _).

% clue 3
cond1 :- combo(_, esmar, 200, _).
cond1 :- combo(_, _, 200, 35).
:- not cond1.

% clue 4
:- not combo(_, helena, _, 45).

% clue 5
:- combo(_, helena, 195, _).

% clue 6
cond2 :- combo(_, _, 200, 3).
cond2 :- combo(80, _, _, 3).
:- not cond2.

% clue 7
cond3 :- combo(50, _, 210, _).
cond3 :- combo(50, fazenda, _, _).
:- not cond3.

% clue 8
:- combo(_, bluMon, _, 35).
% needs more

% clue 9
cond4 :- combo(_, _, 205, 1).
cond4 :- combo(_, bluMon, 205, _).
cond4 :- combo(50, _, _, 1).
cond4 :- combo(50, bluMon, _, _).
:- not cond4.







