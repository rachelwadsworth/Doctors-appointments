# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#patients first_name last_name

users = []
doctors =[]
roles = ["eye", "heart", "butt"]
5.times do |i|
users<< User.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name )  
end

#create Doctors Last name
3.times do |i|
  doctors<< Doctor.create(name: Faker::Creature::Dog.name )
end
  #go to each users and add 10 appointments
  doctors.each do |doctor|
    9.times do
  doctor.appointments.create(role: roles.sample, user_id: users.sample.id)
    end 
  end

  puts "seeded"
 