% ?- divisors(X, 12).
% X = 6. (incluí o próprio 12)

divisors(X, N) :-
    d(N, 1, 0, X).
    d(N, N, Acc, X) :- X is Acc+1.
    d(N, D, Acc, X) :-
        D < N,
        R is rem(N, D),
        R = 0,
        NewAcc is Acc+1,
        NewD is D+1,
        d(N, NewD, NewAcc, X).
    d(N, D, Acc, X) :-
        D < N,
        R is rem(N, D),
        R > 0,
        NewD is D+1,
        d(N, NewD, Acc, X).
