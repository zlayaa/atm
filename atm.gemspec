# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'atm/version'

Gem::Specification.new do |spec|
  spec.name          = 'atm'
  spec.version       = Atm::VERSION
  spec.authors       = ['Viktoria']
  spec.email         = ['viktoriazlayaa@gmail.com']

  spec.summary       = 'ATM'
  spec.description   = 'ATM'
  spec.homepage      = 'https://github.com/zlayaa/atm'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/zlayaa/atm'
  spec.metadata['changelog_uri'] = 'https://github.com/zlayaa/atm'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'byebug', '~> 9.0', '>= 9.0.6'
end
