class AddFieldsToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :overnight, :boolean, default: false
  end
end
