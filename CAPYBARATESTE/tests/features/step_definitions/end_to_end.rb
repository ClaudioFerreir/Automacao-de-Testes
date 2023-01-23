#forma de nao resetar a sessao apos cada cenario, importante quando desejamos fazer algo em sequencia
#assim podemos fazer algo de modo que um cenario depende do outro. Lembrar de mexer no .env

Quando('eu cadastro o usuario.') do
  visit '/users/new'
  fill_in(id: 'user_name', with: 'claudio')
  find('#user_lastname').set('ferreira')
  fill_in(id: 'user_email', with: 'claudioferreirajr@gmail.com')
  find('input[value="Criar"]').click
end

Entao('verifico se o usuario foi cadastrado com sucesso.') do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
end

Quando('eu edito o usuario.') do
  sleep(5)
  find('.btn.waves-light.blue').click
end

Entao('verifico se o usuario foi editado com sucesso.') do
  
end
