require "design_origami"
require "thor"

module DesignOrigami
  class CLI < Thor
    desc "import PATTERN", "PATTERN imported"
    def import(pattern)
      DesignOrigami::ImportPattern.new(pattern).import_pattern

      puts "#{pattern} imported"
    end
  end
end
