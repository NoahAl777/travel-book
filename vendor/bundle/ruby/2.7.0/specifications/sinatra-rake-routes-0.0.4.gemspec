# -*- encoding: utf-8 -*-
# stub: sinatra-rake-routes 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "sinatra-rake-routes".freeze
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Peter Graham".freeze]
  s.date = "2016-03-11"
  s.description = "Rake command for printing out all defined routes in Sinatra applications".freeze
  s.email = "peter@wealthsimple.com".freeze
  s.homepage = "https://github.com/wealthsimple/sinatra-rake-routes".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "`rake routes` command for Sinatra applications".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_development_dependency(%q<sinatra>.freeze, ["~> 1.4"])
    s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2"])
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2"])
  end
end
