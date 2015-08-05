require "prefab_patterns/view_helpers"

module PrefabPatterns
  class Railtie < Rails::Railtie
    initializer "prefab_patterns.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
