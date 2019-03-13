class AddApprovedToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :approved, :boolean
  end
end
