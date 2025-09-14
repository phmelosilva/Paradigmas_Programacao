estudante(ana, 3, 'Engenharia de Software').
estudante(beto, 1, 'Engenharias').
estudante(carlos, 4, 'Engenharia de Energia').
estudante(diane, 2, 'Engenharias').
estudante(euler, 1, 'Engenharias').
estudante(fabio, 5, 'Engenharia de Software').
estudante(gustavo, 8, 'Engenharia de Software').
estudante(heitor, 7, 'Engenharia de Energia').
estudante(ian, 3, 'Engenharias').

matricula('Cálculo 1', ana).
matricula('Cálculo 1', fabio).
matricula('Cálculo 1', diane).
matricula('Cálculo 1', euler).
matricula('Cálculo 1', gustavo).
matricula('Cálculo 1', ian).

matricula('IAL', beto).
matricula('IAL', diane).
matricula('IAL', euler).

matricula('APC', carlos).
matricula('APC', fabio).
matricula('APC', gustavo).
matricula('APC', ian).

% letra (a) - Implemente a regra tem_calouros/1, que retorna as disciplinas que tem calouros matriculados
tem_calouros(X) :- matricula(X, Y), estudante(Y, 1, _).

% letra (b) - Implemente a regra turma_mista/1, que retorna as disciplinas que tem ao menos um estudante de cada curso.
turma_mista(X) :- 
    matricula(X, Y), 
    estudante(Y, _, 'Engenharia de Software'),
    matricula(X, Z),
    estudante(Z, _, 'Engenharias'),
    matricula(X, W),
    estudante(W, _, 'Engenharia de Energia').

% letra (c) - Implemente a regra software/0, que imprime todos os estudantes de Engenharia de Software, um estudante por linha.
software :- 
    estudante(X, _, 'Engenharia de Software'), 
    write(X), nl, 
    fail.