f2c(C, F) :-
    C is (F-32)*5/9.

f2c(C, 212). # C = 100
f2c(100, F). # Retorna erro

# Implementação -> Ensinar prolog a chutar e fazer consulta por força bruta
# Podemos passar o C e o F em aberto -> f2c(C, F).
f2c(C, F) :-
    between(C, 0, 100), # C entre 0 e 100
    between(F, 32, 212), # Garante que quem estar instanciado, vai ficar onde queria
    X is 9*C,
    Y is (F-32)*5,
    X = Y. #Igual só unifica, se ambos tem o mesmo valor