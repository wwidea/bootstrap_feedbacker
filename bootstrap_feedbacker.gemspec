# frozen_string_literal: true

require_relative "lib/bootstrap_feedbacker/version"

Gem::Specification.new do |spec|
  spec.name        = "bootstrap_feedbacker"
  spec.version     = BootstrapFeedbacker::VERSION
  spec.authors     = ["Aaron Baldwin", "Brightways Learning"]
  spec.email       = ["baldwina@brightwayslearning.org"]
  spec.homepage    = "https://github.com/wwidea/bootstrap_feedbacker"
  spec.summary     = "User feedback form in a Bootstrap modal."
  spec.description = "Bootstrap Feedbacker opens a modal window for users to send application feedback over email that includes the referring url."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.required_ruby_version = ">= 3.1.0"
  spec.add_dependency "rails", ">= 6.0.0"
end
