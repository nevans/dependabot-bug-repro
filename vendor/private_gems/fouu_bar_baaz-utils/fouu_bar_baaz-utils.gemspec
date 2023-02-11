# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fouu_bar_baaz/utils/version'

Gem::Specification.new do |spec|
  spec.name          = "fouu_bar_baaz-utils"
  spec.version       = FouuBarBaaz::Utils::VERSION
  spec.authors       = ["nicholas a. evans"]
  spec.email         = ["<nevans@410labs.com>"]

  spec.summary       = %q{Various utility classes/modules used at FouuBarBaaz.}
  spec.homepage      = "https://github.com/fouu_bar_baaz"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host'
  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "dry-initializer"
  spec.add_dependency "fog-aws"

  spec.add_development_dependency "mmmmmmmmmm-dev" # not real name...
end
