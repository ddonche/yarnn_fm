source 'https://rubygems.org'

ruby '2.6.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 6.1.0.alpha', github: 'rails/rails'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'dotenv-rails'

# gems I've installed my damn self
gem 'devise', git: 'https://github.com/plataformatec/devise.git'
gem "mini_magick"
gem 'carrierwave'
gem 'carrierwave-aws'
gem 'carrierwave-audio'
gem 'carrierwave-ffmpeg'
gem 'streamio-ffmpeg'
gem 'file_validators'
gem 'friendly_id'
gem 'rmagick'
gem 'kaminari'
gem 'font-awesome-sass'
gem 'stripe'
gem 'omniauth-stripe-connect'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'trix'
gem 'aws-sdk'
gem 'sprockets-rails'
gem 'bootstrap'
gem "recaptcha"
gem 'devise_invitable', '~> 2.0.0'
gem 'petergate'
gem 'pg'
gem 'elasticsearch-model'
gem 'elasticsearch-rails'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'sqlite3'
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'awesome_print'
  gem 'rb-readline'
end

group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
