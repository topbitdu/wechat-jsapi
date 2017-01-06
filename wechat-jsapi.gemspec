# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wechat/jsapi/version'

Gem::Specification.new do |spec|
  spec.name        = 'wechat-jsapi'
  spec.version     = Wechat::JSAPI::VERSION
  spec.authors     = [ 'Topbit Du' ]
  spec.email       = [ 'topbit.du@gmail.com' ]
  spec.summary     = 'Wechat JS API Library 微信JS API库'
  spec.description = 'Wechat JS API Library is a wrapper for calling Wechat JS APIs. 微信社交库封装了对微信JS API的调用。'
  spec.homepage    = 'https://github.com/topbitdu/wechat-jsapi'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = [ 'lib' ]

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'

  spec.add_dependency 'wechat-core', '~> 0.4'

end
