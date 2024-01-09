require 'rails_helper'

RSpec.describe "trucks/edit", type: :view do
  let(:truck) {
    Truck.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:truck, truck)
  end

  it "renders the edit truck form" do
    render

    assert_select "form[action=?][method=?]", truck_path(truck), "post" do

      assert_select "input[name=?]", "truck[name]"
    end
  end
end
