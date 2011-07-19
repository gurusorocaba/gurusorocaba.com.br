source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'json'
gem 'uglifier'
gem 'jquery-rails'

gem "mongoid", "2.0.2"
gem "bson_ext", "1.3.1"

gem "devise", "1.4.2"
gem "mongoid_slug", "0.8.1", :require => "mongoid/slug"
gem "will_paginate", "~> 3.0.pre2"

group :production do
  gem "execjs", "~> 1.2.0"
  gem "therubyracer", "~> 0.9.2"
end

group :development, :test do
  gem "ruby-debug19"
  gem "rspec-rails", "~> 2.6.0"
  gem "capybara"
  gem "simplecov", :require => false
  gem "factory_girl_rails"
  gem "ffaker"
  #gem "colorific"
  gem "ZenTest"
  gem "database_cleaner"
  
  # Pretty printed test output
  gem "turn", :require => false
end