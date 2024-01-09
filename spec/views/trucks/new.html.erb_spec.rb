require 'rails_helper'

RSpec.describe "trucks/new", type: :view do
  before(:each) do
    assign(:truck, Truck.new(
      name: "MyString"
    ))
  end

  it "renders new truck form" do
    render

    assert_select "form[action=?][method=?]", trucks_path, "post" do

      assert_select "input[name=?]", "truck[name]"
    end
  end
end
