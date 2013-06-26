module Hazelcast
  class Jars

    LIB_PATH = File.expand_path(File.dirname(File.dirname(__FILE__))) unless defined?(LIB_PATH)
    $:.unshift(LIB_PATH) unless $:.include?(LIB_PATH)

    def self.version
      @version ||= File.read File.expand_path(LIB_PATH + '/../VERSION')
    end

    def self.version_ext
      @version_ext ||= File.read File.expand_path(LIB_PATH + '/../VERSION_EXT')
    end

    def self.gem_version
      unless @full_version
        @full_version = version
        @full_version += ".#{version_ext}" unless version_ext.empty?
      end
      @full_version
    end

    def self.full_version
      unless @full_version
        @full_version = version
        @full_version += "-#{version_ext}" unless version_ext.empty?
      end
      @full_version
    end

  end
end