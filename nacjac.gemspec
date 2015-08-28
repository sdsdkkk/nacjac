lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'nacjac/version'

Gem::Specification.new do |gem|
  gem.name           = "nacjac"
  gem.version        = Nacjac::VERSION
  gem.authors        = ["Edwin Tunggawan"]
  gem.email          = ["vcc.edwint@gmail.com"]
  gem.description    = "Measuring web response time"
  gem.summary        = "Send requests to a web page and measure the average response time"
  gem.homepage       = "https://github.com/sdsdkkk/nacjac"

  gem.files          = `git ls-files`.split($/)
  gem.executables    = ["nacjac"]
  gem.require_paths  = ["lib", "lib/nacjac"]
end
