require "rails"

module PrefabPatterns
  class FilePath
    def initialize(pattern)
      @pattern = pattern
    end

    def view_source
      File.join(FILE_PATH, view_root, "_#{@pattern}.html.erb")
    end

    def view_destination
      File.join(Rails.root, view_root, "_#{@pattern}.html.erb")
    end

    def stylesheet_source
      File.join(FILE_PATH, stylesheet_root, "_#{@pattern}.scss")
    end

    def stylesheet_destination
      File.join(Rails.root, stylesheet_root, "_#{@pattern}.scss")
    end

    def javascript_source
      File.join(FILE_PATH, javascript_root, "#{@pattern}.coffee")
    end

    def javascript_destination
      File.join(Rails.root, javascript_root, "#{@pattern}.coffee")
    end

    private

    def stylesheet_root
      File.join("app", "assets", "stylesheets", "prefab_patterns")
    end

    def javascript_root
      File.join("app", "assets", "javascripts", "prefab_patterns")
    end

    def view_root
      File.join("app", "views", "prefab_patterns")
    end
  end
end
