Quando('seleciono o mouse hover') do
  visit('/iteracoes/mousehover')
  #find('.activator').hover #move o mouse para determinado elemento
  find('.activator').hover.click #move o mouse para o elemento e clica
  sleep(5)
end