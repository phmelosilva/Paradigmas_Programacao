same_parity(X, Y) :-
    RemX is rem(X, 2),
    RemY is rem(Y, 2),
    RemX = RemY.