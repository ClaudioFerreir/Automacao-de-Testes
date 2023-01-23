class MapeandoListas < SitePrism::Page
  set_url '/buscaelementos/table'

  #elements :lista, 'tr > th' #pega os 3 elementos do th
  elements :lista, 'tr > td' #pega os dados todos os 24 elementos da tabela
end