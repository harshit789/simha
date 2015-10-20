class AddBookingToCabs < ActiveRecord::Migration
  def change
    add_reference :cabs, :booking, index: true, foreign_key: true
  end
end
