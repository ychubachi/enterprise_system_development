# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard-shell"
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Hawxwell"]
  s.date = "2012-06-06"
  s.description = "    Guard::Shell automatically runs shell commands when watched files are\n    modified.\n"
  s.email = "m@hawx.me"
  s.homepage = "http://github.com/hawx/guard-shell"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Guard gem for running shell commands"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 1.1.0"])
    else
      s.add_dependency(%q<guard>, [">= 1.1.0"])
    end
  else
    s.add_dependency(%q<guard>, [">= 1.1.0"])
  end
end
