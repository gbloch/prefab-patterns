module Helpers
  def view_path(file_name)
    File.join(views_path, "_#{file_name}.html.erb")
  end

  def views_path
    File.join(Rails.root, "app", "views", "patterns")
  end

  def stylesheet_path(file_name)
    File.join(stylesheets_path, "_#{file_name}.scss")
  end

  def stylesheets_path
    File.join(Rails.root, "app", "assets", "stylesheets", "patterns")
  end

  def javascript_path(file_name)
    File.join(javascripts_path, "#{file_name}.coffee")
  end

  def javascripts_path
    File.join(Rails.root, "app", "assets", "javascripts", "patterns")
  end
end
