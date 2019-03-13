class AddBusinessNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :businessName, :string
  end
end
