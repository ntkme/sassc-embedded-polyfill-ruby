# frozen_string_literal: true

require_relative 'lib/sassc/embedded/version'

Gem::Specification.new do |spec| # rubocop:disable Gemspec/RequireMFA
  spec.name          = 'sassc-embedded'
  spec.version       = SassC::Embedded::VERSION
  spec.authors       = ['なつき']
  spec.email         = ['i@ntk.me']
  spec.summary       = 'Use dart-sass with SassC!'
  spec.description   = 'An embedded sass shim for SassC.'
  spec.homepage      = 'https://github.com/ntkme/sassc-embedded-shim-ruby'
  spec.license       = 'MIT'
  spec.metadata      = {
    'documentation_uri' => "https://rubydoc.info/gems/#{spec.name}/#{spec.version}",
    'source_code_uri' => "#{spec.homepage}/tree/v#{spec.version}",
    'funding_uri' => 'https://github.com/sponsors/ntkme'
  }

  spec.files = Dir['lib/**/*.rb'] + [
    'LICENSE',
    'README.md'
  ]

  spec.required_ruby_version = '>= 2.7.0'

  spec.add_runtime_dependency 'base64', '~> 0.1'
  spec.add_runtime_dependency 'sassc', '~> 2.0'
  spec.add_runtime_dependency 'sass-embedded', '~> 1.63'
end
