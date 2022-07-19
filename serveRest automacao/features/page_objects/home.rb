
class Products < SitePrism::Section
    element :name, 'card-title negrito'
    element :price, 'card-subtitle mb-2 text-muted'
end

class Home < SitePrism::Page
    set_url '/'
    element :PesquisarProdutos, 'input[type="search"]'
    element :Pesquisar, :xpath, '//*[@id="root"]/div/div/div[1]/div/div[3]/button'
end

class Login < SitePrism::Page
    set_url'/login'
    element :email, '#email'
    element :password, '#password'
    element :submit, 'button[type="submit"]'
end

class Cadastro < SitePrism::Page
    set_url '/cadastrarusuarios'
    element :name, '#nome'
    element :email, '#email'
    element :password, '#password'
    element :btn_cadastrar, xpath: '//*[@id="root"]/div/div/form/div[8]/button'
end

class CadastroAdm < SitePrism::Page
    set_url '/cadastrarusuarios'
    element :name, '#nome'
    element :email, '#email'
    element :password, '#password'
    element :btn_cadastrar, xpath: '//*[@id="root"]/div/div/form/div[8]/button'
    element :checkbox, '#administrador'
end

class CadastroProduto < SitePrism::Page
    set_url '/admin/cadastrarprodutos'
    element :name, '#nome'
    element :description, '#description'
    element :price, '#price'
    element :quantity, '#quantity'
    element :btn_cadastrar, 'button[type="submit"]'
    element :btn_entrar_cadastro, '#root > div > div > p.row > div:nth-child(4) > div > div > a'
end



