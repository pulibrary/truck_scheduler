require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        material: "Material",
        site_location: "Site Location",
        customer: Customer.create,
        truck: Truck.create,
        start_time: DateTime.now,
        end_time: DateTime.now + 1.day
      ),
      Reservation.create!(
        material: "Material",
        site_location: "Site Location",
        customer: Customer.create,
        truck: Truck.create,
        start_time: DateTime.now,
        end_time: DateTime.now + 1.day
      )
    ])
  end

  it "renders a list of reservations" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("Material".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Site Location".to_s), count: 2
  end
end
