Quando('clico no botao.') do
  @ajax = AjaxPage.new
  @ajax.load

  @ajax.clicar_botao
end

Entao('verifico se apareceu') do
  @ajax.wait_until_mensagem_visible #importante caso tenha alguma lentidao na rede, com isso teremos uma espera determinada pelo 'config.default_max_wait_time' do .env
  expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'
end