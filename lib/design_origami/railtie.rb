require "design_origami/view_helpers"

module DesignOrigami
  class Railtie < Rails::Railtie
    initializer "design_origami.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
