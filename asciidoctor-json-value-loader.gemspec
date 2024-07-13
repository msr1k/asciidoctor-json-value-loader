Gem::Specification.new do |s|
  s.name        = "asciidoctor-json-value-loader"
  s.version     = "0.1.1"
  s.summary     = "An asciidoctor extention to load specific JSON value. (See: https://github.com/msr1k/asciidoctor-json-value-loader)"
  s.description = "Adds asciidoctor a funcitons to load specific JSON value from JSON file"
  s.authors     = ["msr1k"]
  s.email       = "msr0210@gmail.com"
  s.files       = Dir["lib/**/*.rb"]
  s.homepage    = "https://github.com/msr1k/asciidoctor-json-value-loader"
  s.license       = "MIT"
  s.add_runtime_dependency 'asciidoctor'
end
