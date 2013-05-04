Gem::Specification.new do |s|
  s.name = 'requestor'
  s.version = '0.1.6'
  s.summary = 'requestor'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/requestor.pem'
  s.cert_chain  = ['gem-public_cert.pem']
end
