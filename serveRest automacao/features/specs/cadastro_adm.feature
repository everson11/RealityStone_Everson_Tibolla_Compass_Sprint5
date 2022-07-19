#language: pt

@CadastroAdm
Funcionalidade: Cadastro de administrador
    Como administrador do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro para administrador

    Esquema do Cenário: Validar o cadastro de administrador
        Quando o administrador preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email         |Digite sua senha   |msg                                       |
        |                |julionotadm@teste.com    |juju123            |Nome não pode ficar em branco             |
        |julio           |                         |juju123            |Email é obrigatório                       |
        |julio           |julionotadm@teste        |juju123            |Email deve ser um email válido            |
        |julio           |julionotadm@teste.com    |                   |Password não pode ficar em branco         |
        |julio           |opa@gmail.com            |f123               |Este email já está sendo usado            |
    
    