ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?

## Simplecov
require "simplecov"
# save to CircleCI"s artifacts directory if we"re on CircleCI
SimpleCov.coverage_dir(File.join(ENV["CIRCLE_ARTIFACTS"], "coverage")) if ENV["CIRCLE_ARTIFACTS"]
SimpleCov.start "rails" do
  add_filter "/uploaders/"
end

require "rake"
require "spec_helper"
require "rspec/rails"
require "shoulda/matchers"
require "capybara/rails"
require "capybara/rspec"
require "capybara/poltergeist"
require "rspec/retry"

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |file| require file }

module Features
  include Formulaic::Dsl
end

RSpec.configure do |config|
  # circle ci crashes the first time.
  config.verbose_retry = true
  config.default_retry_count = 2
  config.exceptions_to_retry = [Net::ReadTimeout]

  config.order = "random"
  config.color = true
  config.infer_base_class_for_anonymous_controllers = false
  config.raise_errors_for_deprecations!
  
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  
  config.include Devise::Test::ControllerHelpers, type: :controller  
  config.include FactoryGirl::Syntax::Methods
  config.include Capybara::DSL
  config.include ResponsiveHelpers
  
  config.global_fixtures = :all
  config.use_transactional_fixtures = false
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    set_host ENV.fetch("DOMAIN")
  end
 
  config.before(:each) do
    @request.host = "www.#{ENV.fetch("DOMAIN")}" if @request.present?
    DatabaseCleaner.strategy = :transaction
  end
 
  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end
 
  config.before(:each) do
    DatabaseCleaner.start
  end
 
  config.after(:each) do
    DatabaseCleaner.clean
  end
  
  Shoulda::Matchers.configure do |c|
    c.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end

  # config.before(:each) do
  #   Capybara.page.driver.browser.manage.window.maximize if ENV["DEBUG"].eql?("true")
  # end

  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

ActiveRecord::Migration.maintain_test_schema!
