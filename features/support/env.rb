require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/poltergeist'

if ENV['IN_BROWSER']
  # On demand: non-headless tests via Selenium/WebDriver
  # To run the scenarios in browser (default: Firefox), use the following command line:
  # RUN_IN_BROWSER=true bundle exec cucumber
  # or (to have a pause of 1 second between each step):
  # RUN_IN_BROWSER=true PAUSE=1 bundle exec cucumber
  Capybara.default_driver = :selenium
  AfterStep do
    sleep (ENV['PAUSE'] || 0).to_i
  end
else
  # DEFAULT: headless tests with poltergeist/PhantomJS
  puts " "
  puts "====== POLTERGEIST ======"
  puts " "
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app,
      window_size: [1280, 1024],
      phantomjs_options: ['--ignore-ssl-errors=yes','--ssl-protocol=tlsv1'],
      debug:       false
    )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
  Capybara.ignore_hidden_elements = true
  #Capybara.match = :one
  #Capybara.exact_options = true
  #Capybara.visible_text_only = true
  #Capybara.default_wait_time = 8  
  #Capybara.always_include_port = true
end

Capybara.default_selector = :css