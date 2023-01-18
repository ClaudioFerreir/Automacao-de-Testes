Quando('eu divido dois numero {int} dividido por {int}') do |int, int2|
  @quociente = int / int2
end

Então('o resultado da divisão') do
  expect(@quociente).to eq 5
end

Quando('eu multiplico dois numero {int} vezes {int}') do |int, int2|
  @produto = int * int2
end

Entao('o resultado da mulplicação') do
  expect(@produto).to eq 20
end
