% Objetivo: Crie um predicado soma_lista(Lista, Soma), Exemplo de teste:
% ?- soma_lista([1, 2, 3, 4], S).
% S = 10.

soma_lista([H|T],  S) :-

    soma_lista(T, Calda),
    S is H+Calda.

soma_lista([], 0).

soma_lista_tail(Lista, S) :-
    soma_lista_tr(Lista, 0, S).

% Caso Base da Recursão com Cauda
soma_lista_tr([], Acc, Acc).

soma_lista_tr([H|T], Acc, Soma) :-
    NovoAcc is Acc+H,
    soma_lista_tr(T, NovoAcc, Soma).

% Objetivo: Crie um predicado comprimento(Lista, C), onde C será o número de elementos na Lista.
% ?- comprimento([a, b, c, d], C).
% C = 4.

% Caso Base
comprimento([], 0).

comprimento([H|T], C) :-
    comprimento(T, Comp),
    C is 1+Comp.

% Recursivo de Cauda

comprimento_tail_recursive(Lista, C) :-
    comprimento_tr(Lista, C, 0).

% Caso Base
comprimento_tr([], Acc, Acc).

comprimento_tr([H|T], C, Acc) :-
    NewAcc is Acc+1,
    comprimento_tr(T, C, NewAcc).