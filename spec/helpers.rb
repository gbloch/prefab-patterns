module Helpers
  def view_path(file_name)
    File.join(views_path, "_#{file_name}.html.erb")
  end

  def views_path
    File.join(Rails.root, "app", "views", "prefab_patterns")
  end

  def view_source(file_name)
    "http://example.com/app/views/prefab_patterns/_#{file_name}.html.erb"
  end

  def stylesheet_path(file_name)
    File.join(stylesheets_path, "_#{file_name}.scss")
  end

  def stylesheets_path
    File.join(Rails.root, "app", "assets", "stylesheets", "prefab_patterns")
  end

  def stylesheet_source(file_name)
    "http://example.com/app/assets/stylesheets/prefab_patterns/_#{file_name}.scss"
  end

  def javascript_path(file_name)
    File.join(javascripts_path, "#{file_name}.coffee")
  end

  def javascripts_path
    File.join(Rails.root, "app", "assets", "javascripts", "prefab_patterns")
  end

  def javascript_source(file_name)
    "http://example.com/app/assets/javascripts/prefab_patterns/#{file_name}.coffee"
  end
end
