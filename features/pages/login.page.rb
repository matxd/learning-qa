class LoginPage < SitePrism::Page # Classe LoginPage sendo extendida a SitePrism
  element :email, :id, "session_key"
  element :password, :id, "session_password"
  element :loginButton, :button, "Sign in"

  def userLogin # Metodo
    email.set "cto38427@jeoce.com" # Digitar e-mail para testes
    password.set "teste007" # Digitar senha para testes
    loginButton.click
  end
end