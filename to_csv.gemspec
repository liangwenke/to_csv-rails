# encoding: utf-8

require File.expand_path('../version', __FILE__)

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "to_csv"
  s.version     = ToCsv::VERSION
  s.summary     = "Export data to csv on Rails"
  s.description = "This simple plugin gives you the ability to call to_csv to a collection of activerecords. The builder options are the same as to_json / to_xml, except for the :include."

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = ">= 1.3.6"
  
  s.authors     = ["LiangWenKe"]
  s.email       = ["liangwenke8@gmail.com"]
  s.homepage    = "http://www.liangwenke.com"
  s.rubyforge_project = "to_csv"

  s.require_path = 'lib'
end