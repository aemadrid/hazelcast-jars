require File.expand_path(File.dirname(__FILE__) + '/../../lib/hazelcast/jars/version')

module Hazelcast
  class Jars
    class << self

      def client
        require "hazelcast/jars/hazelcast-client-#{full_version}.jar"
      end

      def server
        require "hazelcast/jars/hazelcast-#{full_version}.jar"
      end

      def all
        require "hazelcast/jars/hazelcast-all-#{full_version}.jar"
      end

    end
  end
end