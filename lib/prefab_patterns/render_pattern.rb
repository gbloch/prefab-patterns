require "rails"

module PrefabPatterns
  class RenderPattern
    def initialize(pattern, locals = {})
      @pattern = pattern
      @locals = locals
    end

    def render_pattern
      controller = ActionController::Base.new
      view = ActionView::Base.new(view_file_path, {}, controller)
      view.render(file: view_file_name, locals: locals)
    end

    private

    attr_reader :locals, :pattern

    def view_file_path
      Rails.root.join("app", "views", "prefab_patterns")
    end

    def view_file_name
      "_#{pattern}"
    end
  end
end
