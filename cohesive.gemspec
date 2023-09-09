require_relative "lib/cohesive/version"

Gem::Specification.new do |spec|
  spec.name        = "cohesive"
  spec.version     = Cohesive::VERSION
  spec.authors     = ["Josh Frankel"]
  spec.email       = ["joshmfrankel@gmail.com"]
  spec.summary = "UI Library integrating Tailwind, Stimulus, and ViewComponents"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
#  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"


  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4.2"
  spec.add_dependency "view_component"
  spec.add_dependency "tailwindcss-rails", "~> 2.0"

  spec.add_development_dependency "pry"
end
