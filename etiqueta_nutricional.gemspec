
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "etiqueta_nutricional/version"

Gem::Specification.new do |spec|
  spec.name          = "etiqueta_nutricional"
  spec.version       = EtiquetaNutricional::VERSION
  spec.authors       = ["Antonio Chavez Lopez"]
  spec.email         = ["alu0101038377@ull.edu.es"]

  spec.summary       = %q{Etiqueta nutricional}
  spec.description   = %q{Se almacenan y se muestran todos los datos que debe tener una etiqueta nutricional}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1819/tdd-antoniochl98"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/ULL-ESIT-LPP-1819/tdd-antoniochl98"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "rdoc"
  spec.add_development_dependency "coveralls"
end
