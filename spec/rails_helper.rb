require 'spec_helper'
require 'rails/mongoid'
require 'database_cleaner'
require 'simplecov'
require 'mongoid-rspec'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  config.include FactoryBot::Syntax::Methods

  config.include Mongoid::Matchers, type: :model
  config.include Mongoid::Matchers, type: :mongoid_model

  config.include RequestSpecHelper
  config.include ControllerSpecHelper

  DatabaseCleaner[:mongo_mapper].strategy = :truncation

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end
