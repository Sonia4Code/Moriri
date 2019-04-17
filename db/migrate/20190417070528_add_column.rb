class AddColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :welcomes, :about, :string
  end
end
