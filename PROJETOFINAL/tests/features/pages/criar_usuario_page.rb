class User < SitePrism::Page
  set_url '/users/new'
  
  element :nome, '#user_name'
  element :ultimo_nome, '#user_lastname'
  element :email, '#user_email'
  element :endereco, '#user_address'
  element :universidade, '#user_university'
  element :profissao, '#user_profile'
  element :genero, '#user_gender'
  element :idade, '#user_age'

  element :criar, 'input[value="Criar"]'

  def criar_usuario
    nome.set 'claudio'
    ultimo_nome.set 'ferreira'
    email.set 'claudioferreirajr@gmail.com'
    endereco.set 'rua 1'
    universidade.set 'unip'
    profissao.set 'analista'
    genero.set 'Masculino'
    idade.set '30'
    criar.click
  end
end