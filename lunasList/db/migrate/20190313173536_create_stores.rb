class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :storeName
      t.string :address
      t.string :city
      t.string :state
      t.boolean :approved
      t.integer :phone

      t.timestamps
    end
  end
end
