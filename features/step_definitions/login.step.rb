Dado('que o usuario queira se logar') do
  login.load # Carregamento da pagina
end

Quando('ele digitar as credencias validas') do
  login.userLogin
end

Entao('deve acessar o site com sucesso') do
  home.pageAfterLogin
end