estudante(ana, 3, 'Engenharia de Software').
estudante(beto, 1, 'Engenharias').
estudante(carlos, 4, 'Engenharia de Energia').
estudante(diane, 2, 'Engenharias').
estudante(euler, 1, 'Engenharias').
estudante(fabio, 5, 'Engenharia de Software').
estudante(gustavo, 8, 'Engenharia de Software').
estudante(heitor, 7, 'Engenharia de Energia').
estudante(ian, 3, 'Engenharias').

matricula('C´alculo 1', ana).
matricula('C´alculo 1', fabio).
matricula('C´alculo 1', diane).
matricula('C´alculo 1', euler).
matricula('C´alculo 1', gustavo).
matricula('C´alculo 1', ian).

matricula('IAL', beto).
matricula('IAL', diane).
matricula('IAL', euler).

matricula('APC', carlos).
matricula('APC', fabio).
matricula('APC', gustavo).
matricula('APC', ian).

% PRECISA MODIFICAR A LÓGICA....
tem_calouros(X) :- estudante(X, 1, _).
tem_calouros(Y) :- matriculas(Y, X).