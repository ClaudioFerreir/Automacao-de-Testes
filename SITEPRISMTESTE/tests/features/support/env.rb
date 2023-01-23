require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb' #carregamos o arquivo que criamos

World(PageObjects) #colocamos o nosso modulo como global assim podemos utiliza-lo em todo o nosso projeto

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://localhost:3000'
  config.default_max_wait_time = 5
end
