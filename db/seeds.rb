# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!(title: 'Appetizer')
Category.create!(title: 'Entree')
Category.create!(title: 'Side')
Category.create!(title: 'Dessert')
Category.create!(title: 'Drink')

20.times do
  MenuItem.create!({
    name: Faker::Food.dish,
    description: Faker::Lorem.sentence(3),
    price: Faker::Number.decimal(2)
    })
end

MenuItem.find(1).category_assignments.create(category_id: 1)
MenuItem.find(2).category_assignments.create(category_id: 1)
MenuItem.find(3).category_assignments.create(category_id: 1)
MenuItem.find(4).category_assignments.create(category_id: 1)
MenuItem.find(5).category_assignments.create(category_id: 2)
MenuItem.find(6).category_assignments.create(category_id: 2)
MenuItem.find(7).category_assignments.create(category_id: 2)
MenuItem.find(8).category_assignments.create(category_id: 2)
MenuItem.find(9).category_assignments.create(category_id: 3)
MenuItem.find(10).category_assignments.create(category_id: 3)
MenuItem.find(11).category_assignments.create(category_id: 3)
MenuItem.find(12).category_assignments.create(category_id: 3)
MenuItem.find(13).category_assignments.create(category_id: 4)
MenuItem.find(14).category_assignments.create(category_id: 4)
MenuItem.find(15).category_assignments.create(category_id: 4)
MenuItem.find(16).category_assignments.create(category_id: 4)
MenuItem.find(17).category_assignments.create(category_id: 5)
MenuItem.find(18).category_assignments.create(category_id: 5)
MenuItem.find(19).category_assignments.create(category_id: 5)
MenuItem.find(20).category_assignments.create(category_id: 5)

Order.create
