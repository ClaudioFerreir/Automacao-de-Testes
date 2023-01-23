Dado('que eu estou na tela de dragdrop') do
  visit '/iteracoes/draganddrop'
end

Quando('movo o dragdrop') do
  @primeiro_elemento = find('#winston') #elemento mapeado
  @segundo_elemento = find('#dropzone') #destino do elemento

  @primeiro_elemento.drag_to(@segundo_elemento)
  sleep(5)
end