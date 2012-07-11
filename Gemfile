source 'https://rubygems.org'

gem 'rails', '3.2.6'

gem 'pg'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'haml-rails'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'ruby_gntp'
  gem 'rails_best_practices'
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"
end

group :test do
  gem "factory_girl_rails", "~> 3.5.0"
end
