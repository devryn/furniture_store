# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Product.create(name: Faker::Commerce.product_name, price: rand(1..5000), condition: ['excellent', 'good', 'average'].sample, on_clearance: rand(0..1), quantity: rand(1..5))
end
