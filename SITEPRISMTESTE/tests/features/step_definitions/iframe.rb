Quando('preencho os campos.') do
  @pagina_iframe = PaginaPadrao.new
  @pagina_iframe.load

  #vai entrar no iframe e setar as variaveis determinadas dentro do iframe 
  @pagina_iframe.preencher_campo do |iframe|
    iframe.nome.set 'claudio'
    iframe.ultimo_nome.set 'ferreira'
  end
  sleep(5)
end