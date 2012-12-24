source "http://rubygems.org"

gem "rails", "~> 3.2.2"

gem "mongoid",  "~> 3.0.15"

gem "jquery-rails",             "~> 2.1.3"
gem "devise",                   "~> 2.1.2"
gem "mongoid_slug",             "~> 2.0.1"
gem "mongoid_rails_migrations", "~> 1.0.0"

group :assets do
  gem "uglifier", ">= 1.0.3"
end

group :development do
  gem "mongoid_colored_logger", "~> 0.2.2"
end

group :development, :test do
  gem "capybara",           "~> 2.0.1"
  gem "rspec-rails",        "~> 2.12.0"
  gem "factory_girl_rails", "~> 4.1.0"
end

group :test do
  gem "simplecov",        "~> 0.7.1", :require => false
  gem "database_cleaner", "~> 0.9.1"
end