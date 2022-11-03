### OPERADORES
require 'securerandom'

class Basic
    # Ex.1 (RESOLVIDO) - Criar aqui uma funcao com nome 'soma' que recebe duas variaveis e retorna o resultado da soma de ambas
    def soma a, b
        a + b
    end

    # Ex.2 - Criar aqui uma funcao com nome 'multiplicacao' que recebe duas variaveis e retorna o resultado da multiplicacao de ambas
    def multiplicacao a, b
        a * b
    end

    # Ex.3 - Criar aqui uma funcao com nome 'divisao' que recebe duas variaveis e retorna o resultado da divisao de ambas
    def divisao a, b
        a / b
    end

    # Ex.4 - Criar aqui uma funcao com nome 'modulo' que recebe duas variaveis e retorna o resultado do modulo da primeira pela segunda (i.e. a % b)
    def modulo a, b
        a % b
    end

    # Ex.5 - Criar aqui uma funcao com nome 'elevado' que recebe duas variaveis e retorna o resultado da primeira elevado a segunda (i.e. a ^ b)
    def elevado a, b
        a ** b
    end

    ### ARRAYS

    # Ex.6 - Criar uma funcao com nome 'primeiro' que recebe um array e retorna o primeiro elemento desse array
    def primeiro a
        a.first
    end

    # Ex.7 - Criar uma funcao com nome 'ultimo' que recebe um array e retorna o ultimo elemento desse array
    def ultimo a
        a.last
    end

    # Ex.8 - Criar uma funcao com nome 'soma_acumulada' que recebe um array e retorna a soma de todos seus elementos
    def soma_acumulada a
        a.sum
    end

    # Ex.9 - Criar uma funcao com nome 'primeira_metade' que recebe um array e retorna apenas a primeira metade do array (o array sempre terá um numero par de elementos)
    # exemplo: [1, 2, 3, 4] -> [1, 2]
    def primeira_metade a
        a.slice(0, a.size / 2)
    end

    # Ex.10 - Criar uma funcao com nome 'segunda_metade' que recebe um array e retorna apenas a segunda metade do array (o array sempre terá um numero par de elementos)
    # exemplo: [1, 2, 3, 4] -> [3, 4]
    def segunda_metade a
        a.slice(a.size / 2, a.size)
    end

    # Ex.11 - Criar uma funcao com nome 'junta_metades' que recebe dois arrays e retorna ambos arrays concatenados (juntos)
    # exemplo: [1, 2], [3, 4] -> [1, 2, 3, 4]
    def junta_metades a, b
        a + b
    end

    # Ex.12 - Criar uma funcao com nome 'apenas_pares' que recebe um array de inteiros e que retorna um novo array contendo apenas os elementos pares (na mesma ordem que aparecem no primeiro array)
    # exemplo: [1, 2, 3, 4, 5, 6] -> [2, 4, 6]
    def apenas_pares a
        a.select { |e| e % 2 == 0 }
    end

    # Ex.13 - Criar uma funcao com nome 'dobrado' que recebe um array e retorna cada elemento dobrado (i.e. a[i] * 2)
    # exemplo: [1, 'a', 'b', 2] -> [2, 'aa', 'bb', 4]
    def dobrado a
        a.map do |e|
            e * 2
        end
    end

    ### STRINGS

    # Ex.14 - Criar uma funcao com nome 'e_maiusculo?' (com interrogacao no final) que recebe uma string e verifica se a mesma so possui caracteres maiusculos (a string so terá letras de a-z)
    # exemplo: "ABC" -> true
    # exemplo: "ABc" -> false
    def e_maiusculo? a
        a.upcase == a
    end

    # Ex. 15 - Criar uma funcao com nome 'nome_completo' que recebe duas strings (nome e sobrenome) e as retorna em uma unica string separado por espaco
    # exemplo: "Joao", "Silva" -> "Joao Silva"
    def nome_completo a, b
        [a, b].join(' ')
    end

    # Ex. 17 - Criar uma funcao com nome 'remove_espacos_extras' que recebe uma string e a retorne com espacos unicos (é garantido que nenhuma string começa ou termina com espaços)
    # exemplo: "essa string              tem      bastante    espacos" -> "essa string tem bastante espacos"
    def remove_espacos_extras a
        a.split.join(' ')
    end

    # Ex. 18 - Criar uma funcao com nome 'tem_apenas_numeros?' (com interrogacao no final) que recebe uma string e verifica se a mesma so possui digitos de 0-9
    # exemplo: "12345" -> true
    def tem_apenas_numeros? a
        (a =~ /\A\d+\z/) ? true : false
    end

    # Ex. 19 - Criar uma funcao com nome 'quantos_as' que retorne a quantidade de letras 'A' (maiusculas e minusculas) contidos na string
    # exemplo: "aA123!?" -> 2
    def quantos_as a
        a.count('a')
    end

    ### Hashes

    # Ex. 20 - Criar uma funcao com nome 'atributo_nome' que recebe uma hash e retorne o valor contido na chave 'nome'
    # exemplo: {'nome': 'leonardo', idade: 23} -> 'leonardo'
    def atributo_nome a
        a['nome']
    end

    # Ex. 21 - Criar uma funcao com nome 'endereco_completo' que recebe uma hash e a retorne com um novo campo com a chave 'endereco_completo' com valor igual ao valor da chave 'cep' e 'logradouro' concatenados e separados por '-' (hifen)
    # exemplo: {"cep" => "12345", "logradouro" => "quadra 50"} -> {"cep" => "12345", "logradouro" => "quadra 50", "endereco_completo" => "12345 - quadra 50"}
    def endereco_completo a
        a.tap do |h|
            h['endereco_completo'] = "#{h['cep']} - #{h['logradouro']}"
        end
    end

    # Ex. 22 - Criar uma funcao com nome 'array_para_hash' que recebe um array de arrays e o converte para hash
    # exemplo: [["azul", "blue"], ["rosa", "pink"], ["amarelo", "yellow"] -> {"azul" => "blue", "rosa" => "pink", "amarelo" => "yellow"}
    def array_para_hash a
        a.to_h
    end

    ### Algoritmos

    # Ex. 23 - Criar uma funcao com nome 'array_ordenado' que ordene um array de inteiros
    # exemplo: [7, 3, 8, 2, 6, 5, 4, 1] -> [1, 2, 3, 4, 5, 6, 7, 8]
    def array_ordenado a
        a.sort
    end

    # Ex. 24 - Criar uma funcao com nome 'classifica_string' que recebe uma string e retorna 'pequena' se a string tiver entre 0 e 10 caracteres,
    # retorna 'media' se a string tiver entre 11 e 30 caracteres, retorna 'grande' se a string tiver entre 31 e 50 caracteres, e retorna nil se
    # a string tiver mais de 51 caracteres
    def classifica_string a
        if a.size <= 10
            'pequena'
        elsif a.size <= 30
            'media'
        elsif a.size <= 50
            'grande'
        else
            nil
        end
    end

    # Ex. 25 - Criar uma funcao com nome 'fatorial' que recebe um inteiro e retorne seu fatorial
    # exemplo: 5 -> 120 (pos 5! = 120)
    def fatorial a
        return 1 if a == 0
        (1..a).to_a.inject('*') * 1
    end

    # Ex. 26 - Criar uma funcao com nome 'fibonacci' que receba um inteiro e retorne o numero de fibonacci na posicao relativa ao inteiro recebido
    # exemplo: 3 -> 2 (pois, 1 1 [2] 3 5)
    # exemplo: 5 -> 5 (pois, 1 1 2 3 [5] 8 13)
    def fibonacci a
        if a <= 2
            1
        else
            fibonacci(a-1) + fibonacci(a-2)
        end
    end
end
HASH = {}
HASH['multiplicacao'] = []
basic = Basic.new

5.times do
    a = rand(1000)
    b = rand(1000)
    HASH['multiplicacao'] << {'ans'=>basic.multiplicacao(a,b), 'args'=>[a,b]}
end

HASH['divisao'] = []
5.times do
    a = rand(100000)
    b = rand(a)
    HASH['divisao'] << {'ans'=>basic.divisao(a,b), 'args'=>[a,b]}
end

HASH['modulo'] = []
5.times do
    a = rand(10000000)
    b = rand(a)
    HASH['modulo'] << {'ans'=>basic.modulo(a,b), 'args'=>[a,b]}
end

HASH['elevado'] = []
5.times do
    a = rand(10)
    b = rand(10)
    HASH['elevado'] << {'ans'=>basic.elevado(a,b), 'args'=>[a,b]}
end

HASH['primeiro'] = []
5.times do
    a = (1..rand(200)).to_a.shuffle
    HASH['primeiro'] << {'ans'=>basic.primeiro(a), 'args'=>[a]}
end

HASH['ultimo'] = []
5.times do
    a = (1..rand(200)).to_a.shuffle
    HASH['ultimo'] << {'ans'=>basic.ultimo(a), 'args'=>[a]}
end

HASH['soma_acumulada'] = []
5.times do
    a = (1..rand(200)).to_a.shuffle
    HASH['soma_acumulada'] << {'ans'=>basic.soma_acumulada(a), 'args'=>[a]}
end

HASH['primeira_metade'] = []
5.times do
    a = (2..rand(200)).to_a.shuffle
    a.pop if a.size % 2 != 0
    HASH['primeira_metade'] << {'ans'=>basic.primeira_metade(a), 'args'=>[a]}
end

HASH['segunda_metade'] = []
5.times do
    a = (2..rand(200)).to_a.shuffle
    a.pop if a.size % 2 != 0
    HASH['segunda_metade'] << {'ans'=>basic.segunda_metade(a), 'args'=>[a]}
end

HASH['junta_metades'] = []
5.times do
    a = (1..rand(200)).to_a.shuffle
    b = (1..rand(200)).to_a.shuffle
    HASH['junta_metades'] << {'ans'=>basic.junta_metades(a,b), 'args'=>[a,b]}
end

HASH['apenas_pares'] = []
5.times do
    a = (2..rand(200)).to_a.shuffle
    HASH['apenas_pares'] << {'ans'=>basic.apenas_pares(a), 'args'=>[a]}
end

HASH['dobrado'] = []
5.times do
    a = SecureRandom.hex.to_s.split('')
    HASH['dobrado'] << {'ans'=>basic.dobrado(a), 'args'=>[a]}
end

HASH['e_maiusculo?'] = [
    {'ans'=>basic.e_maiusculo?('ASDOMOWDMLADMLSADO'), 'args'=>['ASDOMOWDMLADMLSADO']},
    {'ans'=>basic.e_maiusculo?('AODMWKDAlDWOMADOAMWID'), 'args'=>['AODMWKDAlDWOMADOAMWID']},
    {'ans'=>basic.e_maiusculo?('aOMSDOWAIMDAWO'), 'args'=>['aOMSDOWAIMDAWO']},
    {'ans'=>basic.e_maiusculo?('ALDMOPAWDDOPAWDPOAWMDASLDMALMDOAWDd'), 'args'=>['ALDMOPAWDDOPAWDPOAWMDASLDMALMDOAWDd']},
    {'ans'=>basic.e_maiusculo?('lllaslllllll'), 'args'=>['lllaslllllll']}
]

HASH['nome_completo'] = [
    {'ans'=>basic.nome_completo('Joao', 'Silva'), 'args'=>['Joao', 'Silva']},
    {'ans'=>basic.nome_completo('SAODMOA', 'SAODMlmoAS'), 'args'=>['SAODMOA', 'SAODMlmoAS']},
    {'ans'=>basic.nome_completo('Lmadsldmopdaw', 'lsadpoamdopdw'), 'args'=>['Lmadsldmopdaw', 'lsadpoamdopdw']}
]

HASH['remove_espacos_extras'] = [
    {'ans'=>basic.remove_espacos_extras('essa string              tem      bastante    espacos'), 'args'=>['essa string              tem      bastante    espacos']},
    {'ans'=>basic.remove_espacos_extras('oi                ola oi oi ola'), 'args'=>['oi                ola oi oi ola']},
    {'ans'=>basic.remove_espacos_extras('kkkkk oi kkkkkkkkkkkkkkkk         kkkkkkkkkkk kkk k k k kk'), 'args'=>['kkkkk oi kkkkkkkkkkkkkkkk         kkkkkkkkkkk kkk k k k kk']}
]

HASH['tem_apenas_numeros?'] = [
    {'ans'=>basic.tem_apenas_numeros?('21031238912389142321'), 'args'=>['21031238912389142321']},
    {'ans'=>basic.tem_apenas_numeros?('01293918390432894382432432a213121'), 'args'=>['01293918390432894382432432a213121']},
    {'ans'=>basic.tem_apenas_numeros?('987238216381231231234231673123761236172836127467819381289318927378126478126312'), 'args'=>['987238216381231231234231673123761236172836127467819381289318927378126478126312']},
    {'ans'=>basic.tem_apenas_numeros?('1'), 'args'=>['1']},
    {'ans'=>basic.tem_apenas_numeros?('a'), 'args'=>['a']}
]

HASH['quantos_as'] = [
    {'ans'=>basic.quantos_as('daopwmdoamwpdomawdpomaodpsklfmsdofoa'), 'args'=>['daopwmdoamwpdomawdpomaodpsklfmsdofoa']},
    {'ans'=>basic.quantos_as('bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb'), 'args'=>['bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb']},
    {'ans'=>basic.quantos_as('mopascmcsaoimcosaidasmdoamdwqldaaaa'), 'args'=>['mopascmcsaoimcosaidasmdoamdwqldaaaa']},
    {'ans'=>basic.quantos_as('llllllllllllllllllllllllkomomomomo'), 'args'=>['llllllllllllllllllllllllkomomomomo']}
]

HASH['atributo_nome'] = [
    {'ans'=>basic.atributo_nome({'nome'=>'joana', 'idade'=>32, 'sexo'=>'feminino'}), 'args'=>[{'nome'=>'joana', 'idade'=>32, 'sexo'=>'feminino'}]},
    {'ans'=>basic.atributo_nome({'idade'=>32, 'sexo'=>'feminino'}), 'args'=>[{'idade'=>32, 'sexo'=>'feminino'}]},
    {'ans'=>basic.atributo_nome({'nome'=>'AAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaa', 'idade'=>32, 'sexo'=>'feminino'}), 'args'=>[{'nome'=>'AAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaa', 'idade'=>32, 'sexo'=>'feminino'}]}
]

HASH['endereco_completo'] = [
    {'ans'=>basic.endereco_completo({'cep'=>'12345', 'logradouro'=>'quadra 50'}), 'args'=>[{'cep'=>'12345', 'logradouro'=>'quadra 50'}]},
    {'ans'=>basic.endereco_completo({'cep'=>'SAPODMWMDIlmsladiowad', 'logradouro'=>'555555555555555555555555555555555555'}), 'args'=>[{'cep'=>'SAPODMWMDIlmsladiowad', 'logradouro'=>'555555555555555555555555555555555555'}]},
    {'ans'=>basic.endereco_completo({'cep'=>'aa', 'logradouro'=>'bb'}), 'args'=>[{'cep'=>'aa', 'logradouro'=>'bb'}]},
    {'ans'=>basic.endereco_completo({'cep'=>'a', 'logradouro'=>'a'}), 'args'=>[{'cep'=>'a', 'logradouro'=>'a'}]}
]

HASH['array_para_hash'] = [
    {'ans'=>basic.array_para_hash([["azul", "blue"], ["rosa", "pink"], ["amarelo", "yellow"]]), 'args'=>[[["azul", "blue"], ["rosa", "pink"], ["amarelo", "yellow"]]]},
    {'ans'=>basic.array_para_hash([['a','b']]), 'args'=>[[['a','b']]]},
    {'ans'=>basic.array_para_hash([['dont care', 'still dont care'], ['1', 2], ['50', 'h']]), 'args'=>[[['dont care', 'still dont care'], ['1', 2], ['50', 'h']]]}
]

HASH['array_ordenado'] = [
    {'ans'=>basic.array_ordenado([0]), 'args'=>[[0]]}
]
4.times do
    a = (1..(rand(30)+1)).to_a.shuffle
    HASH['array_ordenado'] << {'ans'=>basic.array_ordenado(a), 'args'=>[a]}
end

HASH['classifica_string'] = [
    {'ans'=>basic.classifica_string('a'), 'args'=>['a']},
    {'ans'=>basic.classifica_string('a'*10), 'args'=>['a'*10]},
    {'ans'=>basic.classifica_string('a'*11), 'args'=>['a'*11]},
    {'ans'=>basic.classifica_string('a'*30), 'args'=>['a'*30]},
    {'ans'=>basic.classifica_string('a'*31), 'args'=>['a'*31]},
    {'ans'=>basic.classifica_string('a'*50), 'args'=>['a'*50]},
    {'ans'=>basic.classifica_string('a'*51), 'args'=>['a'*51]},
    {'ans'=>basic.classifica_string('a'*100), 'args'=>['a'*100]},
]

HASH['fatorial'] = [
    {'ans'=>basic.fatorial(3), 'args'=>[3]},
    {'ans'=>basic.fatorial(5), 'args'=>[5]},
    {'ans'=>basic.fatorial(6), 'args'=>[6]},
    {'ans'=>basic.fatorial(11), 'args'=>[11]},
    {'ans'=>basic.fatorial(0), 'args'=>[0]},
]

HASH['fibonacci'] = [
    {'ans'=>basic.fibonacci(1), 'args'=>[1]},
    {'ans'=>basic.fibonacci(2), 'args'=>[2]},
    {'ans'=>basic.fibonacci(3), 'args'=>[3]},
    {'ans'=>basic.fibonacci(4), 'args'=>[4]},
    {'ans'=>basic.fibonacci(5), 'args'=>[5]},
    {'ans'=>basic.fibonacci(6), 'args'=>[6]},
    {'ans'=>basic.fibonacci(10), 'args'=>[10]},
]