# encoding: utf-8

version = File.read(File.expand_path("../VERSION",__FILE__)).strip

Gem::Specification.new do |spec|
  spec.name                      = 'to_csv-rails'
  spec.version                   = version
  spec.author                    = "Mike Liang"
  spec.email                     = "liangwenke.com@gmail.com"
  spec.homepage                  = "http://github.com/liangwenke/to_csv-rails"
  spec.summary                   = "Export data to csv on Rails"
  spec.description               = "This simple plugin gives you the ability to call to_csv to a collection of activerecords. The builder options are the same as to_json / to_xml, except for the :include."

  spec.files                     = Dir["lib/**/*", "[a-zA-Z]*", "init.rb"] - ["Gemfile.lock"]
  spec.require_path              = "lib"

  spec.platform                  = Gem::Platform::RUBY
  spec.required_rubygems_version = ">= 1.3.4"
  spec.license                   = 'MIT'
end