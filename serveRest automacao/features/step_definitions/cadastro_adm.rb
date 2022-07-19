Dado('que esteja na tela de cadastro para administrador') do
    @cadastroAdm = CadastroAdm.new
    @cadastroAdm.load
  end

  Quando('o administrador preencher os campos {string}, {string} e {string}') do |string, string2, string3|
    @cadastroAdm.name.set string
    @cadastroAdm.email.set string2
    @cadastroAdm.password.set string3
    @cadastroAdm.checkbox.click
    find('button[type="submit"]').click
  end

    Então('a mensagem é exibida {string}') do |string|
        expect(@cadastroAdm).to have_content string
        end

  
