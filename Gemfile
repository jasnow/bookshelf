source 'https://rubygems.org'

gem 'rake'
gem 'hanami',       '1.2.0'
gem 'hanami-model', '~> 1.2.0'

gem 'sqlite3'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'minitest'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end

gem 'sorbet', :group => :development
gem 'sorbet-runtime'
gem 'sorbet-rails'
gem 'redis' # for cache_store
gem 'dalli' # for cache_store
