Quando('clico no elemento de uma sessao.') do
  @pagina = Pagina.new
  @pagina.load

  @pagina.navbar.medium.click #consigo acessar um elemento dentro da secao da pagina
  sleep(5)
end