class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :truck
  
  validates :end_time, comparison: { greater_than: :start_time }
end