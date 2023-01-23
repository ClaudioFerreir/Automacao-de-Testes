Quando('eu faco o upload de um arquivo') do
  visit '/outros/uploaddearquivos'
  #por ordem passamos o id e o endereco
  #attach_file('upload', '/home/claudioferreir/Automacao-de-Testes/CAPYBARATESTE/tests/features/files/arara.jpg', make_visible: true) #o elemento nao esta visivel na pagina
  
  #outro modo para passar o nosso endereco do arquivo
  @foto = File.join(Dir.pwd, 'features/files/arara.jpg') #Dir.pwd carrega o endereco atual da nossa pasta
  attach_file('upload', @foto, make_visible: true )
  sleep(4)
end