class AddWaterbodiesToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :waterbodies, :string
  end
end
