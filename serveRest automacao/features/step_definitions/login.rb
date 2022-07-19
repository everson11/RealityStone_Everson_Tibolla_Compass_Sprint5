
Dado('que esteja na tela de login') do
  @login = Login.new
  @login.load
end 

Quando('o usuério preencher os campos {string} e {string}') do |string, string2|
  @login.email.set string
  @login.password.set string2
  @login.submit.click
end

Então('mensagem é exibida {string}') do |string|
  expect(@login).to have_content string
   
end

Quando('o usuário preencher campo {string} e NÃO preencher campo {string}') do |string, string2|
  @login.email.set string
  @login.submit.click
   
end




Quando('o usuário preencher os campos {string} e {string}') do |string, string2|
  @login.email.set string
  @login.password.set string2
  @login.submit.click
end