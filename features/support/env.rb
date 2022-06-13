require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'
include RSpec::Matchers

Environment = ENV['URL']
World(Page)

# Definindo as configurações do Capybara
Capybara.configure do |config|
  config.default_driver = :selenium_chrome # Selenium com driver do chrome
  config.app_host = Environment # Pagina que será testada
  config.default_max_wait_time = 5 # Tempo max por um elemento em tela
end