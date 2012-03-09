$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gitchangelog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gitchangelog"
  s.version     = Gitchangelog::VERSION
  s.authors     = ["David J. Lee"]
  s.email       = ["david@lee.dj"]
  s.homepage    = "http://lee.dj/"
  s.summary     = "Adds a git changelog to a rails application"
  s.description = "Allows you to view the local git changelog at the /changelog/ path"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

	# build on rails 3.2.2 engine... but should be compatible backwards a ways.
  s.add_dependency "rails", ">= 3.1.0"
	s.add_dependency "git", ">= 1.2.5"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
