source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 7.0.3', '>= 7.0.3.1'
gem 'sprockets-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'pundit'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'stimulus-rails'
gem 'jbuilder'
# gem 'redis', '~> 4.0'

gem 'devise', '~> 4.2'
gem 'simple_form'
gem 'nested_form'
gem 'spring'
gem 'bootstrap', '~> 4.1.3'
gem 'kaminari'
gem 'bundler-audit'
gem 'brakeman'
gem 'administrate'
gem 'bourbon'
gem 'carrierwave', '~> 1.0'
gem 'carrierwave-aws', '~> 1.0', '>= 1.0.2'
gem 'mini_magick', '~> 4.6'
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
gem 'cancan'
gem 'cancancan'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'byebug'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'pry-rails'
  gem 'faker'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 4.1.0'
  gem 'shoulda-matchers', '~> 4.0.0rc1'
end

group :development do
  gem 'web-console'
  gem 'rubocop', '~> 1.36', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-performance', '~> 1.0'
  gem 'rubocop-rspec', '~> 2.0'
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

ruby '3.1.2'