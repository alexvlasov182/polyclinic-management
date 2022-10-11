source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.3', '>= 7.0.3.1'
gem 'sprockets-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'sass-rails', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'redis', '~> 4.0'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'byebug'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'pry-rails'
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

gem 'devise', '~> 4.2'
gem 'simple_form'
gem 'spring'
gem 'bootstrap', '~> 5.2', '>= 5.2.1'