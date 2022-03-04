# frozen_string_literal: true

require "English"

require File.expand_path("lib/pry-clipboard2/version", __dir__)

Gem::Specification.new do |gem|
  gem.authors = ["Rob Galanakis"]
  gem.description = "pry-clipboard2 allows you to copy Pry results and history to your clipboard."
  gem.email         = ["rob.galanakis@gmail.com"]
  gem.summary       = "pry clipboard utility"
  gem.homepage      = "https://github.com/lithictech/pry-clipboard"
  gem.licenses = "MIT"
  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.metadata["rubygems_mfa_required"] = "true"
  gem.name = "pry-clipboard2"
  gem.platform = Gem::Platform::RUBY
  gem.require_paths = ["lib"]
  gem.required_ruby_version = ">= 2.7"
  gem.version = PryClipboard::VERSION

  gem.add_dependency "clipboard", "~> 1"
  gem.add_dependency "pry", "~> 0"

  gem.add_development_dependency("rubocop", "~> 1.11")
end
