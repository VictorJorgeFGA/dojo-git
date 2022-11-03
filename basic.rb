class Basic
    ### OPERADORES

    # Ex.1 (RESOLVIDO) - Criar aqui uma funcao com nome 'soma' que recebe duas variaveis e retorna o resultado da soma de ambas
    def soma a, b
        a + b
    end

    # Ex.2 - Criar aqui uma funcao com nome 'multiplicacao' que recebe duas variaveis e retorna o resultado da multiplicacao de ambas

    # Ex.3 - Criar aqui uma funcao com nome 'divisao' que recebe duas variaveis e retorna o resultado da divisao de ambas

    # Ex.4 - Criar aqui uma funcao com nome 'modulo' que recebe duas variaveis e retorna o resultado do modulo da primeira pela segunda (i.e. a % b)

    # Ex.5 - Criar aqui uma funcao com nome 'elevado' que recebe duas variaveis e retorna o resultado da primeira elevado a segunda (i.e. a ^ b)

    ### ARRAYS

    # Ex.6 - Criar uma funcao com nome 'primeiro' que recebe um array e retorna o primeiro elemento desse array

    # Ex.7 - Criar uma funcao com nome 'ultimo' que recebe um array e retorna o ultimo elemento desse array

    # Ex.8 - Criar uma funcao com nome 'soma_acumulada' que recebe um array e retorna a soma de todos seus elementos

    # Ex.9 - Criar uma funcao com nome 'primeira_metade' que recebe um array e retorna apenas a primeira metade do array (o array sempre terá um numero par de elementos)
    # exemplo: [1, 2, 3, 4] -> [1, 2]

    # Ex.10 - Criar uma funcao com nome 'segunda_metade' que recebe um array e retorna apenas a segunda metade do array (o array sempre terá um numero par de elementos)
    # exemplo: [1, 2, 3, 4] -> [3, 4]

    # Ex.11 - Criar uma funcao com nome 'junta_metades' que recebe dois arrays e retorna ambos arrays concatenados (juntos)
    # exemplo: [1, 2], [3, 4] -> [1, 2, 3, 4]

    # Ex.12 - Criar uma funcao com nome 'apenas_pares' que recebe um array de inteiros e que retorna um novo array contendo apenas os elementos pares (na mesma ordem que aparecem no primeiro array)
    # exemplo: [1, 2, 3, 4, 5, 6] -> [2, 4, 6]

    # Ex.13 - Criar uma funcao com nome 'dobrado' que recebe um array e retorna cada elemento dobrado (i.e. a[i] * 2)
    # exemplo: [1, 'a', 'b', 2] -> [2, 'aa', 'bb', 4]

    ### STRINGS

    # Ex.14 - Criar uma funcao com nome 'e_maiusculo?' (com interrogacao no final) que recebe uma string e verifica se a mesma so possui caracteres maiusculos (a string so terá letras de a-z)
    # exemplo: "ABC" -> true
    # exemplo: "ABc" -> false

    # Ex. 15 - Criar uma funcao com nome 'nome_completo' que recebe duas strings (nome e sobrenome) e as retorna em uma unica string separado por espaco
    # exemplo: "Joao", "Silva" -> "Joao Silva"

    # Ex. 16 - Criar uma funcao com nome 'titulo' que recebe uma string (toda em minusculo) e coloque a primeira letra de cada palavra para maiusculo
    # exemplo: "como aprender ruby em trinta minutos" -> "Como Aprender Ruby Em Trinta Minutos"

    # Ex. 17 - Criar uma funcao com nome 'remove_espacos_extras' que recebe uma string e a retorne com espacos unicos (é garantido que nenhuma string começa ou termina com espaços)
    # exemplo: "essa string              tem      bastante    espacos" -> "essa string tem bastante espacos"

    # Ex. 18 - Criar uma funcao com nome 'tem_apenas_numeros?' (com interrogacao no final) que recebe uma string e verifica se a mesma so possui digitos de 0-9
    # exemplo: "12345" -> true

    # Ex. 19 - Criar uma funcao com nome 'quantos_as' que retorne a quantidade de letras 'A' (maiusculas e minusculas) contidos na string
    # exemplo: "aA123!?" -> 2

    ### Hashes

    # Ex. 20 - Criar uma funcao com nome 'atributo_nome' que recebe uma hash e retorne o valor contido na chave 'nome'
    # exemplo: {'nome': 'leonardo', idade: 23} -> 'leonardo'

    # Ex. 21 - Criar uma funcao com nome 'endereco_completo' que recebe uma hash e a retorne com um novo campo com a chave 'endereco_completo' com valor igual ao valor da chave 'cep' e 'logradouro' concatenados e separados por '-' (hifen)
    # exemplo: {"cep" => "12345", "logradouro" => "quadra 50"} -> {"cep" => "12345", "logradouro" => "quadra 50", "endereco_completo" => "12345 - quadra 50"}

    # Ex. 22 - Criar uma funcao com nome 'array_para_hash' que recebe um array de arrays e o converte para hash
    # exemplo: [["azul", "blue"], ["rosa", "pink"], ["amarelo", "yellow"] -> {"azul" => "blue", "rosa" => "pink", "amarelo" => "yellow"}

    ### Algoritmos

    # Ex. 23 - Criar uma funcao com nome 'array_ordenado' que ordene um array de inteiros
    # exemplo: [7, 3, 8, 2, 6, 5, 4, 1] -> [1, 2, 3, 4, 5, 6, 7, 8]

    # Ex. 24 - Criar uma funcao com nome 'classifica_string' que recebe uma string e retorna 'pequena' se a string tiver entre 0 e 10 caracteres,
    # retorna 'media' se a string tiver entre 11 e 30 caracteres, retorna 'grande' se a string tiver entre 31 e 50 caracteres, e retorna nil se
    # a string tiver mais de 51 caracteres

    # Ex. 25 - Criar uma funcao com nome 'fatorial' que recebe um inteiro e retorne seu fatorial
    # exemplo: 5 -> 120 (pos 5! = 120)

    # Ex. 26 - Criar uma funcao com nome 'fibonacci' que receba um inteiro e retorne o numero de fibonacci na posicao relativa ao inteiro recebido
    # exemplo: 3 -> 2 (pois, 1 1 [2] 3 5)
    # exemplo: 5 -> 5 (pois, 1 1 2 3 [5] 8 13)
end
