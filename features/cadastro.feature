#language: pt

Funcionalidade: Cadastro de Usuário
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @default
    Cenário: Efetuar o Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | parodify@mailinator.com |
            | senha          | pwd@123                 |
            | senha_confirma | pwd@123                 |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                   | senha  | confirma_senha | mensagem_saida                       |
            |                         | pwd123 | pwd123         | Oops! Informe seu email.             |
            | parodify@mailinator.com |        |                | Oops! Informe sua senha.             |
            | parodify@mailinator.com | pwd123 | abc123         | Oops! Senhas não são iguais.         |
            |                         |        |                | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do campo email

        Quando acesso a página de cadastro
        Então deve exibir o seguinte css_selector: "input[type=email]"
