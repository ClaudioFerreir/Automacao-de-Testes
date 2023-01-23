class PrimeiroObject < SitePrism::Page
  
  #mapear os elementos
  #fazer nossos metodos

  @page = PrimeiroObject.new #instaciamos a classe para criacao do objeto

  @page.elemento.click #acessar o elemento e fazer as acoes
  @page.metodo #chamar metodos desta classe
end