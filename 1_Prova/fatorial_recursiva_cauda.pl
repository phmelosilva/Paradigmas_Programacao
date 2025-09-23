fact_tr(F, 0, Acc) :- F is Acc.
fact_tr(F, N, Acc) :-
    N > 0,
    NewN is N-1,
    NewAcc is Acc*N,
    fact_tr(F, NewN, NewAcc).

fact(F, N) :- fact_tr(F, N, 1).

% Implementação recursiva de cauda
factTR(F, 0, Acc) :- F is Acc.
factTR(F, N, Acc) :-
    N > 0,
    NewN is N - 1,
    NewAcc is Acc * N,
    factTR(F, NewN, NewAcc).

factorial(F, N) :- factTR(F, N, 1).