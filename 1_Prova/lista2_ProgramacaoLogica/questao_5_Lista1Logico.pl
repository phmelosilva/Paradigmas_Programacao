% letra (a) - Implemente os predicados male/1 e female/1, que indicam os homens e mulheres, respectivamente
male(abraham).
male(herb).
male(homer).
male(bart).
male(clancy).

female(mona).
female(marge).
female(lisa).
female(maggie).
female(jackie).
female(patty).
female(selma).
female(ling).

% letra (b) - Implemente o predicado father/2, que indica o pai do respectivo membro da família.
father(abraham, homer).
father(abraham, herb).
father(homer, bart).
father(homer, lisa).
father(homer, maggie).
father(clancy, marge).
father(clancy, patty).
father(clancy, selma).

% letra (c) - Implemente o predicado mother/2, que indica a mae do respectivo membro da família.
mother(mona, herb).
mother(mona, homer).
mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).
mother(jackie, marge).
mother(jackie, patty).
mother(jackie, selma).
mother(selma, ling).

% letra (d) - Implemente a regra e valide sua implementação - uncle/2, que indica o tio do respectivo membro da família.
uncle(X, Y) :- 
    male(X),
    father(Z, Y), 
    father(W, Z), 
    father(W, X),
    father(W, Z),
    X \= Z.

% letra (e) - Implemente a regra e valide sua implementação - grandmother/2, que indica a avó do respectivo membro da família.
grandmother(Avo, Membro) :-
    female(Avo),
    father(Pai, Membro),
    mother(Avo, Pai).

grandmother(Avo, Membro) :-
    female(Avo),
    mother(Mae, Membro),
    mother(Avo, Mae).