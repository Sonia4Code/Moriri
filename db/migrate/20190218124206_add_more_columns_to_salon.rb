class AddMoreColumnsToSalon < ActiveRecord::Migration[5.2]
  def change
  	add_column :salons, :website, :string
  	add_column :salons, :instagram, :string
  	add_column :salons, :facebook, :string
  end
end
