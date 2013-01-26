# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard-livereload"
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaud Guillaume-Gentil"]
  s.date = "2012-12-19"
  s.description = "Guard::LiveReload automatically reloads your browser when 'view' files are modified."
  s.email = ["thibaud@thibaud.me"]
  s.homepage = "http://rubygems.org/gems/guard-livereload"
  s.require_paths = ["lib"]
  s.rubyforge_project = "guard-livereload"
  s.rubygems_version = "1.8.23"
  s.summary = "Guard gem for livereload"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 1.5.0"])
      s.add_runtime_dependency(%q<em-websocket>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.11"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 1.0"])
    else
      s.add_dependency(%q<guard>, [">= 1.5.0"])
      s.add_dependency(%q<em-websocket>, [">= 0.2.0"])
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<bundler>, ["~> 1.1"])
      s.add_dependency(%q<rspec>, ["~> 2.11"])
      s.add_dependency(%q<guard-rspec>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<guard>, [">= 1.5.0"])
    s.add_dependency(%q<em-websocket>, [">= 0.2.0"])
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<bundler>, ["~> 1.1"])
    s.add_dependency(%q<rspec>, ["~> 2.11"])
    s.add_dependency(%q<guard-rspec>, ["~> 1.0"])
  end
end
