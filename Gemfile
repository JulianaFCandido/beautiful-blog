# frozen_string_literal: true

source 'https://rubygems.org'

gem 'bootsnap', require: false
gem 'devise'
gem 'image_processing', '~> 1.2'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'psych', '~> 5.2.0'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.2.1', '>= 7.2.1.2'
gem 'reek', '~> 6.3.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :development, :test do
  gem 'brakeman', require: false
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'erb_lint', require: false
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rubocop-factory_bot', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rspec_rails', require: false
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'database_cleaner-active_record', '~> 2.0'
  gem 'shoulda-matchers', '~> 4.5'
  gem 'simplecov_json_formatter', '~> 0.1.4', require: false
  gem 'simplecov', '~> 0.21.2', require: false
end
