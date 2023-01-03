lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'one_login/version'

Gem::Specification.new do |spec|
  spec.name        = "one_login"
  spec.version     = OneLogin::VERSION
  spec.summary     = "Ruby interface to the OneLogin API."
  
  spec.authors     = ["Junil Jacob"]
  spec.email       = ["juniljacob124@gmail.com"]
  spec.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.homepage    = "https://github.com/Healthicity/one_login"
  spec.license     = "MIT"
  
  spec.add_development_dependency 'webmock', '~> 3'
  spec.add_development_dependency 'rake', '~> 13'
  spec.add_development_dependency 'test-unit'
end
