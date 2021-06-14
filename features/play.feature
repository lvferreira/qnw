#language: pt

Funcionalidade: Reproduzir Paródia
    Sendo um usuário cadastrado
    Quero reproduzir músicas no player do Parodify
    Para que eu possa ouvir as paródias das minhas bandas favoritas

    Contexto: Login
        * Efetuo o Login com: "parodify@mailinator.com" e "pwd@123"

    Cenário: Ouvir Paródia
        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte música:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa paródia deve ser reproduzida
