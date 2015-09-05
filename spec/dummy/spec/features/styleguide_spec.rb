require "dummy/spec/rails_helper"

RSpec.describe "styleguide", type: :feature do
  describe "visiting /styleguide" do
    it "loads the styleguide" do

      visit "/styleguide"

      expect(page).to have_content "This is the styleguide"
    end
  end
end
