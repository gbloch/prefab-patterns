require "design_origami/file_path"

module DesignOrigami
  class FileDecorator
    def initialize(pattern, type)
      @pattern = pattern
      @type = type
    end

    def type
      @type
    end

    def source
      path.send("#{@type}_source")
    end

    def destination
      path.send("#{@type}_destination")
    end

    private

    def path
      FilePath.new(@pattern)
    end
  end
end
