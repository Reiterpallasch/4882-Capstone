class CreateVets < ActiveRecord::Migration[5.2]
  def change
    create_table :vets do |t|
      t.string :businessName
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
