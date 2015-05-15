module DesignOrigami
  module ViewHelpers
    def render_pattern(pattern, locals)
      RenderPattern.new(pattern, locals).render_pattern
    end
  end
end
