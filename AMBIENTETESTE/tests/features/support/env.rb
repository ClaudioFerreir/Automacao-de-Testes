require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

AMBIENTE = ENV['AMBIENTE'] #pode ser passado atraves do cucumber.yml um valor de homolog ou producao 

CONFIG = YAML.load_file(File.dirname(__FILE__) +  "/ambientes/#{AMBIENTE}.yml") #carrega o arquivo homolog.yml ou producao a depender do valor passado

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['url_padrao']
  #CONFIG['user'] #assim chamamos uma variavel de um yaml, neste caso variavel user
  config.default_max_wait_time = 5
end