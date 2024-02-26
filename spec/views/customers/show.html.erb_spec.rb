require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    assign(:customer, 
    FactoryBot.create(:customer))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/David Weaver/)
    expect(rendered).to match(/000-000-0000/)
    expect(rendered).to match(/customer@example.com/)
  end
end
