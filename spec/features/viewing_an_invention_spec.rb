require 'rails_helper'

describe "viewing an invention" do
  it "lets a user view the invention" do
    invention = create(:invention)

    visit post_url(invention)

    expect(page).to have_content(invention.title)
    # expect(page).to have_css("link[rel=canonical][href='#{post_url(published.slug)}']", visible: false)
  end
end
