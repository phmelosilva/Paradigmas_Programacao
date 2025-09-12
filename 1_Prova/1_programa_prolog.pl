unb(X) :- fcte(X).

fcte(ana).
fcte(beto).
fcte(carlos).
fcte(lucas).
fcte(marcos).

iesb(maria).

unb_report :-
    write('Estudantes da UnB: '), nl,
    unb(X),
    write(X), nl,
    fail. # força a inserção diretamente, até achar um true
