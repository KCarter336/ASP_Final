% filename: solver.lp
% author:   Keegan Carter
% purpose:  To solver word puzzles

% leftCol(l1; l2; l3; l4; l5).
% cola(a1; a2; a3; a4; a5).
% colb(b1; b2; b3; b4; b5).
% colc(c1; c2; c3; c4; c5).

% bulking
1 { combo(L, A, B, C) : cola(A), colb(B), colc(C)} 1 :- leftCol(L).

% cutting
:- combo(L1, A, _, _), combo(L2, A, _, _), L1 != L2.

:- combo(L1, _, B, _), combo(L2, _, B, _), L1 != L2.

:- combo(L1, _, _, C), combo(L2, _, _, C), L1 != L2.


#show combo/4.