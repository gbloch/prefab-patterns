require "prefab_patterns"
require "prefab_patterns/file_creator"
require "prefab_patterns/file_decorator"
require "net/http"

module PrefabPatterns
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
      ["view", "javascript", "stylesheet"]
    end
  end
end
