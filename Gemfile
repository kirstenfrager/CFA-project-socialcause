source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'paperclip-cloudinary'
gem 'omniauth-facebook'
gem 'friendly_id', '~> 5.1.0'
gem 'will_paginate', '~> 3.1.0'
gem 'jquery-datetimepicker-rails'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'stripe'
gem 'hirb'
gem 'materialize-form'
gem 'simple_form'
gem 'rolify'
gem 'pundit'
# gem 'instagram'
gem "paperclip", "~> 5.0.0"
gem 'materialize-sass'
gem 'devise'
gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem 'pry'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
