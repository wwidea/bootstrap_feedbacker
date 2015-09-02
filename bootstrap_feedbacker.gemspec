$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_feedbacker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_feedbacker"
  s.version     = BootstrapFeedbacker::VERSION
  s.authors     = ["David Gross"]
  s.email       = ["david.gross@daggerweb.org"]
  s.homepage    = "https://github.com/wwidea/bootstrap-feedbacker"
  s.summary     = %q{Sitewide Feedback form pinned to sidewall as verticle tab.}
  s.description = %q{Feedbacker provides a modal window with a button on side of every page on a site for users to send feedback to the site.}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "pry"

  s.add_dependency "rails", ">= 4.2.4"
  s.add_dependency 'sass-rails', '>= 5.0.0'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'bootstrap-sass'

  s.add_development_dependency "sqlite3"
end
