# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion-templates/version.rb', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "motion-templates"
  spec.version       = Motion::Templates::VERSION
  spec.description   = %q{rubymotion templates}
  spec.summary       = %q{rubymotion templates}
  spec.license       = ""

  spec.authors       = ["Liu Lantao"]
  spec.email         = ["liulantao@gmail.com"]
  spec.homepage      = "https://github.com/Lax/motion-templates"

  spec.files         = Dir.glob('template/**/*') + Dir.glob('lib/**/*.rb')

  spec.metadata     = { "rubymotion_template_dir" => "template" }

  spec.add_development_dependency "rake"
end
