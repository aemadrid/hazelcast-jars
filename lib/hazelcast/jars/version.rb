module Hazelcast
  module Jars

    LIB_PATH = File.expand_path(File.dirname(File.dirname(File.dirname(__FILE__)))) unless defined?(LIB_PATH)
    ROOT_PATH = File.dirname(LIB_PATH) unless defined?(ROOT_PATH)

    $:.unshift(LIB_PATH) unless $:.include?(LIB_PATH)

    class << self

      def version
        @version ||= File.read File.join(ROOT_PATH, 'VERSION')
      end

      def version_ext
        @version_ext ||= File.read File.join(ROOT_PATH, 'VERSION_EXT')
      end

      def gem_version
        unless @gem_version
          @gem_version = version
          @gem_version += ".#{version_ext}" unless version_ext.empty?
        end
        @gem_version
      end

      def full_version
        unless @full_version
          @full_version = version
          @full_version += "-#{version_ext}" unless version_ext.empty?
        end
        @full_version
      end

    end

  end
end
