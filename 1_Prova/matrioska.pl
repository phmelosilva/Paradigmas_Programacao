list(M, L) :-
    nl,
    tab(L),
    print(->),
    tab(1),
    print(M),
    matrioska(M, X),
    NewL is L + 4,
    list(X, NewL).