source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Repository Locale data
gem 'rails-i18n'
# Manage Procfile-based applications
gem 'foreman', '0.82.0'
# Manage Procfile-based applications
gem 'devise'
# Translation for the devise gem
gem 'devise-i18n'
# Bootstrap based admin theme SB Admin 2
gem 'bootstrap_sb_admin_base_v2'
# A library for generating fake data such names, addresses, and phones numbers
gem 'faker'
# O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
gem 'lerolero_generator'
# Markdown Lorem Ipsum generator
gem 'doctor_ipsum'
# Biblioteca de integração em Ruby para o Pagseguro
gem "pagseguro-oficial", "~> 2.5.0"

source 'https://rails-assets.org' do
	# https://github.com/twbs/bootstrap
	gem 'rails-assets-bootstrap', '3.3.7'
  # Bootstrap Notify, versatile notification library
  gem 'rails-assets-bootstrap.growl'
  # Wrappers for JavaScript alert(), confirm() and other flexible dialogs using Twitter's bootstrap framework http://bootboxjs.com
  gem 'rails-assets-bootbox'
  # Animate CSS
  gem 'rails-assets-animate-css'
  # Bootstrap Markdown
  gem 'rails-assets-bootstrap-markdown'
  # Marked
  gem 'rails-assets-marked'
end

# Help ActiveRecord::Enum feature to work fine with I18n and simple_form
gem 'enum_help'
# Minimal authorization through OO design and pure Ruby classes
gem 'pundit'
# Integration of RubyMoney - Money with Rails
gem 'money-rails'
# Easy file attachment management for ActiveRecord
gem 'paperclip', '~> 5.0.0'
# JQuery UI for the Rails asset pipeline
gem 'jquery-ui-rails'
# The safe Markdown parser, reloaded
gem 'redcarpet'
# FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord
gem 'friendly_id'
# If Turbolinks are not enough for you. Wiselinks makes your application work faster.
gem 'wiselinks'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
# Translations for the kaminari gem
gem  'kaminari-i18n'
# A Ruby Gem that wraps the functionality of jQuery Raty library, and provides optional IMDB style rating.
gem 'ratyrate'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Better error page for Rack apps
  gem "better_errors"
  gem "binding_of_caller"
  # Generate Entity-Relationship Diagrams
  gem 'rails-erd'
  # Rack Middleware for handling Cross-Origin Resource Sharing (CORS), which makes cross-origin AJAX possible.
  gem 'rack-cors', :require => 'rack/cors'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Catches mail and serves it through a dream.
  gem 'mailcatcher'
  # A mini view framework for console/irb that's easy to use, even while under its influence. Console goodies include a no-wrap table, auto-pager, tree and menu. http://tagaholic.me/hirb/
  gem 'hirb'
  # Remote multi-serve 
  gem 'capistrano', '~> 3.7'
  # Official Ruby on Rails specific tasks for Capistrano
  gem 'capistrano-bundler', '~> 1.2'
  # Bundler support for Capistrano 3.x
  gem 'capistrano-rails', '~> 1.2'
  # RVM support for Capistrano v3
  gem 'capistrano-rvm'
  # Unicorn for Capistrano v3
  gem 'capistrano3-unicorn'
end

group :production do
  # MySQL Adapter
  gem 'mysql2', '~> 0.3.18'
  # Use Unicorn as the app server
  gem 'unicorn'
  # Mailgun's Official Ruby Library
  gem 'mailgun-ruby', '~>1.1.4'
end
