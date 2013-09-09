$:.push File.expand_path("../lib", __FILE__)
require 'rubeque/version'

Gem::Specification.new do |spec|
  spec.name          = "rubeque"
  spec.version       = Rubeque::VERSION
  spec.authors       = ["Alexey Kuznetsov"]
  spec.email         = ["innercloister@gmail.com"]
  spec.summary       = %q{solutions of rubeque problems}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
    spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
