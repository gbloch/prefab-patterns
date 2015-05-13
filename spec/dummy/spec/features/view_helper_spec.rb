require "dummy/spec/rails_helper"

RSpec.describe "View helpers", type: :feature do
  it "renders the pattern" do
    visit "/"

    expect(page).to have_content "My Card"
  end
end
