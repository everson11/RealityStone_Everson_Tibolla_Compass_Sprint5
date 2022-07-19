Dado('que esteja na tela de cadastro') do
    @cadastro = Cadastro.new
    @cadastro.load
    end

    Quando('o usuário preencher os campos {string}, {string} e {string}') do |string, string2, string3|
      @cadastro.name.set string
      @cadastro.email.set string2
      @cadastro.password.set string3
      find('button[type="submit"]').click
    end

    Então('a mensagem  é exibida {string}') do |string|
      expect(@cadastro).to have_content string
    end

    

