#language: pt
@CompleteLogin
Funcionalidade: Login de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar login 
    Para entar na aplicação

    Contexto: 
        Dado que esteja na tela de login

    Esquema do Cenário: Validar o login de usuários
        Quando o usuário preencher os campos "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email        |Digite sua senha  |msg                                    |
        |                        |123               |Email é obrigatório                    |
        |test@teste              |123               |Email deve ser um email válido         |
        |test@teste.com          |                  |Password não pode ficar em branco      |
        |test@teste.com          |123               |                                       |
        |test@teste.com          |opa               |Email e/ou senha inválidos             |
                                       

    Cenário: fazer login na mesma conta após logout
        Dado que esteja na tela de login
        Quando o usuário preencher campo "<Digite seu email>" e NÃO preencher campo "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email      |Digite sua senha |msg                     |
        |test@teste.com        |                 |Password é obrigatório  |

