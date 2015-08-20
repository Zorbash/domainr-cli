lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'domainr/cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'domainr-cli'
  spec.version       = Domainr::CLI::VERSION
  spec.authors       = ['Dimitris Zorbas']
  spec.email         = ['dimitrisplusplus@gmail.com']
  spec.description   = 'Command line interface to https://domainr.com/'
  spec.summary       = 'A cli utility to lookup domains powered by Domainr'
  spec.homepage      = 'https://github.com/Zorbash/domainr-cli'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb']
  spec.executables   = 'domainr-cli'
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'

  spec.add_dependency 'domainr'
  spec.add_dependency 'thor', '~> 0.19'
  spec.add_dependency 'awesome_print'
  spec.add_dependency 'colorize', '> 0.7.5'
  spec.add_dependency 'hirb'
end
