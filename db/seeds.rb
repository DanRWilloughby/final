
puts "Deleting all records from the database..."
ShoppingList.delete_all
Store.delete_all
User.delete_all
Measurement.delete_all
Ingredient.delete_all

# Create Measurements
puts "Creating Measurements..."
cup = Measurement.create(name: "Cup", volume: "1", abbreviation: "c")
gallon = Measurement.create(name: "Gallon", volume: "16", abbreviation: "gal")
pound = Measurement.create(name: "Pound", volume: "16", abbreviation: "lb")
ounce = Measurement.create(name: "Ounce", volume: "1", abbreviation: "oz")
bar = Measurement.create(name: "Bar", volume: "1", abbreviation: "nil")

# Create the Ingredients
puts "Creating Ingredients..."
flower = Ingredient.create(name: "Flower", price: "3.99", standard_unit: cup.name)
sugar = Ingredient.create(name: "Sugar", price: "3.99", standard_unit: cup.name)
chocolate = Ingredient.create(name: "Chocolate", price: "5.99", standard_unit: bar.name)
bakingpowder = Ingredient.create(name: "Baking Powder", price: "4.99", standard_unit: ounce.name)
salt = Ingredient.create(name: "Salt", price: "1.99", standard_unit: "oz")

# Create the Stores
puts "Creating Stores..."
wholefoods = Store.create(name: "Whole Foods Market", address: "1111 Chicago Avenue")
traderjoes = Store.create(name: "Trader Joe's", address: "1211 Chicago Avenue")
jewel = Store.create(name: "Jewel Osco", address: "1128 Chicago Avenue")
local = Store.create(name: "Mom and Pops", address: "900 Chicago Avenue")
farmersmarket = Store.create(name: "Evanston Farmer's Market", address: "1828 Sherman Avenue")

# Create User Database
puts "Creating User Database..."
dan = User.create(name: "Dan", username: "Beastmatic", password: "123456", email: "DanRWilloughby@gmail.com")
emily = User.create(name: "Emily", username: "SugarCookie", password: "cookie", email: "Iluvcookies@gmail.com")
frank = User.create(name: "Frank", username: "FranktheTank", password: "beer", email: "FranktheTank@gmail.com")
carl = User.create(name: "Carl", username: "AnIdiotAbroad", password: "ImissHome", email: "AnIdiotAbroad@gmail.com")
jesus = User.create(name: "Jesus", username: "IwillReturn", password: "ButWhen", email: "SonofGod@gmail.com")

# Create the ShoppingList
puts "Creating ShoppingList..."
Item1 = ShoppingList.create(name: "Flower", ingredient_id: flower.id, price: flower.price, amount: "3", comment: "Use in multiple recipes so aggregated sum")
Item2 = ShoppingList.create(name: "Sugar", ingredient_id: sugar.id, price: sugar.price, amount: "2", comment: "Sugar is critical for cookies")
Item3 = ShoppingList.create(name: "Chocolate", ingredient_id: chocolate.id, price: chocolate.price, amount: "6", comment: "Use a mixture of dark and milk chocolate")
Item4 = ShoppingList.create(name: "Baking Powder", ingredient_id: bakingpowder.id, price: bakingpowder.price, amount: "8", comment: "For baking")
Item5 = ShoppingList.create(name: "Salt", ingredient_id: salt.id, price: salt.price, amount: "1", comment: "Salt gives everything more taste")

puts "There are now #{ShoppingList.count} Items in the Shopping List, consisting of #{Ingredient.count} Ingredients, #{Store.count} stores, #{User.count} Users, and #{Measurement.count} Measurments in the database."
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
