# frozen_string_literal: true

# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'simplecov_json_formatter'
require 'simplecov'
require 'spec_helper'
require 'shoulda-matchers'
require_relative '../config/environment'

ENV['RAILS_ENV'] ||= 'test'

# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?

Rails.root.glob('spec/support/**/*.rb').sort_by(&:to_s).each { |f| require f }

require 'rspec/rails'

# Checks for pending migrations and applies them before tests are run.
# If you are not using ActiveRecord, you can remove these lines.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

# Configure SimpleCov
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::JSONFormatter,
  SimpleCov::Formatter::HTMLFormatter
])

SimpleCov.start do
  add_group 'Config', 'config'
  add_group 'Controllers', 'app/controllers'
  add_group 'Libs', 'lib'
  add_group 'Models', 'app/models'
  add_group 'Serializers', 'app/serializers'
  add_group 'Specs', 'spec'
end

# Configure Rspec
RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_paths = [
    Rails.root.join('spec/fixtures')
  ]

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # You can uncomment this line to turn off ActiveRecord support entirely.
  # config.use_active_record = false

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, type: :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://rspec.info/features/7-0/rspec-rails
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")

  # Configure Shoulda
  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end

  # Configure request helpers
  config.include Request::JsonHelpers, type: :request
end
