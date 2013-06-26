raise 'hazelcast-jars only runs on JRuby. Sorry!' unless (RUBY_PLATFORM =~ /java/)

require File.expand_path(File.dirname(__FILE__) + '/version')

module Hazelcast
  class Jars

    def self.client
      require "hazelcast-client-#{full_version}.jar"
    end

    def self.server
      require "hazelcast-#{full_version}.jar"
    end

    def self.all
      require "hazelcast-all-#{full_version}.jar"
    end

  end
end