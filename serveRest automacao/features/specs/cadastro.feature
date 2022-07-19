#language: pt

@CadastroConvencional
Funcionalidade: Cadastro de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro

    Esquema do Cenário: Validar o cadastro de usuários
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem  é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email          |Digite sua senha     |msg                                                  |
        |                |naosei@teste.com          |@naosei321           |Nome não pode ficar em branco                        |
        |julio           |                          |@naosei321           |Email é obrigatório                                  |
        |julio           |naosei@teste              |@naosei321           |Email deve ser um email válido                       |
        |julio           |naosei@teste.com          |                     |Password não pode ficar em branco                    |
        |julio           |naosei@teste.com          |@naosei321           |Já é cadastrado?Entrar                               |
        |julioteste      |julioteste@teste.com      |julio123             |Este email já está sendo usado                       |                                                     
    
    
