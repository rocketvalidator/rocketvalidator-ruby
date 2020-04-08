require_relative 'lib/rocketvalidator/version'

Gem::Specification.new do |spec|
  spec.name          = "rocketvalidator"
  spec.version       = Rocketvalidator::VERSION
  spec.authors       = ["Jaime Iniesta"]
  spec.email         = ["jaimeiniesta@gmail.com"]

  spec.summary       = "Official Rocket Validator API client."
  spec.homepage      = "https://docs.rocketvalidator.com/api"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["source_code_uri"] = "https://github.com/rocketvalidator/rocketvalidator-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/rocketvalidator/rocketvalidator-ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'json_api_client', '~> 1.16', '>= 1.16.1'
end
