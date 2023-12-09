#language: pt

Funcionalidade: Busca Por Endereco
Para pesquisar por ruas cadastradas
O usuario do Pauliceia2.0
Deseja encontrar ruas cadastradas

Contexto:
    Dado que o usuario esteja na pagina de busca

Cenario: Procurar por um endereco que existe
Quando ele pesquisar pela "<rua>", "<numero>", "<ano>"
Entao o waypoint do endereco sera exibido

Exemplos:
|rua                    |numero |ano |
|rua adolpho gordo      |41     |1909|
|rua affonso arinos     |14     |1928|
|rua albuquerque lins   |87     |1929|

Cenario: Procurar por um endereco nao existente
Quando ele pesquisar pela "<rua>", "<numero>", "<ano>" de endereco nao existente
Entao a mensagem de erro "<mensagem>" deve aparecer

Exemplos:
|rua                    |numero |ano |mensagem|  
|rua abreuti gordo      |66     |1309|Não encontramos pontos necessarios para a geolocalização nesse logradouro no ano buscado (rua abreuti gordo, 66, 1309)    |
|rua hurr durnnnn       |14     |1628|Não encontramos pontos necessarios para a geolocalização nesse logradouro no ano buscado (rua hurr durnnnn, 14, 1628)     |
|rua hehehe sei lains   |87     |1029|Não encontramos pontos necessarios para a geolocalização nesse logradouro no ano buscado (rua hehehe sei lains, 87, 1029) |

