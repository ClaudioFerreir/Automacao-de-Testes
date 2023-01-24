class UserPage < SitePrism::Page
  set_url '/users/new'

  element :nome, '#user_name'
  element :sobrenome, '#user_lastname'
  element :email, '#user_email' 
  element :endereco, '#user_address'
  element :universidade, '#user_university'
  element :perfil, '#user_profile'
  element :genero, '#user_gender'
  element :idade, '#user_age'

  element :botao, '.actions.btn.waves-effect.green'
  element :mensagem, '#notice' 

  def preencher
    nome.set 'claudio'
    sobrenome.set 'ferreira junior'
    email.set 'claudioferreirajr@hotmail.com'
    endereco.set 'rua 12'
    universidade.set 'descomplica'
    perfil.set 'qa'
    genero.set 'masculino'
    idade.set '42'
  end

  def cadastrar
    botao.click
  end
end