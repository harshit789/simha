class RemoveUserFromCabs < ActiveRecord::Migration
  def change
    remove_reference :cabs, :user, index: true, foreign_key: true
  end
end
