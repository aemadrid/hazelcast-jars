raise "hazelcast-jars only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)

module Hazelcast
  class Jars

    GEM_ROOT = File.expand_path(File.dirname(__FILE__)) unless defined?(GEM_ROOT)
    $:.unshift(GEM_ROOT) unless $:.include?(GEM_ROOT)

    class << self

      def version
        @version ||= File.read File.expand_path(GEM_ROOT + '/../VERSION')
      end

      def client
        require "hazelcast-client-#{version}.jar"
      end

      def server
        require "hazelcast-#{version}.jar"
      end

      def all
        [server, client]
      end
    end
  end
end