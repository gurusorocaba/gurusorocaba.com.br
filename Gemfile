source "http://rubygems.org"

gem "rails", "~> 3.2.13"

gem "mongoid",  "~> 3.1.2"

gem "jquery-rails",             "~> 2.2.1"
gem "devise",                   "~> 2.2.3"
gem "mongoid_slug",             "~> 3.1.1"
gem "mongoid_rails_migrations", "~> 1.0.1"

group :assets do
  gem "uglifier", ">= 1.0.3"
end

group :development do
  gem "mongoid_colored_logger", "~> 0.2.3"
end

group :development, :test do
  gem "capybara",           "~> 2.1.0"
  gem "rspec-rails",        "~> 2.13.0"
  gem "factory_girl_rails", "~> 4.2.1"
end

group :test do
  gem "simplecov",        "~> 0.7.1", :require => false
  gem "database_cleaner", "~> 0.9.1"
end