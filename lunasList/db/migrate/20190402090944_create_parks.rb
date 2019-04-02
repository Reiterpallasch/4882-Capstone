class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.string :leash
      t.string :city
      t.string :state
      t.string :size
      t.boolean :approved

      t.timestamps
    end
  end
end
