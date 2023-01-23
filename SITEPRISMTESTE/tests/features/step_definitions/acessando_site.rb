Quando('acesso a url') do
  #instaciamos e carregamos a pagina do PageObject
  @home = PaginaInicial.new
  @home.load
  sleep(5)
end

Entao('verifico se estou na pagina inicial') do
  expect(page).to have_current_path('http://localhost:3000/treinamento/home', url: true)
end