#language: pt

Funcionalidade: Login

    @Login
    Cenario: Login com sucesso
        Dado que eu acesso a tela de Login
        Quando submeto minhas credencias:
            | matricula | 1042845 |
            | senha     | abc123  |
        Então devo estar logado
