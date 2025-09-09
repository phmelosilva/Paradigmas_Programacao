fact(F, 0) :- F is 1.

fact(F, N) :- 
    N > 0,
    newN is N-1,
    fact(X, newN),
    F is X*newN