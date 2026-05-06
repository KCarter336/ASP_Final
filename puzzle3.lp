leftCol(35).
leftCol(40).
leftCol(45).
leftCol(50).

cola(beth).
cola(lacy).
cola(victor).
cola(xavier).

colb(blue).
colb(orange).
colb(red).
colb(yellow).

colc(aquarius).
colc(libra).
colc(scorpio).
colc(virgo).

% clues

%1
cond1 :- combo(_, _, red, libra).
cond1 :- combo(45, _, _, libra).
:- not cond1.

%2
cond2 :- combo(50, beth, _, _).
cond2 :- combo(50, _, _, libra).
:- cond2.

%3
:- combo(_, _, red, aquarius).

%4
:- not combo(50, _, _, scorpio).

%5
% xavierPrice :- xavier.
:-  combo(_, xavier, blue, _).
% needs more

%6
:- combo(_, beth, yellow, _).

%7
cond3 :- combo(_, _, orange, virgo).
cond3 :- combo(35, _, _, virgo).
cond3 :- combo(_, lacy, orange, _).
cond3 :- combo(35, lacy, _, _).
:- not cond3.
