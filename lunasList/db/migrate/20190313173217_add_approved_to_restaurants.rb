class AddApprovedToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :approved, :boolean
  end
end
