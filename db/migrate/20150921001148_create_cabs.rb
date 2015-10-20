class CreateCabs < ActiveRecord::Migration
  def change
    create_table :cabs do |t|
      t.string :name
      t.string :model
      t.string :price

      t.timestamps null: false
    end
  end
end
