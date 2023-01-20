Quando('eu faco cadastro') do
  visit('/users/new')
  fill_in(id: 'user_name', with: 'claudio') #preenche o campo especificado - modo 1
  find('#user_lastname').set('ferreira junior') #preenche o campo especificado - modo 2
  find('#user_email').send_keys('claudioferreirajr@gmail.com') #preenche o campo especificado - modo 3
  fill_in(id: 'user_address', with: 'rua 12') 
  find('#user_university').set('descomplica') 
  find('#user_profile').send_keys('qa')
  find('#user_gender').set('masculino') 
  find('#user_age').send_keys('42')
  find('input[value="Criar"]').click
  sleep(5)
end

Entao('verifico se fui cadastrado') do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
end