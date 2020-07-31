# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  mying = ["gin", "campari", "sweet vermouth","house blended coffee", "maple syrup", "tonic","bourbon", "coffee bean", "barcardi", "vodka", "vanila", "coconut milk", "pineapple", "spices", "creme de cacao", "mint"]
  ingredients = mying.each do |i|
  ingredient = Ingredient.create(name: "#{i}")
  puts ingredient.name
  end
  puts ingredients

  mycocktail = ["Coffee & Tonic", "Caffe Negroni", "Three Coffees","Coffee Mojito", "Espresso Martini", "Coffee Milk Punch"]
  cocktails = mycocktail.each do |i|
  cocktail = Cocktail.create(name: "#{i}")
  puts cocktail.name
  end
  puts cocktails

  mydose = ["0.3oz", "0.5oz", "1oz", "2oz","3oz", "4oz"]
  mydose.each do |i|
  dose = Dose.create(description: "#{i}", cocktail_id: rand(0..5), ingredient_id: rand(0..15))
  puts dose.description
  end
