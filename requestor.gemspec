Gem::Specification.new do |s|
  s.name = 'requestor'
  s.version = '0.5.0'
  s.summary = 'Reads a gem (source code) from an ' +
      'HTTP location. Ideal for working on a gem in the ' +
      'development environment.'
    s.authors = ['James Robertson']
  s.files = Dir['lib/requestor.rb'] 
  s.add_runtime_dependency('rxfreader', '~> 0.1', '>=0.1.2')
  s.signing_key = '../privatekeys/requestor.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/requestor'
  s.required_ruby_version = '>= 3.0.2'
end
