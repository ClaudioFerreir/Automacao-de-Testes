Quando('interajo com dropdown e select') do
  visit('/buscaelementos/dropdowneselect')
  find('.btn.dropdown-button').click # abre o dropbox
  find('#dropdown3').click # abre o dropbox

  select 'Chrome', from: 'dropdown' # selecionar elementos contidos em um select - modo 1
  sleep(2)
  find('option[value="2"]').select_option # selecionar elementos contidos em um select - modo 2
end

Quando('preencho o autocomplete') do
  visit('/widgets/autocomplete')
  find('#autocomplete-input').set 'rio de ' #preenche ate a parte do texto que vc quer
  sleep(2)
  find('ul', text: 'Rio de Janeiro').click  #clica na opcao desejada que ira aparecer na tela
  sleep(5)
end