require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe "#end_time" do
    it "is after the start time" do
      reservation = Reservation.create(
        customer: Customer.create,
        truck: Truck.create,
        start_time: DateTime.now,
        end_time: DateTime.now - 1.day
      )
    
      expect(reservation).to be_invalid
    end
  end
end




