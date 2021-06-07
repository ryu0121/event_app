source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.7'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'hamlit-rails', '~> 0.2.3'
gem 'omniauth', '~> 1.9.1'
gem 'omniauth-github', '~> 1.4.0'
gem 'omniauth-rails_csrf_protection', '~> 0.1.2'
gem 'rails-i18n', '~> 6.0.0'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'active_storage_validations', '~> 0.8.8'
gem 'kaminari', '~> 1.2.0'
gem 'ransack'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 5.0.0'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end