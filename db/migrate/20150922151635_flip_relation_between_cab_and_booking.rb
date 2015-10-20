class FlipRelationBetweenCabAndBooking < ActiveRecord::Migration
  def change
    remove_reference :cabs, :booking, index: true, foreign_key: true
    add_reference :bookings, :cab, index: true, foreign_key: true
  end
end
