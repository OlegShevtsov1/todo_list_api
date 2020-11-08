source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'jsonapi-serializer'
gem 'jwt_sessions'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'pundit', '~> 2.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'redis', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec_junit_formatter'
  gem 'rspec-rails', '~> 3.6'
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec', require: false
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '~> 3.2'

  gem 'brakeman'
  gem 'bullet'
  gem 'bundler-audit'
  gem 'database_consistency', require: false
  gem 'fasterer', '~> 0.8.3', require: false
  gem 'overcommit', '~> 0.53.0', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'dox', require: false
  gem 'simplecov', require: false, group: :test
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
