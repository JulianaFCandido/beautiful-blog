# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rails', '~> 7.2.1', '>= 7.2.1.1'
gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[ windows jruby ]
gem 'bootstrap', '~> 5.3.3'
gem 'bootsnap', require: false
gem 'devise', '~> 4.9.4'

group :development, :test do
  gem 'debug', platforms: %i[ mri windows ], require: 'debug/prelude'
  gem 'brakeman', '~> 6.2.2'
  gem 'rubocop-rails-omakase'
  gem 'rspec-rails'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end
