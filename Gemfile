source "http://rubygems.org"

gem "rails", "3.1.3"

# Bundle edge Rails instead:
# gem "rails",     :git => "git://github.com/rails/rails.git"

group :assets do
  gem "uglifier"
end

gem "mongoid", "2.3.4"
gem "bson_ext", "1.5.1"

gem "jquery-rails"
gem "devise", "1.5.2"
gem "mongoid_slug", "0.8.3"
gem "mongoid_rails_migrations"

group :production do
  gem "execjs", "~> 1.2.12"
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