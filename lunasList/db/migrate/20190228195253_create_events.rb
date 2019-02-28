class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :location
      t.string :description
      t.datetime :time

      t.timestamps
    end
  end
end
