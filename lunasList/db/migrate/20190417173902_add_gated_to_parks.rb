class AddGatedToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :gated, :string
  end
end
