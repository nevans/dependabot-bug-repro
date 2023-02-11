# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'couchrb/version'

Gem::Specification.new do |spec|
  spec.name          = "couchrb"
  spec.version       = CouchRb::VERSION
  spec.authors       = ["nicholas a. evans"]
  spec.email         = ["<nevans@410labs.com>"]

  spec.summary       = %q{CouchDB client library.}
  spec.description   = %q{CouchRb provides a ruby-flavored interface to CouchDB.  The basic resources try to follow the CouchDB API as closely as possible, but many additional features are available.}
  spec.homepage      = "https://github.com/410labs/couchrb"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ice_nine"
  spec.add_dependency "equalizer"
  spec.add_dependency "deep_dup"
  spec.add_dependency "addressable",        "> 2.5"
  spec.add_dependency 'typhoeus',           "> 1.1"
  spec.add_dependency "faraday",            "> 0.15.0", "< 2.0.0"
  spec.add_dependency "faraday_middleware", "> 0.13.0"

  # TODO: remove all usages of active_support/core_ext
  # TODO: replace log subscriber and notifications
  # TODO: don't use HashWithIndifferentAccess
  spec.add_dependency "activesupport", "> 3.2.0"

  spec.add_development_dependency "rake",      "> 12.0"
  spec.add_development_dependency "rspec",     "> 3.5"
  spec.add_development_dependency "rspec-its", "> 1.2"
  spec.add_development_dependency "rspec-collection_matchers", "> 1.1"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "pry",       "> 0.10.4"

end
