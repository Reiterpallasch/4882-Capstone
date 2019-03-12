class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :type
      t.string :name
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
