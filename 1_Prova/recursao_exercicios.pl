% Objetivo: Crie um predicado soma_lista(Lista, Soma), Exemplo de teste:
% ?- soma_lista([1, 2, 3, 4], S).
% S = 10.

soma_lista([H|T],  S) :-

    soma_lista(T, Calda),
    S is H+Calda.

soma_lista([], 0).

% Caso Base da Recursão com Cauda

soma_lista_tail(Lista, S) :-
    soma_lista_tr(Lista, 0, S).

soma_lista_tr([], Acc, Acc).

soma_lista_tr([H|T], Acc, Soma) :-
    NovoAcc is Acc+H,
    soma_lista_tr(T, NovoAcc, Soma).
