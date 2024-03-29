module PrefabPatterns
  class Styleguide
    def initialize
    end

    def all_patterns
      all_files = []
      Dir.foreach(views_path) do |file|
        next if is_hidden_and_is_not_partial?(file)
        file_name = file_name_with_no_underscore_or_extension(file)
        all_files << decorated_file(file_name)
      end
      all_files
    end

    def is_hidden_and_is_not_partial?(file)
      file == "." || file == ".." || file.match(/^_/).nil?
    end

    def decorated_file(file_name)
      decorated_file = OpenStruct.new

      decorated_file.name = file_name
      decorated_file.view_path = file_path?(view_path(file_name))
      decorated_file.stylesheet_path = file_path?(stylesheet_path(file_name))
      decorated_file.javascript_path = file_path?(javascript_path(file_name))

      decorated_file
    end

    def file_path?(file_path)
      if File.exist?(file_path)
        file_path.to_s
      end
    end

    def file_name_with_no_underscore_or_extension(file_name)
      file_name.gsub!(/^_/, "")
      file_name.gsub!(/\..+$/, "")
      file_name
    end

    private

    def view_path(file_name)
      File.join(views_path, "_#{file_name}.html.erb")
    end

    def views_path
      File.join(Rails.root, "app", "views", "prefab_patterns")
    end

    def stylesheet_path(file_name)
      File.join(stylesheets_path, "_#{file_name}.scss")
    end

    def stylesheets_path
      File.join(Rails.root, "app", "assets", "stylesheets", "prefab_patterns")
    end

    def javascript_path(file_name)
      File.join(javascripts_path, "#{file_name}.coffee")
    end

    def javascripts_path
      File.join(Rails.root, "app", "assets", "javascripts", "prefab_patterns")
    end
  end
end
