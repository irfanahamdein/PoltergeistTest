require "capybara/cucumber"
require "rspec"
require 'capybara/poltergeist'

#Capybara.register_driver :chrome do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end

Capybara.register_driver :poltergeist do |app|

    options = {
                :js_errors => false,
                :timeout => 120,
                :debug => true,
                :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
                :inspector => true,
    }

   Capybara::Poltergeist::Driver.new(app, options)
end

Capybara.default_driver = :poltergeist
