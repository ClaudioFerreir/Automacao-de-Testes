class Secao < SitePrism::Section
  #para mapear os elementos da sessao ou seja elementos que se repetem na pagina
  element :youtube, 'a[href="https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA"]'
  element :medium, 'a[href="https://medium.com/automa%C3%A7%C3%A3o-com-batista"]'

end

class Pagina < SitePrism::Page
  set_url '/buscaelementos/radioecheckbox'
  section :navbar, Secao, '.nav-wrapper' #aqui com o nome da secao conseguimos acessar os elemetos da secao
end