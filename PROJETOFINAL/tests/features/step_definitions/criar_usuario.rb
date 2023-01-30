Quando('eu cadastro meu usuario') do
  user.load
  
  user.criar_usuario

  sleep(5)
end

Entao('eu verifico se o usuario foi cadastrado') do
  
end