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
not combo(cola(kopi), leftCol(80)) :- cola(kopi), leftCol(80).
:- combo(cola(kopi), leftCol(80)).

% clue 2
combo(leftCol(100), colb(215)) :- leftCol(100), colb(215).
:- not combo(leftCol(100), colb(215)).

% clue 3
combo(cola(fazenda), colb(200)) ; combo(cola(esmar), colc(35)) ; combo(cola(fazenda), colc(35)) ; combo(cola(esmar), colb(200)) :- cola(fazenda), cola(esmar), colb(200), colc(35).
:- not combo(cola(fazenda), colb(200)) ; combo(cola(esmar), colc(35)) ; combo(cola(fazenda), colc(35)) ; combo(cola(esmar), colb(200)).

% clue 4
combo(cola(helena), colc(45)) :- cola(helena), colc(45).
:- not combo(cola(helena), colc(45)).

% clue 5
not combo(cola(helena), colb(195)) :- cola(helena), colb(195).
:- combo(cola(helena), colb(195)).

% clue 6
combo(colb(200), colc(3)) ; combo(leftCol(80), colc(3)) :- colb(200), leftCol(80), colc(3). 
:- not combo(colb(200), colc(3)) ; combo(leftCol(80), colc(3)).

% for "either or" problems 
cond(1) :- leftCol(fazenda, colc(35)).
cond(1) :- combo(cola(fazenda), colb(200)).

:- not cond(1).







