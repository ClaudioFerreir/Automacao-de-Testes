Quando('preencho o formulario.') do
  @mapeando = MapeandoElementoPage.new

  @mapeando.load

  @mapeando.preencher #chamamos o metodo
  sleep(5)
  # @mapeando.nome.set 'claudio' #mesma coisa so que sem a praticidade do metodo
end