Quando('eu uso um script') do
  visit '/outros/scroll'
  #comando para algo como um jquery na tela, neste caso vai scrollar na tela
  page.execute_script("window.scrollBy(0, 1500)")
  sleep(2)
  #comando para poder realizar alguma operacao na tela ex uma soma
  @result = page.evaluate_script('4 + 4');
  puts @result
end