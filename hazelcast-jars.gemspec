# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hazelcast/jars/version'

Gem::Specification.new do |spec|
  spec.name          = 'hazelcast-jars'
  spec.version       = Hazelcast::Jars.gem_version
  spec.authors       = ['Adrian Madrid']
  spec.email         = %w( aemadrid@gmail.com )
  spec.description   = %q{All the necessary Hazelcast jars in one place}
  spec.summary       = %q{All the necessary Hazelcast jars in one place}
  spec.homepage      = 'http://github.com/aemadrid/hazelcast-jars'
  spec.license       = 'MIT'
  spec.platform      = 'jruby'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w( lib )

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
