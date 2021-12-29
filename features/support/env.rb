require "capybara"
require "cucumber"
require "selenium-webdriver"
require "rspec"
require "capybara/cucumber"
require "faker"

EL = YAML.load_file(File.join(Dir.pwd,"data/elementos/elementos.yaml"))
case ENV["BROWSER"]
when "chrome"
  @driver = :selenium_chrome
when "firefox"
  @driver = :selenium
else
  p "Browser inválido"
end

Capybara.configure do |config|
    config.default_driver=@driver
    config.default_max_wait_time = 15
    # config.add
end 
