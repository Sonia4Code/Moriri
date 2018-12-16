class DropAuthentications < ActiveRecord::Migration[5.2]
  def change
    drop_table :authentications
  end
end
