#require 'capybara/cucumber' #aula 44 desativamos este require
require 'capybara' #aula 44 end-to-end
require 'capybara/dsl' #aula 44 end-to-end
require 'capybara/rspec/matchers' #aula 44 end-to-end
require 'selenium-webdriver'

World(Capybara::DSL) #aula 44 end-to-end
World(Capybara::RSpecMatchers) #aula 44 end-to-end

Capybara.configure do |config|
  #selenium->padrao(firefox) selenium_chrome->chrome selenium_chrome_healess->chrome sem gpu
  config.default_driver = :selenium_chrome 
  config.app_host = 'http://localhost:3000'
  config.default_max_wait_time = 5
end