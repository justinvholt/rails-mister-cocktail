# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "json"

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
file = JSON.parse(open(url).read)

file["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Ingredient.create(name: "Don Julio® Blanco Tequila")
Ingredient.create(name: "Coconut Cream")
Ingredient.create(name: "Pineapple")
Ingredient.create(name: "Captain Morgan Original Spiced Gold")
Ingredient.create(name: "Gordon's® London Dry Gin")
Ingredient.create(name: "Club Soda")
Ingredient.create(name: "Tonic Water")
Ingredient.create(name: "Captain Morgan® Original Rum")
Ingredient.create(name: "Orange Liqueur")
Ingredient.create(name: "Apricot Brandy")
Ingredient.create(name: "")
Ingredient.create(name: "")
Ingredient.create(name: "")
Ingredient.create(name: "")
