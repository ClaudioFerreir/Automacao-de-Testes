Quando('entro no iframe e preencho os campos') do
  visit '/mudancadefoco/iframe'

  #mudando o foco para o iframe
  within_frame('id_do_iframe') do #pode passar o id puro pq ja vai buscar pelo iframe
    #iremos fazer as acoes dentro do iframe
    fill_in(id: 'first_name', with:'Claudio')
    fill_in(id: 'last_name', with:'Ferreira')
  end
  sleep(5)
end

Quando('entro no modal e verifico o texto') do
  visit '/mudancadefoco/modal'
  find('a[href="#modal1"]').click #para abrir o modal

  within('#modal1') do
    texto = find('h4')
    expect(texto.text).to eql 'Modal Teste'
    find('.modal-close').click
  end
  sleep(3)
end

