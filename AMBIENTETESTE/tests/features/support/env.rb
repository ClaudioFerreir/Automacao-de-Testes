require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'

# Variavel para o nome do ambiente
BROWSER = ENV['BROWSER']
# Variavel para o nome do browser
AMBIENTE = ENV['AMBIENTE'] #pode ser passado atraves do cucumber.yml um valor de homolog ou producao 
# Configuracao para dizer o caminho do ambiente a se usar
CONFIG = YAML.load_file(File.dirname(__FILE__) +  "/ambientes/#{AMBIENTE}.yml") #carrega o arquivo homolog.yml ou producao a depender do valor passado

World(Helper)

# Configura o tipo de browser
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    option = ::Selenium::WebDriver::Chrome::Options.new(args: ['--disable-infobars', 'window-size=1600,1024'])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
  elsif BROWSER.eql?('chrome_headless')
    option = ::Selenium::WebDriver::Chrome::Options.new(args: ['--headless', '--disable-gpu', '--no-sandbox', '--window-size=1600,1024'])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, browser: :firefox, marionette: true)
  elsif BROWSER.eql?('firefox_headless')
    option = ::Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: option)
    
  #outras opcoes de browsers
  #elsif BROWSER.eql?('ie')
  #  Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  #elsif BROWSER.eql?('safari')
  #  Capybara::Selenium::Driver.new(app, :browser => :safari)
  #elsif BROWSER.eql?('poltergeist')
  #  options = { js_errors: false }
  #  Capybara::Selenium::Driver.new(app, options)
  end
end



Capybara.configure do |config|
  config.default_driver = :selenium #este selenium esta subscrito com a nossa funcao para outros navegadores. Por padrao, selenium -> roda o firefox, selenium_chrome -> roda o chrome e selenium_chrome_headless roda sem abrir o navegador. OBS. Normalmente subescrevemos so o a opcao selenium.
  config.app_host = CONFIG['url_padrao']
  #CONFIG['user'] #assim chamamos uma variavel de um yaml, neste caso variavel user
  config.default_max_wait_time = 5
  Capybara.page.driver.browser.manage.window.maximize #abre a janela maximizada
end
