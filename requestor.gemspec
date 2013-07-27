Gem::Specification.new do |s|
  s.name = 'requestor'
  s.version = '0.1.7'
  s.summary = 'requestor'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/requestor.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/requestor'
end
