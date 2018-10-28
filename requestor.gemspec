Gem::Specification.new do |s|
  s.name = 'requestor'
  s.version = '0.3.0'
  s.summary = 'Reads a gem (under development) from an HTTP location. ' + 
      'Ideal for working on a gem in the development environment.'
    s.authors = ['James Robertson']
  s.files = Dir['lib/requestor.rb'] 
  s.add_runtime_dependency('rxfhelper', '~> 0.9', '>=0.9.1')
  s.signing_key = '../privatekeys/requestor.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/requestor'
  s.required_ruby_version = '>= 2.1.2'
end
