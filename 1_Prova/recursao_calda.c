
void main() {
    int acc = 1;
    // Função recursiva de calda, na chamada recursiva tem só a função com os parâmetros modificados
    int fact(int n, int acc) {
        if (n == 0) return acc;
    
        return fact(n-1, n*acc);
    }

    return 0;
}
