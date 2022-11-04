## Variaveis

```ruby
a = 1
b = 2.0
c = 'ola'
d = :hello
vetor = [1,2,3,4,5]
# Variais nao possuem tipo fixo
vetor = 5
```

## Tipos primitivos

```ruby
# Inteiros
1
100
10239

# Floats
1.5
23.02930

# Booleanos
true
false

# String
"isso é uma string"
'e isso também'

# Symbols
:simbolo1
:abacaxi

# Arrays (ou vetores)
[1,2,3,4,5]
["ola", 1, true, :simbolo, 10]

# Hashes
{"chave_1"=>:valor_1, 2=>false, [1,2,3]=>{"a"=>"b"}}

# Ranges
1..10 # intervalo de 1 a 10
```

## Operadores logicos

```ruby
condicao1 && condicao2
condicao1 and condicao2 # evitar usar

condicao1 || condicao2
condicao1 or condicao2 # evitar usar

!condicao1
not condicao1 # evitar usar
```

## Operadores

```ruby
1 + 2 # soma
1 * 2 # mutiplicacao
1 ** 2 # potencia
5 / 2 # divisao
5 % 2 # resto da divisao
1 << 5 # shift a esquerda (mesma coisa q multiplicar por 2 n vezes)
1 >> 5 # shift a direita (mesma coisa q dividir por 2 n vezes)

"string a " + "string b" # junta duas strings -> "string a string b"
"a" * 5 # repete a string "a" 5 vezes -> "aaaaa"

[1,2,3] << 1 # insere o numero 1 no fim do array
```

## Condicionais

```ruby
if condicao1
    funcao1()
elsif condicao2
    funcao2()
elsif condicao3
    funcao3
else
    funcao_else
end
# --------

funcao1() if condicao1

# --------
unless condicao1
    funcao1()
end

funcao1() unless condicao1
```

## Loops

```ruby
# ----------------------
# WHILE
while condicao do
    funcao()
end

funcao() while condicao

# -----------------------
# UNTIL
until condicao do
    funcao()
end

funcao() until condicao

# ---------------------
# FOR
for i in [1,5,10] do
    funcao(i)
end

for i in 1..10 do
    funcao(i)
end
```

## Funcoes
```ruby
def nome_da_funcao parametro_1, parametro_2, parametro_3
    # a funcao sempre retorna o valor da ultima expressao executada dentro dela
    5 # a funcao retornara 5
end

def valor_nulo
    # a funcao retornara o valor nil pois nenhuma expressao foi executada
end
```

## Classes

```ruby
class MinhaClasse
    def metodo1
        true
    end
end
```