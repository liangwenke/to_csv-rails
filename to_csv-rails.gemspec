# encoding: utf-8

version = File.read(File.expand_path("../VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.name = 'to_csv-rails'
  s.version = version
  s.author = "LiangWenKe"
  s.email = "liangwenke8@gmail.com"
  s.homepage = "http://github.com/wenke/to_csv-rails"
  s.summary     = "Export data to csv on Rails"
  s.description = "This simple plugin gives you the ability to call to_csv to a collection of activerecords. The builder options are the same as to_json / to_xml, except for the :include."
  
  s.files        = Dir["lib/**/*", "[a-zA-Z]*", "init.rb"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = ">= 1.3.4"
end