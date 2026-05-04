source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.3"

gem "sqlite3", ">= 1.6"
gem "puma"
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false
gem "tzinfo-data", platforms: %i[mswin mswin64 mingw x64_mingw jruby]

# ✅ AI integration
gem "ruby-openai"

# ✅ Resume PDF parsing
gem "pdf-reader"

# ✅ Env variables
gem "dotenv-rails"

# ✅ Background jobs
gem "sidekiq"
gem "redis"

# Dev tools
group :development, :test do
  gem "debug"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end