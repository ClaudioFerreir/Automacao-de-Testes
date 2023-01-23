Quando('mapeio uma tabela.') do
  @lista_de_elementos = MapeandoListas.new

  @lista_de_elementos.load #carregar a url para pegar os elementos

  puts @lista_de_elementos.lista.size #mostra o tamanho do array de elementos
  puts @lista_de_elementos.lista[0].text #pega o texto do primeiro elemento

  expect(@lista_de_elementos.lista.size).to eql 24 # comparar o resultado

  @lista_de_elementos.lista.each do |element|
    puts element.text
  end
end