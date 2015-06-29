require "fileutils"
require "curl"

module DesignOrigami
  class FileCreator
    def initialize(file)
      @file_source = file.source
      @file_destination = file.destination
    end

    def create_path_and_file
      unless file_contents == ""
        create_path
        create_file
      end
    end

    private

    def create_path
      unless File.directory?(directory_name)
        FileUtils.mkdir_p(directory_name)
      end
    end

    def directory_name
      File.dirname(@file_destination)
    end

    def create_file
      open(@file_destination, "wb") do |file|
        file.write(file_contents)
      end
    end

    def file_contents
      Curl.get(@file_source).body
    end
  end
end
