class LoginPage < SitePrism::Page # Classe LoginPage sendo extendida a SitePrism
  set_url ''
  element :email, :id, "session_key"
  element :password, :id, "session_password"
  element :loginButton, :xpath, "//*[@id='main-content']/section[1]/div/div/form/button"

  def userLogin # Metodo
    email.set ""
    password.set ""
    loginButton.click
  end
end