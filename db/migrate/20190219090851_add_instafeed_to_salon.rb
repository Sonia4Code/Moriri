class AddInstafeedToSalon < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :instafeed, :string
  end
end
