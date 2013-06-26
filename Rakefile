require 'rubygems'
require 'rake'
require File.expand_path(File.dirname(__FILE__) + '/lib/hazelcast-jars/version')

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name     = 'hazelcast-jars'
    gem.homepage = 'http://github.com/aemadrid/hazelcast-jars'
    gem.license  = 'MIT'

    gem.summary     = 'Utility gem to carry the latest Hazelcast jars.'
    gem.description = 'Something to make my life easier.'

    gem.email   = 'aemadrid@gmail.com'
    gem.authors = ['Adrian Madrid']

    gem.platform          = 'jruby'
    gem.rubyforge_project = 'hazelcast-jars'
    gem.version           = Hazelcast::Jars.gem_version

    gem.files.include 'lib/*.jar'
    Jeweler::GemcutterTasks.new
  end
  Jeweler::RubygemsDotOrgTasks.new
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
end
