$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_feedbacker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_feedbacker"
  s.version     = BootstrapFeedbacker::VERSION
  s.authors     = ['Aaron Baldwin', 'Brightways Learning']
  s.email       = ["baldwina@brightwayslearning.org"]
  s.homepage    = "https://github.com/wwidea/bootstrap_feedbacker"
  s.summary     = %q{User feedback form in a Bootstrap modal.}
  s.description = %q{Bootstrap Feedbacker opens a modal window for users to send application feedback over email that includes the referring url.}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails',         '>= 5.0'
  s.add_dependency 'sassc-rails',   '>= 2.1'
  s.add_dependency 'jquery-rails',  '>= 4.0.4'
  s.add_dependency 'bootstrap',     '>= 4.1.1'
end
