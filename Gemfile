source "http://rubygems.org"

gem "rails", "~> 3.2.2"

# Bundle edge Rails instead:
# gem "rails",     :git => "git://github.com/rails/rails.git"

group :assets do
  gem "uglifier"
end

gem "mongoid", "~> 2.4.5"
gem "bson_ext", "~> 1.6.0"

gem "jquery-rails"
gem "devise", "1.5.3"
gem "mongoid_slug", "0.9"
gem "mongoid_rails_migrations"

group :production do
  gem "execjs"
end

group :development, :test do
  gem "rspec-rails"
end

group :test do
  gem "capybara"
  gem "simplecov", :require => false
  gem "factory_girl_rails"
  gem "ffaker"
  gem "ZenTest"
  gem "database_cleaner"
end