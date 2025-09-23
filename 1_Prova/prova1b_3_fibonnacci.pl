% Fibonnacci recursivo sem cauda

% Casos Base
fib(2, 1).
fib(1, 1).

fib(N, X) :-
    N > 2,
    N1 is N-1,
    N2 is N-2,
    fib(N1, R1),
    fib(N2, R2),
    X is R1+R2.


fibonacci(N, X) :-
fibonacci_(N, 1, 1, X).

fibonacci_(N, B, A, X) :-
    N > 1,
    C is A + B,
    NewN is N - 1,
    fibonacci_(NewN, C, B, X).

fibonacci_(1, _, A, A).