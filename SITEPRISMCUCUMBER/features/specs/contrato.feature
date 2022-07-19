#language: pt

@regression
@contact
Funcionalidade: Contato

    Contexto: Estar na home
        Dado que eu esteja na home

    @contact_ok
    Cenário: Entar em contato pelo formulário HomePage
        Quando entrar em contato pelo formulário da home
        Então deverá apresentar um modal de mensagem enviada
        
