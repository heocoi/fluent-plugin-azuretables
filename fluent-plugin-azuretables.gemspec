# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-azuretables"
  spec.version       = "0.0.1"
  spec.authors       = ["Anh Phong"]
  spec.email         = ["dev.hibiki@gmail.com"]
  spec.summary       = %q{Fluent plugin to add event record into Azure Tables Storage.}
  spec.description   = %q{Fluent plugin to add event record into Azure Tables Storage.}
  spec.homepage      = "https://github.com/heocoi/fluent-plugin-azuretables"
  spec.licenses      = ["MIT"]
  spec.has_rdoc      = false

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd", '~> 0'
  spec.add_dependency "azure", '~> 0'
  spec.add_dependency "msgpack", '~> 0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
