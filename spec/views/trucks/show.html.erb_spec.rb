require 'rails_helper'

RSpec.describe "trucks/show", type: :view do
  before(:each) do
    assign(:truck, Truck.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
