# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

exit if !Rails.env.development?
puts "Deleting the Data"
Student.delete_all
User.delete_all
Leaves.delete_all

puts "Creating User"
FactoryBot.create(:user)

puts "Creating Students"
20.times do
  FactoryBot.create(:student)
end

puts "Creating Leaves"
20.times do
  FactoryBot.create(:leaves)
end
