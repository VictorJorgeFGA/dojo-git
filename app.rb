require 'json'

# Essa funcao deve retornar um array de strings da seguinte forma:
# ['Aatrox', 'Ahri', ...]
#
# Problemas:
#   A funcao está retornando numeros (key) ao inves dos nomes dos campeoes
#       Resolucao: Trocar a chave 'key' pela chave 'name' ou 'id' no champion_info
#   A funcao cria um novo array (names) para retornar os nomes dos campeoes
#       Resolucao: remover o array names, remover o return names, e passar a utilizar a funcao map ao inves da funcao each
#       Tutorial da funcao map https://medium.com/collabcode/diferen%C3%A7a-entre-map-collect-select-e-each-no-ruby-4d8dc853711f#b99b
def champions_names champions
    names = []
    champions['data'].each do |champion, champion_info|
        names << champion_info['key']
    end
    return names
end

# Essa funcao deve retornar um array de hashes da seguinte forma:
# [{'name'=>'Aatrox', 'title'=>'the Darkin Blade'}, {'name'=>'Ahri', 'title'=>'the Nine-Tailed Fox'}, ...]
#
# Problemas:
#   O titulo (title) e o nome (name) do campeão estão vindo trocados
#       Resolucao: Trocar a chave 'title' por 'name' e a chave 'name' por 'title'
#   A funcao cria um novo array (titles) para retornar os titulos dos campeoes
#       Resolucao: remover o array titles, remover o return titles, e passar a utilizar a funcao map ao inves da funcao each
#       Tutorial da funcao map https://medium.com/collabcode/diferen%C3%A7a-entre-map-collect-select-e-each-no-ruby-4d8dc853711f#b99b
def champions_titles champions
    titles = []
    champions['data'].each do |champion, champion_info|
        titles << {'title' => champion, 'name' => champion_info['title']}
    end
    return titles
end

# Essa funcao deve retornar um array de hashes da seguinte forma:
# [{'name'=>'Aatrox', 'difficulty'=>4}, {'name'=>'Ahri', 'difficulty'=>5}, ...]
#
# Problemas:
#   A funcao esta retornando apenas as dificuldades, portanto nao é possível saber de qual campeão é cada dificuldade
#       Resolucao: passar a retornar no bloco do um hash no formato {'name'=><nome do campeao>, 'difficulty'=><dificuldade do campeao>}
#   A funcao tenta acessar uma chave que nao existe no JSON de campoes, portanto so são retornados valores nulos (nil)
#       Resolucao: checar no arquivo champions em que lugar fica a dificuldade do campeaoe passar acessa-la corretamente
def champions_difficulties champions
    champions['data'].map do |champion, champion_info|
        champion_info['dificuldade_do_campeao']
    end
end

# Essa funcao deve retornar um array de strings da seguinte forma:
# ['Alistar', 'Amumu', ...]
# Problemas:
#   A funcao esta retornando alem dos nomes dos tankers valores nulos (nil)
#       Resolucao: Utilizar a função select antes da funcao map ao inves de um if else para remover os campeoes que nao sao tankers
#       Funcao select: https://medium.com/collabcode/diferen%C3%A7a-entre-map-collect-select-e-each-no-ruby-4d8dc853711f#cd72
def tank_champions champions
    champions['data'].map do |champion, champion_info|
        if champion_info['tags'].include? 'Tank'
            champion_info['name']
        else
            nil
        end
    end
end

# Essa funcao deve retornar um array de strings da seguinte forma:
# ['Aatrox', 'Ahri', ...]
# Problemas
#   A funcao está dando um erro de comparacao entre String e Integer.
#       Resolucao: Garantir que tanto a variavel hp recebida na funcao quanto o hp que vem do JSON sejam do mesmo tipo
#       Utilizar os métodos de conversao de tipos primitivos do ruby: https://www.rubyguides.com/2018/09/ruby-conversion-methods/
#   A funcao esta retornando campoes que possuem a vida exatamente igual a variavel hp, sendo que so deveria retornar apenas campoes
#   com vida acima da variavel hp
#       Resolucao: revisar o operador que está sendo utilizado para fazer a comparacao
def champions_with_hp_above champions, hp
    champions['data'].reject {|champion,  champion_info| champion_info['stats']['hp'] < hp }.map do |champion, champion_info|
        champion_info['name']
    end
end