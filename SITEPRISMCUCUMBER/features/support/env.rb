require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.args << '--incognito'
    options.args << '--start-maximized'
    options.args << '--window-size=1420,835'
    options.args << '--ignnore-ssl-errors'
    options.args << '--disable-gpu'
    options.args << '--ignore-certificate-errors'
    options.args << '--disable-popup-blocking'
    options.args << '--disable-translate'
    options.args << '--acceptInsecureCerts=true'
    options.args << '--no-sandbox'
    options.args << '--disable-impl-side-painting'
    options.args << '--debug_level=3'   
    if ENV['HEADLESS']
        options.args << '--headless'
        options.args << '--disable-site-isolation-trials'
    end
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 90
    ##option = { browser: :chrome, desired_capabilities: caps, http_client: client }    #não funciona essa linha de código

    puts 'Raising driver'
    Capybara::Selenium::Driver.new(app, :browser => :chrome, :options => options)
end

Capybara.default_driver         = :my_chrome
Capybara.app_host               = URL
Capybara.default_max_wait_time  = 10