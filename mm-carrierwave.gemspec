# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lib/version"

Gem::Specification.new do |s|
  s.name        = "mm-carrierwave"
  s.version     = Mm::Carrierwave::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Robert Beekman"]
  s.email       = ["robert@80beans.com"]
  s.homepage    = ""
  s.summary     = %q{Mongomapper ORM for Carrierwave}
  s.description = %q{Mongomapper ORM for Carrierwave}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'mongo_mapper', ['~> 0.9']
  s.add_dependency 'carrierwave', ['~> 0.5']
  s.add_development_dependency('rspec', ["~> 2.1"])
  s.add_development_dependency "timecop"
end
