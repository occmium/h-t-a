source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Token based authentication for Rails JSON APIs.
gem 'devise_token_auth'

# ActiveModelSerializers brings convention over configuration to your JSON generation.
gem 'active_model_serializers', '~> 0.10.0'

# Acts As Votable is a Ruby Gem specifically written for Rails/ActiveRecord models.
gem 'acts_as_votable'

# Use the graphql-ruby gem for crafting our GraphQL API
gem "graphql", "~> 1.9"

# RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data.
gem 'rails_admin', '~> 2.0'

group :development, :test do
  # Call 'pry-rails' anywhere in the code to stop execution and get a debugger console
  # gem 'pry', git: 'https://github.com/pry/pry.git', ref: '272b3290b5250d28ee82a5ff65aa3b29b825e37b'
  gem 'byebug'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

