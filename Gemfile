source 'https://rubygems.org'

ruby '2.1.5'

gem 'rails', '4.2.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.4.1'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'

gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bower-rails', '~> 0.9.2'
gem 'angularjs-rails', '~> 1.3.15'

gem 'responders'
gem 'settingslogic'
gem 'tinymce-rails'
gem 'tinymce-rails-langs'

gem 'virtus'
gem 'enumerize'
gem 'dalli'
gem 'nokogiri'

gem 'devise', '~> 3.4'
gem 'cancan'

gem 'travis', '~> 1.7.6'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'puma', '~> 2.11.3'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
  gem 'pg', '~> 0.18.2'
end

group :development, :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'spring'
  gem 'awesome_print'
  gem 'rubocop', require: false

  gem 'pry'
  gem 'pry-nav'

  gem 'rspec-its'
  gem 'rspec-rails'
  gem 'rspec-collection_matchers'

  gem 'web-console', '~> 2.0'

  gem 'sqlite3'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', require: false
end
