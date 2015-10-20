class Booking < ActiveRecord::Base
  belongs_to :shared_booking
  belongs_to :user
  has_one :cab

  def cab
    Cab.find_by_id(cab_id)
  end
end
