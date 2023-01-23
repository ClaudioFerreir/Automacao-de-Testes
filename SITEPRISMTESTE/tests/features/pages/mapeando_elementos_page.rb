class MapeandoElementoPage < SitePrism::Page
  #setar a url
  set_url '/users/new'

  element :nome, '#user_name' #element é similar ao find() so que neste caso ele busca o elemento e armazena dentro de um simbolo, como se nome = #user_name

  def preencher
    #ao inves de usarmos com o capybara fill_in, find().set ou find().send_keys
    nome.set 'claudio'
  end
end