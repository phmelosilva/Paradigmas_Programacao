% Objetivo: Crie um predicado soma_lista(Lista, Soma), Exemplo de teste:
% ?- soma_lista([1, 2, 3, 4], S).
% S = 10.

soma_lista([H|T],  S) :-

    soma_lista(T, Calda),
    S is H+Calda.

soma_lista([], 0).

