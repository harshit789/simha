class ChangeDateToDatetimeInBookings < ActiveRecord::Migration
  def up
    rename_column :bookings, :date, :datetime
    change_column :bookings, :datetime, :datetime
  end

  def down
    change_column :bookings, :datetime, :date
    rename_column :bookings, :datetime, :date
  end
end
