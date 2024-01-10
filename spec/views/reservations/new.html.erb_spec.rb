require 'rails_helper'

RSpec.describe "reservations/new", type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
      material: "MyString",
      site_location: "MyString",
      customer: nil,
      truck: nil
    ))
  end

  it "renders new reservation form" do
    render

    assert_select "form[action=?][method=?]", reservations_path, "post" do

      assert_select "input[name=?]", "reservation[material]"

      assert_select "input[name=?]", "reservation[site_location]"

      assert_select "input[name=?]", "reservation[customer_id]"

      assert_select "input[name=?]", "reservation[truck_id]"
    end
  end
end
