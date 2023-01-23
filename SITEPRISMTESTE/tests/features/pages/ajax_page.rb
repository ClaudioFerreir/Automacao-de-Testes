class AjaxPage < SitePrism::Page
  set_url '/buscaelementos/botoes'

  element :botao, '#teste'
  element :mensagem, '#div1'

  def clicar_botao
    wait_until_botao_visible #wait_until_[elemento]_visible ele aguarda ate o tempo default do .env para o elemento aparecer na tela
    botao.click
  end
end