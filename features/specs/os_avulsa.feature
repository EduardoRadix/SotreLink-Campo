#language: pt

Funcionalidade: Login

    @Os_avulsa
    Esquema do Cenario: Criar uma OS avulsa aleatória
        Dado que eu esteja logado no app
            | matricula | 1042845 |
            | senha     | abc123  |
        Quando preencho os campos da os avulsa <prioridade>
        Então devo criar uma os avulsa com sucesso

        Exemplos:
            | prioridade |
            | 'baixa'    |
            # | 'media'    |
            # | 'alta'     |
