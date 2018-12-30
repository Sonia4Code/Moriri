class Salon < ApplicationRecord
  has_one :user
  
  Salon.order(created_at: :desc)


  scope :country, -> (country) { where("country ILIKE ?", "%#{country}%") } 
  scope :location, -> (location) { where("location ILIKE ?", "%#{location}%") } 
  scope :suburb, -> (suburb) { where("suburb ILIKE ?", "%#{suburb}%") } 

  paginates_per 8

end
