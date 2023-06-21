# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent_ecs/version'

Gem::Specification.new do |spec|
  spec.name          = 'fluent-plugin-ecs-metadata-filter-v2'
  spec.version       = FluentECS::VERSION
  spec.authors       = ['Matusalem Andrdade']
  spec.email         = ['matusalem879@gmail.com']

  spec.summary       = 'Filter plugin to add AWS ECS metadata to fluentd events'
  spec.homepage      = 'https://github.com/matusalem-santos/fluent-plugin-ecs-metadata-filter-v2'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'fluentd', '>= 0.14.0'
  spec.add_dependency 'lru_redux', '~> 1.1'
  spec.add_dependency 'httparty', '~> 0.14.0'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'test-unit', '~> 3.2', '>= 3.2.3'
  spec.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.3'
  spec.add_development_dependency 'webmock', '~> 2.3', '>= 2.3.1'
end
