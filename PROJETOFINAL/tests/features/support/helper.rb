module Helper
  def take_screenshot(nome_arquivo, resultado)
    caminho_arquivo = "report/screenshots/test_#{resultado}"
    foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
    page.save_screenshot(foto)
    attach(foto, 'image/png')
  end
end