# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = {}
user['password'] = 'asdf'
user['password_confirmation'] = 'asdf'

ActiveRecord::Base.transaction do
  20.times do 
    user['first_name'] = Faker::Name.first_name 
    user['last_name'] = Faker::Name.last_name
    user['email'] = Faker::Internet.email

    User.create(user)
  end
end 

# Seed salons
salon = {}
uids = []
User.all.each { |u| uids << u.id }

ActiveRecord::Base.transaction do
  40.times do 
    salon['business_name'] = Faker::App.name


    salon['country'] = Faker::Address.country
    salon['location'] = Faker::Address.city
    salon['suburb'] = Faker::Address.community
    salon['address'] = Faker::Address.street_address

    salon['title'] = Faker::Hipster.sentence

    salon['user_id'] = uids.sample

    Salon.create(salon)
  end
end