require "design_origami"
require "design_origami/file_creator"
require "design_origami/file_decorator"
require "net/http"

module DesignOrigami
  class ImportPattern
    def initialize(pattern)
      @pattern = pattern
    end

    def import_pattern
      pattern_file_types.each do |file_type|
        file = FileDecorator.new(@pattern, file_type)
        FileCreator.new(file).create_path_and_file
      end
    end

    private

    def pattern_file_types
      ["html", "javascript", "stylesheet", "spec", "spec_template"]
    end
  end
end
