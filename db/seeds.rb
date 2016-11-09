# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dish.destroy_all
Country.destroy_all

(1..3).each do |n|
  country = Country.create(name: "Country ##{n}")
  (1..5).each do |t|
    dish = Dish.create(title: "Dish no. #{t}", recipe: "A delicious recipe", image: "/images/:style/missing.png", country: country)
  end
end
