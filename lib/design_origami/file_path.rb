module DesignOrigami
  class FilePath
    def initialize(pattern)
      @pattern = pattern
    end

    def html_source
      File.join(FILE_PATH, html_root, "_#{@pattern}.html.erb")
    end

    def html_destination
      File.join(html_root, "_#{@pattern}.html.erb")
    end

    def stylesheet_source
      File.join(FILE_PATH, stylesheet_root, "_#{@pattern}.scss")
    end

    def stylesheet_destination
      File.join(stylesheet_root, "_#{@pattern}.scss")
    end

    def javascript_source
      File.join(FILE_PATH, javascript_root, "#{@pattern}.coffee")
    end

    def javascript_destination
      File.join(javascript_root, "#{@pattern}.coffee")
    end

    private

    def stylesheet_root
      File.join("app", "assets", "stylesheets", "patterns")
    end

    def javascript_root
      File.join("app", "assets", "javascripts", "patterns")
    end

    def html_root
      File.join("app", "views", "patterns")
    end
  end
end
