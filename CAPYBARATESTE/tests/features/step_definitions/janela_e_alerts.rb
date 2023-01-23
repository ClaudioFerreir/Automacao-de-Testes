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
  visit '/mudancadefoco/alert'
  #alert simples somente
  find('button[onclick="jsAlert()"]').click
  sleep(2)
  page.accept_alert
  sleep(2)

  #alert confimar ou cancelar
  find('button[onclick="jsConfirm()"]').click
  sleep(2)
  page.dismiss_confirm #para aceitar e o 'accept_confirm' e nao o 'dismiss_confirm'
  sleep(2)
  
  #prompt com espaco para inserir dados 
  find('button[onclick="jsPrompt()"]').click
  sleep(2)
  page.accept_prompt(with: 'Claudio Ferreira') #aceita o prompt e preenche com o que desejamos
  #esta opcao abaixo cancela o prompt
  #page.dismiss_prompt 

  sleep(2)
end