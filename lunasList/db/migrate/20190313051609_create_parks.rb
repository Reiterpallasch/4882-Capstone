class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.string :size
      t.string :leash

      t.timestamps
    end
  end
end
