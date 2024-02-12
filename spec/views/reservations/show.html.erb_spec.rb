require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    assign(:reservation, Reservation.create!(
      material: "Material",
      site_location: "Site Location",
      customer: Customer.create,
      truck: Truck.create,
      start_time: DateTime.now,
      end_time: DateTime.now + 1.day 
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Material/)
    expect(rendered).to match(/Site Location/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
