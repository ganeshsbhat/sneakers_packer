# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sneakers_packer/version'

Gem::Specification.new do |spec|
  spec.name          = "sneakers_packer"
  spec.version       = SneakersPacker::VERSION
  spec.authors       = ["vincent"]
  spec.email         = ["vincent@boohee.com"]

  spec.summary       = %q{SneakersPacker is a gem for using sneakers to 3 message communication patterns job message, broadcast and RPC(remote procedure call).}
  spec.description   = %q{SneakersPacker is a gem for using sneakers to 3 message communication patterns job message, broadcast and RPC(remote procedure call).}
  spec.homepage      = "."

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://iboohee.cn"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sneakers", "~> 2.3.5"
  spec.add_dependency "multi_json"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end