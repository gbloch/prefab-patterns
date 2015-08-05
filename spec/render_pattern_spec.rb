require "spec_helper"

RSpec.describe PrefabPatterns::RenderPattern do
  describe "#render_pattern" do
    context "with a single argument" do
      it "renders the pattern on the page" do
        pattern_content = "<div class=\"card\">\nTitle \n</div>\n"

        pattern = PrefabPatterns::RenderPattern.new(:card, title: "Title")
        result = pattern.render_pattern
        expect(result).to eq pattern_content
      end
    end

    context "with multiple arguments" do
      it "renders the pattern on the page with the arguments in the correct order" do
        pattern_content = "<div class=\"card\">\nTitle description\n</div>\n"

        pattern = PrefabPatterns::RenderPattern.new(
          :card,
          description: "description",
          title: "Title"
        )
        result = pattern.render_pattern
        expect(result).to eq pattern_content
      end
    end

    context "with no arguments" do
      it "renders the pattern on the page" do
        pattern_content = "<div class=\"card\">\n \n</div>\n"

        pattern = PrefabPatterns::RenderPattern.new(:card)
        result = pattern.render_pattern
        expect(result).to eq pattern_content
      end
    end
  end
end
