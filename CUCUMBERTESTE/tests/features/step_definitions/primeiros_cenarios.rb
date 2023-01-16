Quando('eu somo {int} mais {int}') do |valor1, valor2|
  @soma = valor1 + valor2
end

Então('o resultado tem que ser {int}') do |resultado|
# Então('o resultado tem que ser {float}') do |float|
  expect(@soma).to eq resultado
  puts @soma
  puts resultado
end
