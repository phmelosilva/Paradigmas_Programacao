# 🧮 Como executar código Haskell pelo Terminal?

## 🧪 Executando com GHCi (interpretador Haskell)

### ✅ 1. Abra o terminal e inicie o GHCi:

### 1. Salve o seguinte código em um arquivo como `Hello.hs`:

```haskell
main = putStrLn "Olá Mundo"
```

---

### 2. No terminal, abra o GHCi com o arquivo:

```bash
ghci Hello.hs
```

---

### 3. Execute a função `main` dentro do GHCi:

```haskell
main
```

### ▶️ Saída:

```
Olá Mundo
```


## ⚙️ Como compilar e executar - com exemplo

### 1. Salve o código em um arquivo com nome qualquer como `Soma.hs`

Crie um novo arquivo com o nome `Soma.hs` e cole o seguinte conteúdo:

```haskell
add x y = x + y

main = print (add 3 5)
```

### 2. Compile com GHC

Abra o terminal no diretório onde está o arquivo e execute:

```bash
ghc Soma.hs
```

> Isso criará um executável chamado `Soma` (ou `Soma.exe` no Windows).

### 3. Execute o programa

- No **Linux/macOS**:

```bash
./Soma
```

- No **Windows** (Prompt de Comando ou PowerShell):

```cmd
Soma.exe
```

---

### ✅ Saída esperada:

```
8