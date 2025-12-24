# frozen_string_literal: true

require_relative 'lib/faraday/mashify/version'

Gem::Specification.new do |spec|
  spec.name = 'faraday-mashify'
  spec.version = Faraday::Mashify::VERSION
  spec.authors = ['sue445']
  spec.email = ['sue445@sue445.net']

  spec.summary = 'Faraday middleware for wrapping responses into Hashie::Mash'
  spec.description = <<~DESC
    Faraday middleware for wrapping responses into Hashie::Mash.
  DESC
  spec.license = 'MIT'

  github_uri = "https://github.com/sue445/#{spec.name}"

  spec.homepage = github_uri

  spec.metadata = {
    'bug_tracker_uri' => "#{github_uri}/issues",
    'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
    'documentation_uri' => 'https://sue445.github.io/faraday-mashify/',
    'homepage_uri' => spec.homepage,
    'source_code_uri' => github_uri,
    'wiki_uri' => "#{github_uri}/wiki",
    'rubygems_mfa_required' => 'true'
  }

  spec.files = Dir['lib/**/*', 'README.md', 'LICENSE.md', 'CHANGELOG.md']

  spec.required_ruby_version = '>= 2.7'

  spec.add_dependency 'faraday', '~> 2.0'
  spec.add_dependency 'hashie'

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.21.0'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'yard'

  spec.add_development_dependency 'rubocop', '~> 1.74'
  spec.add_development_dependency 'rubocop_auto_corrector'
  spec.add_development_dependency 'rubocop-packaging', '~> 0.6'
  spec.add_development_dependency 'rubocop-performance', '~> 1.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 3.5'
end
