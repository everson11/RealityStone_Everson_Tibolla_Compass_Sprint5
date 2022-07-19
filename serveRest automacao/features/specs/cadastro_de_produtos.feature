#language: pt

@CadastroProduto
Funcionalidade: Cadastrar um novo produto
    Como administrador do e-commerce Front - ServeRest
    Quero cadastrar um novo produto 
    Para os usuários poderem comprar

    Contexto: 
        Dado que esteja na tela de cadastro de produtos
        E logado na aplicação como administrador

    Esquema do Cenário: Validar o cadastro de um novo produto
        Quando o usuário preencher os campos "<Nome>", "<Preço>", "<Descrição>" e "<Quantidade>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Nome           |Preço          |Descrição            |Quantidade              |msg                                                                               |
        |               |30             |Ampliar a visão      |1000                    |Nome não pode ficar em branco                                                     |
        |Lupa           |               |Ampliar a visão      |1000                    |Preco é obrigatório                                                               |
        |Lupa           |30             |                     |1000                    |Descricao não pode ficar em branco                                                |
        |Lupa           |30             |Ampliar a visão      |                        |Quantidade é obrigatório                                                          |

                                                                                                 