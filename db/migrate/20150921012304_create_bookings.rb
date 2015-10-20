class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :from
      t.string :to
      t.date :date

      t.timestamps null: false
    end
  end
end
