source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'
gem 'acts_as_list', '1.0.2'
gem 'aws-sdk-s3', '~> 1.14'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'jsonapi-serializer', '2.1.0'
gem 'jwt_sessions', '2.5.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'pundit', '~> 2.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'redis', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '6.1.0'
  gem 'ffaker', '2.17.0'
  gem 'pry', '0.13.1'
  gem 'pry-rails', '0.3.9'
  gem 'rails-controller-testing', '1.0.5'
  gem 'rspec_junit_formatter', '0.4.1'
  gem 'rspec-rails', '~> 3.6'
  gem 'rubocop', '0.90.0', require: false
  gem 'rubocop-performance', '1.8.0'
  gem 'rubocop-rails', '2.8.0'
  gem 'rubocop-rspec', '1.43.2', require: false
  gem 'shoulda-matchers', '4.4.1'
end

group :development do
  gem 'brakeman', '4.9.0'
  gem 'bullet', '6.1.0'
  gem 'bundler-audit', '0.7.0.1'
  gem 'database_consistency', '0.8.4', require: false
  gem 'fasterer', '~> 0.8.3', require: false
  gem 'listen', '~> 3.2'
  gem 'overcommit', '~> 0.53.0', require: false
  gem 'spring', '2.1.1'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'dox', '1.2.0', require: false
  gem 'simplecov', '0.19.0', require: false, group: :test
end
