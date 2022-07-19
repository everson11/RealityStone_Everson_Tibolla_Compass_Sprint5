Dado('que esteja na Home') do
    @home = Home.new
    @home.load
    end
    
    Dado('logado na aplicação') do
        @login = Login.new
        @login.load
        @login.email.set 'nos@gmail.com'
        @login.password.set '123'
        @login.submit.click
      end

  
  Quando('buscar um produto por nome') do
    @home.PesquisarProdutos.set 'Notebook'
    @home.Pesquisar.click
  end
  
  Então('o sistema deve mostrar o produto') do
    expect(@home).to have_xpath('//*[@id="root"]/div/div/div[1]/div/div[2]/input')
  end
  
  Quando('realizar uma busca pelo produto {string}') do |string|
    @home.PesquisarProdutos.set string
    @home.Pesquisar.click
  end
  
  Então('o sistema deve mostrar os produtos existentes') do
    expect(@home).to have_xpath('//*[@id="root"]/div/div/div[1]/div/div[2]/input')
  end