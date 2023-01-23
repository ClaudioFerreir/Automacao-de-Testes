Quando('realizo acoes com o teclado') do
  visit 'users/new'
  #faz com que simule pressionar a tecla determinada
  find('#user_name').send_keys(:page_down) #passamos aqui como simbolo a tecla que desejamos
  find('input[value="Criar"]').send_keys(:enter)
  sleep(4)
end