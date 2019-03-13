class AddApprovedToVets < ActiveRecord::Migration[5.2]
  def change
    add_column :vets, :approved, :boolean
  end
end
