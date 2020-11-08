require 'spec_helper'
require 'dox'
ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)

abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'simplecov'
SimpleCov.start

require 'rspec/rails'
Dir[Rails.root.join('spec/support/*.rb')].sort.each { |f| require f }
Dir[Rails.root.join('spec/docs/**/*.rb')].sort.each { |file| require file }

Dox.configure do |config|
  config.header_file_path = Rails.root.join('spec/docs/v1/descriptions/header.md')
  config.desc_folder_path = Rails.root.join('spec/docs/v1/descriptions')
  config.headers_whitelist = %w[Accept X-Auth-Token Authorization]
end

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!

  config.after(:each, :dox) do |example|
    example.metadata[:request] = request
    example.metadata[:response] = response
  end
end
