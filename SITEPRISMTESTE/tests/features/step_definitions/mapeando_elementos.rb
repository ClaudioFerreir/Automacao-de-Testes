Quando('preencho o formulario.') do
  #@mapeando = MapeandoElementoPage.new
  #@mapeando.load
  #@mapeando.preencher #chamamos o metodo

  #outra forma mais pratica para nao precisarmos instanciar todas as vezes ja que fizemos no page_helper e esta disponivel para todo o projeto. Assim so precisamos instaciar a classe uma vez e nao toda vez que formos usar.
  home.load 
  home.preencher

  sleep(5)
  # @mapeando.nome.set 'claudio' #mesma coisa so que sem a praticidade do metodo
end