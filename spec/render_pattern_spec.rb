require "spec_helper"

RSpec.describe DesignOrigami::RenderPattern do
  describe "#render_pattern" do
    it "renders the pattern on the page" do
      pattern_content = "<div class=\"card\">\n  My Card\n</div>\n"

      pattern = DesignOrigami::RenderPattern.new("card", { title: "My Card" })
      result = pattern.render_pattern
      expect(result).to eq pattern_content
    end
  end
end
