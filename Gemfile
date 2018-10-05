# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# base
gem 'rails', '~> 5.2.1'

# database
gem 'mysql2', '>= 0.4.4', '< 0.6.0'

# server
gem 'puma', '~> 3.11'

# view
gem 'bootstrap'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'popper_js'
gem 'sass-rails', '~> 5.0'
gem 'tether-rails'
gem 'uglifier', '>= 1.3.0'

# cache
gem 'bootsnap', '>= 1.1.0', require: false
# othres
gem 'devise'
gem 'sidekiq'
gem 'sinatra'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  # gem 'overcommit'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
