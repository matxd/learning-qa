Dado('que o usuario queira se logar') do
  visit ''
end

Quando('ele digitar as credencias validas') do
  @testing = LoginPage.new # Instanciando classe
  @testing.userLogin # Executando método da classe
end

Entao('deve acessar o site com sucesso') do
  @home = HomePage.new
  @home.pageAfterLogin
end