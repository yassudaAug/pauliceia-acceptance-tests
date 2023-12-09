require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://pauliceia.unifesp.br/portal'
    config.default_max_wait_time = 5
end