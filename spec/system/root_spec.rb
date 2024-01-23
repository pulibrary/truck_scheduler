require "rails_helper"

RSpec.describe "The contact form" do 
  it "submits data" do 
    visit "/"
    fill_in "Name", with: "Bill Jones"
    fill_in "Email", with: "Bill@example.com"
    fill_in "Message", with: "I need two trucks this weekend."
    click_button "Submit"
    expect(page).to have_content "Thank you for contacting us."
  end
end