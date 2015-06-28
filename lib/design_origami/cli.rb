require "design_origami"
require "thor"

module DesignOrigami
  class CLI < Thor
    desc "import PATTERN", "PATTERN imported"
    def import(pattern)
      DesignOrigami::ImportPattern.new(pattern).import_pattern

      puts "#{pattern} imported"
    end

    desc "enable [feature]", "[feature] enabled"
    def enable(feature)
      DesignOrigami::Enable.new(feature).enable

      puts "You have enabled Konacha"
      puts ""
      puts "1 file created:"
      puts "spec/javascripts/spec_helper.coffee"
    end
  end
end
