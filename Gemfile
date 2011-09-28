source "http://rubygems.org"

gem "rails", "3.1.0"

# Bundle edge Rails instead:
# gem "rails",     :git => "git://github.com/rails/rails.git"

group :assets do
  gem "uglifier"
end

gem "json"
gem "jquery-rails"

gem "mongoid", "2.2.1"
gem "bson_ext", "1.4"

gem "devise", "1.4.7"
gem "mongoid_slug", "0.8.2"
gem "will_paginate", "~> 3.0.pre2"
gem "mongoid_rails_migrations"

group :production do
  gem "execjs", "~> 1.2.9"
  gem "therubyracer", "~> 0.9.4"
end

group :development, :test do
  gem "ruby-debug19"
  gem "rspec-rails", "~> 2.6.0"
  gem "capybara"
  gem "simplecov", :require => false
  gem "factory_girl_rails"
  gem "ffaker"
  gem "ZenTest"
  gem "database_cleaner"
  
  # Pretty printed test output
  gem "turn", :require => false
end