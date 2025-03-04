# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gemspec

gem "bootstrap", "~> 4.4"
gem "dartsass-rails"
gem "guard"
gem "guard-shell"
gem "importmap-rails"
gem "puma"
gem "rubocop-capybara", require: false
gem "rubocop-minitest", require: false
gem "rubocop-packaging", require: false
gem "rubocop-performance", require: false
gem "rubocop-rails", require: false
gem "sprockets-rails"
gem "sqlite3"
gem "stimulus-rails"
gem "turbo-rails"

group :test do
  gem "capybara"
  gem "mocha"
  gem "selenium-webdriver"
end
