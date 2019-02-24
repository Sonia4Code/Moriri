class ChangeContactToBeStringInSalonss < ActiveRecord::Migration[5.2]
  def change
  	change_column :salons, :contact, :string
  end
end
