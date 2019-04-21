class AddTrailsToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :trails, :string
  end
end
