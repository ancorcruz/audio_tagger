# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'audio_tagger/version'

Gem::Specification.new do |spec|
  spec.name          = 'audio_tagger'
  spec.version       = AudioTagger::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Ancor Cruz']
  spec.email         = ['hello@ancorcruz.com']
  spec.summary       = %q{a common interface for audio file metadata tagging}
  spec.description   = <<-EOF
    AudioTagger is a wrapper around the TagLib audio tagging library. It
    provides a simple and consistent API for all audio file formats and hides
    the details of each metadata implementation to the developer.
  EOF
  spec.homepage      = 'https://github.com/ancorcruz/audio_tagger'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
end
