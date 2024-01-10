require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  let(:reservation) {
    Reservation.create!(
      material: "MyString",
      site_location: "MyString",
      customer: Customer.create,
      truck: Truck.create
    )
  }

  before(:each) do
    assign(:reservation, reservation)
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(reservation), "post" do

      assert_select "input[name=?]", "reservation[material]"

      assert_select "input[name=?]", "reservation[site_location]"

      assert_select "input[name=?]", "reservation[customer_id]"

      assert_select "input[name=?]", "reservation[truck_id]"
    end
  end
end
