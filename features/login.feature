#language: pt

Funcionalidade: Login de usuário
    Sendo um usuário previamente cadastrado
    Quero acessar o site com meu email & senha
    Para que eu possa ouvir as playlists do Parodify

    @login
    Cenario: Efetuar o Login

        Dado que acesso a página de login
        Quando submeto minhas credenciais com:
            | email | parodify@mailinator.com |
            | senha | pwd@123                 |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página de login
        Quando submeto minhas credenciais com:
            | email | <email> |
            | senha | <senha> |
        Então deve ser exibida a mensagem: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                   | senha   |
            | parodify@hotmail.com    | abc@123 |
            | parodify@mailinator.com |         |
            |                         | pwd@123 |
            |                         |         |