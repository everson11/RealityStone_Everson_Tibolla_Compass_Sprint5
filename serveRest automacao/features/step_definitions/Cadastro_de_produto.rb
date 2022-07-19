Dado('logado na aplicação como administrador') do
    @login = Login.new 
    @login.load 
    @login.email.set 'agoradm@gmail.com' 
    @login.password.set '123' 
    @login.submit.click 
    @cadastroProduto = CadastroProduto.new 
    @cadastroProduto.btn_entrar_cadastro.click 
  end

  Dado('que esteja na tela de cadastro de produtos') do
    @cadastroProduto = CadastroProduto.new 
    end
  
  Quando('o usuário preencher os campos {string}, {string}, {string} e {string}') do |string, string2, string3, string4|
    @cadastroProduto.name.set string 
    @cadastroProduto.price.set string2
    @cadastroProduto.description.set string3 
    @cadastroProduto.quantity.set string4 
    @cadastroProduto.btn_cadastrar.click 
  end

  Então('o Sistema Exibe a {string}') do |string|
    expect(@cadastroProduto).to have_content string 
  end


