Quando('eu marco um checkboc e um radiobox') do
  visit('/buscaelementos/radioecheckbox')
  find('label[for="white"]').click
  sleep(2)
  check('purple', allow_label_click: true) #necessario a opcao pq a label nao está visivel (opcao de marcar)
  sleep(2)
  uncheck('purple', allow_label_click: true) #necessario a opcao pq a label nao está visivel (desmarcar)
  sleep(5)
  choose('red', allow_label_click: true) #label clicavel (opcao de marcar)
  sleep(2)
end