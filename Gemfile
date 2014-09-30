source "https://rubygems.org"

ruby "2.1.2"

gem "airbrake"
gem "bourbon", "~> 3.2.1"
gem "coffee-rails"
gem "delayed_job_active_record"
gem "email_validator"
gem "flutie"
gem "high_voltage"
gem "i18n-tasks"
gem "jquery-rails"
gem "neat", "~> 1.5.1"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "rack-timeout"
gem "rails", "4.1.6"
gem "recipient_interceptor"
gem "sass-rails", "~> 4.0.3"
gem "simple_form"
gem "uglifier"
gem "unicorn"
gem 'haml-rails'
gem 'devise'
gem "devise-async"
gem 'devise-i18n'
gem 'activeadmin', github: 'activeadmin'
gem 'postmark-rails'
gem 'paperclip'
gem 'aws-sdk'
gem 'draper'
gem 'meta-tags'
gem 'magnific-popup-rails'
gem 'delayed_paperclip'
gem 'sitemap_generator'

group :development do
  gem "spring"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "awesome_print"
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.0.0"
  gem 'ffaker'
  gem 'meta_request'
  gem 'better_errors'
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
  gem 'simplecov', require: false
end

group :staging, :production do
  gem "newrelic_rpm", ">= 3.7.3"
  gem 'rails_12factor'
end
