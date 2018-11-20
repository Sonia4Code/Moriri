class CreateSalons < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
	  t.string   :user_id 
      t.string   :country
      t.string   :location
      t.string   :title
      t.string   :description
      t.string   :business_name
      t.integer  :contact      
      t.string   :speciality, :text, array:true, default: []
      t.string   :suburb
      t.string   :address
      t.string   :contact_person
      t.timestamps
    end
  end
end
