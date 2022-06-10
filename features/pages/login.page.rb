class LoginPage < SitePrism::Page # Classe LoginPage sendo extendida a SitePrism
  element :email, :id, "email"
  element :password, :id, "pass"
  element :loginButton, :button, "login"

  def userLogin
    email.set "" # Digitar e-mail para testes
    password.set "" # Digitar senha para testes
    loginButton.click
  end
end