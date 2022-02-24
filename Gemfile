source 'https://rubygems.org'

# Ruby version
ruby '3.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '~> 6.1', '>= 6.1.4.6'
gem 'rails', '~> 7.0', '>= 7.0.2.2'
# Use Puma as the app server
gem 'puma', '~> 5.6', '>= 5.6.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.4'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2', '>= 5.2.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11', '>= 2.11.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.6'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #gem 'byebug', platform: :mri
  gem 'byebug', '~> 11.1', '>= 11.1.3'
  # Use sqlite3 as the database for Active Record
	# gem 'sqlite3'
  gem 'factory_bot_rails', '~> 6.2'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '~> 4.2'
  gem 'listen', '~> 3.7', '>= 3.7.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :production do
  # postgres for production
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# gem Devise: User Authentication
gem 'devise', '~> 4.8', '>= 4.8.1'
# gem CanCanCan: User Authentication
gem 'cancancan', '~> 3.3'
# gem will_paginate 3.1.1: Pagination
gem 'will_paginate', '~> 3.3', '>= 3.3.1'
# Rails Controller Testing
gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
# gem stripe: Payment Processing API
gem 'stripe', '~> 5.44'
# gem brakeman
gem 'brakeman', :require => false
# gem dalli: caching on heroku and rails
gem 'dalli', '~> 3.2', '>= 3.2.1'
# gem connection_pool: supports multi-threading for dalli gem
gem 'connection_pool', '~> 2.2', '>= 2.2.5'
# gem redis-rails: redis
gem 'redis-rails', '~> 5.0', '>= 5.0.2'
#gem newrelic_rpm: new relic
gem 'newrelic_rpm', '~> 8.4'
# Postgres SQL
gem 'pg', '~> 1.3', '>= 1.3.2'
