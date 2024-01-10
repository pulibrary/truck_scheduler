require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        material: "Material",
        site_location: "Site Location",
        customer: Customer.create,
        truck: Truck.create
      ),
      Reservation.create!(
        material: "Material",
        site_location: "Site Location",
        customer: Customer.create,
        truck: Truck.create
      )
    ])
  end

  it "renders a list of reservations" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Material".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Site Location".to_s), count: 2
  end
end
