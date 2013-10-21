Gem::Specification.new do |s|
  
  s.name          = 'prawn_spread'
  s.summary       = 'Simple PDF & Spreadsheet templating for rails'
  s.description   = 'To come'
  s.version       = "0.0.1"
  s.author        = 'Jules Jans'
  s.email         = 'julesjans@me.com'
  s.platform      = Gem::Platform::RUBY
  s.files         = Dir['lib/**/**']
  s.test_files    = Dir["test/test*.rb"]
  s.has_rdoc      = false

  s.add_dependency 'prawn', '>= 0.12.0'
  s.add_dependency 'spreadsheet', '>= 0.6.5.7'

end