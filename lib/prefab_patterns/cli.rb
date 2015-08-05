require "prefab_patterns"
require "thor"

module PrefabPatterns
  class CLI < Thor
    desc "import PATTERN", "PATTERN imported"
    def import(pattern)
      PrefabPatterns::ImportPattern.new(pattern).import_pattern

      puts "#{pattern} imported"
    end
  end
end
