Quando('clico em botoes') do
  visit '/' #acesso a url padrao determinada no meu .env
  #clicar em um link/botao que contenha este texto
  click_on('Começar Automação Web') #click_link_or_button sao identicos
  visit '/buscaelementos/botoes'
  click_button(class: 'btn waves-light')
  #busca e clica no elemento
  find('a[onclick="ativaedesativa2()"]').click 
  find('a[onclick="ativaedesativa2()"]').double_click 
  find('a[onclick="ativaedesativa3()"]').right_click 
  visit '/'
  click_link('Github')
  sleep(5)
end