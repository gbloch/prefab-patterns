require "dummy/spec/rails_helper"

RSpec.describe "View helpers", type: :feature do
  describe "#render_pattern" do
    before :each do
      visit "/"
    end

    context "with no arguments" do
      it "renders the pattern" do
        within "#no_arguments" do
          expect(page).to have_css ".card"
        end
      end
    end

    context "with one argument" do
      it "renders the pattern" do
        within "#one_argument" do
          expect(page).to have_content "Title"
        end
      end
    end

    context "with two arguments" do
      it "renders the pattern" do
        within "#two_arguments" do
          expect(page).to have_content "Title description"
        end
      end
    end
  end
end
