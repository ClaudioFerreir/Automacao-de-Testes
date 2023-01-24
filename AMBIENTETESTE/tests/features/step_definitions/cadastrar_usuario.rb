Quando('eu faco cadastro') do
  @userpage = UserPage.new
  @userpage.load
  
  @userpage.preencher
  @userpage.cadastrar
  
   sleep(2)
end

Entao('verifico se fui cadastrado') do
  @userpage.wait_until_mensagem_visible
  expect(@userpage.mensagem.text).to eql 'Usuário Criado com sucesso'
end