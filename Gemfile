source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'mongoid'
gem 'rails', '~> 5.2.3'
gem 'puma', '~> 4.3'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
gem 'mongoid-grid_fs', github: 'ahoward/mongoid-grid_fs'
gem "mini_magick"

group :development, :test do
  gem 'pry'
  gem 'database_cleaner', '~> 1.4.1'
  gem 'rspec-rails'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'faker'
  gem 'factory_bot_rails'
  gem 'simplecov'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
