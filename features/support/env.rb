require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'faker'
require 'cpf_faker'



Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://the-internet.herokuapp.com'
end
