Quando('eu entro na janela e verifico a mensagem') do
  visit '/mudancadefoco/janela'

  #janela recebe uma janela que foi aberta pelo link
  janela = window_opened_by do
    click_link 'Clique aqui'
  end

  #muda de foco para a janela
  within_window janela do
    #confirmo com o endereco se e a janela que desejamos
    expect(current_url).to eq 'http://localhost:3000/mudancadefoco/newwindow'
    #encontramos a janela pelo find e confirmamos o conteudo da msg dentro da janela
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    #comando para fechar a janela
    janela.close
    sleep(2)
  end

#segunda opcao com o comando window.last
  
    click_link 'Clique aqui'

    #mudando para ultima aba
    switch_to_window windows.last

    #confirmo com o endereco se e a janela que desejamos
    expect(current_url).to eq 'http://localhost:3000/mudancadefoco/newwindow'
    #encontramos a janela pelo find e confirmamos o conteudo da msg dentro da janela
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    #comando para fechar a janela
    windows.last.close
    sleep(2)
end

Quando('eu entro no alert e verifico faco a acao') do
  
end