# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "toaster/version"

Gem::Specification.new do |s|
  s.name        = "toaster"
  s.version     = Toaster::VERSION
  s.authors     = ["Justin Campbell"]
  s.email       = ["justin@justincampbell.me"]
  s.homepage    = "http://github.com/JustinCampbell/toaster"
  s.summary     = %q{Give your Rails cache a nice golden brown}
  s.description = %q{Toaster warms your Rails cache by spidering a list of URLs and/or Sitemaps}

  s.rubyforge_project = "toaster"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rspec"

  if RUBY_PLATFORM =~ /darwin/
    s.add_development_dependency "growl"
    s.add_development_dependency "rb-fsevent"
  end
end
