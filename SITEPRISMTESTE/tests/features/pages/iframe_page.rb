
class PaginaIframe < SitePrism::Page
  #1. mapear elementos do iframe parecido com o que fizemos com o section na aula anterior 
  element :nome, '#first_name'
  element :ultimo_nome, '#last_name'
end

class PaginaPadrao < SitePrism::Page
  set_url '/mudancadefoco/iframe'
  #2. mapear o iframe
  iframe :preencher_campo, PaginaIframe, '#id_do_iframe'
end