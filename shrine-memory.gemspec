Gem::Specification.new do |gem|
  gem.name          = "shrine-memory"
  gem.version       = "0.3.1"

  gem.required_ruby_version = ">= 2.1"

  gem.summary      = "Provides in-memory storage for Shrine."
  gem.homepage     = "https://github.com/shrinerb/shrine-memory"
  gem.authors      = ["Janko Marohnić"]
  gem.email        = ["janko.marohnic@gmail.com"]
  gem.license      = "MIT"

  gem.files        = Dir["README.md", "LICENSE.txt", "lib/**/*.rb", "*.gemspec"]
  gem.require_path = "lib"

  gem.add_dependency "shrine", "~> 2.2"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "minitest"
end
