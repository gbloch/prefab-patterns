module DesignOrigami
  class FilePath
    def initialize(pattern)
      @pattern = pattern
    end

    def html_source
      File.join(FILE_PATH, @pattern, "#{@pattern}.html.erb")
    end

    def html_destination
      File.join(html_root, "#{@pattern}.html.erb")
    end

    def stylesheet_source
      File.join(FILE_PATH, @pattern, "#{@pattern}.scss")
    end

    def stylesheet_destination
      File.join(stylesheet_root, "#{@pattern}.scss")
    end

    def script_source
      File.join(FILE_PATH, @pattern, "#{@pattern}.coffee")
    end

    def script_destination
      File.join(script_root, "#{@pattern}.coffee")
    end

    private

    def stylesheet_root
      File.join("app", "assets", "stylesheets", "patterns")
    end

    def script_root
      File.join("app", "assets", "scripts", "patterns")
    end

    def html_root
      File.join("app", "views", "patterns")
    end
  end
end
