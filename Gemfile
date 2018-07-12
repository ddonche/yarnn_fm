source 'https://rubygems.org'

ruby '2.3.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.7'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sprockets', '~> 3.7.2'
gem 'dotenv-rails', '~> 2.5'

# gems I've installed my damn self
gem 'devise', '~> 4.2'
gem 'mini_magick'
gem 'carrierwave'
gem 'carrierwave-aws', '~> 1.3'
gem 'carrierwave-audio', '~> 1.0', '>= 1.0.8'
gem 'carrierwave-ffmpeg', '~> 1.0'
gem 'streamio-ffmpeg', '~> 3.0', '>= 3.0.2'
gem 'file_validators'
gem 'friendly_id', '~> 5.1.0'
gem 'rmagick', '~> 2.16'
gem 'will_paginate', '~> 3.1.0'
gem 'acts-as-taggable-on', '~> 5.0'
gem 'font-awesome-sass', '~> 4.2.0'
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
gem 'trix'
gem 'aws-sdk', '~> 3'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]