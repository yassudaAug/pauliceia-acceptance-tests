#language: pt

Funcionalidade: Login Com Sucesso

Contexto: 
    Dado que estou na pagina de login

Cenario: Login com sucesso
Quando eu logar "<email>", "<senha>"
Entao a mensagem de welcome "<mensagem>" ira aparecer

Exemplos:
|email                      |senha                  |mensagem                          |
|sidad18638@jalunaki.com    |sidad18638@jalunaki.com|BEM-VINDO augusto bbruh momento!  |

Cenario: Login sem sucesso
Quando eu logar "<email>", "<senha>"
Entao a mensagem de erro "<mensagem>" ira aparecer

Exemplos:
|email                      |senha       |mensagem                          |
|bruh@email.com             |aadsasd     |E-mail ou senha incorreta!        |
