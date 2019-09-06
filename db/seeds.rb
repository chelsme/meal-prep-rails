# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all

chels = User.create(name: "Chelsea", password: "apple", password_confirmation: "apple")
aime = User.create(name: "Aime", password: "kombucha", password_confirmation: "kombucha")
mia = User.create(name: "Mia", password: "100", password_confirmation: "100")
piero = User.create(name: "Piero", password: "spicy", password_confirmation: "spicy")
allison = User.create(name: "Allison", password: "boba", password_confirmation: "boba")
eddy = User.create(name: "Eddy", password: "mustard", password_confirmation: "mustard")
devin = User.create(name: "Devin", password: "pecan", password_confirmation: "pecan")
artem = User.create(name: "Artem", password: "soccer", password_confirmation: "soccer")
rocky = User.create(name: "Rocketh", password: "bacon", password_confirmation: "bacon")

quiche = Recipe.create(name: "Quiche", instructions: "Mix up eggs and cheese. Put it in a pie crust. Bake until slightly golden brown on top and perfectly delicious.", user: mia)
pizza = Recipe.create(name: "Pizza", instructions: "Put some cheese and pineapple on that crust. Pepperoni or ham will work. Fire it up", user: piero)
mustard = Recipe.create(name: "Mustard", instructions: "Eat the mustard right out of the bottle. Delicious", user: eddy)
water = Recipe.create(name: "crazy water", instructions: "It's water, but better. It's delicious", user: aime)
noodles = Recipe.create(name: "Hand Pulled Noodles", instructions: "Get some flour and water. Mix it together. Slap it on the counter. This is a mess. Noodles!", user: allison)
banana = Recipe.create(name: "Banana Milk", instructions: "Squeeze a banana into a cup.", user: allison)
chicken = Recipe.create(name: "Crispy, Spicy Chicken", instructions: "Mix up some flavors in a bowl. Add the chicken. Fry it all up. Cook some rice to go with it. Delicious!", user: chels)
curry = Recipe.create(name: "Coconut Chicken Curry", instructions: "CURRY! Cook some rice to go with it. Delicious!", user: chels)
brownies = Recipe.create(name: "Vegan Brownies", instructions: "Mix some cocoa and oil in a boil. Add chocolate chips if you don't really care that it's vegan.", user: aime)
cookies = Recipe.create(name: "Cookies", instructions: "Coconut, Chocolate, Oatmeal", user: chels)
pecan = Recipe.create(name: "Pecan", instructions: "Grow it and eat it", user: devin)
meat = Recipe.create(name: "Meat Snacks", instructions: "Replace all other snacks with meat snacks", user: artem)
mochi = Recipe.create(name: "Bacon Wrapped Mochi", instructions: "Eat too many", user: rocky)


Ingredient.create(name: "chicken", recipe: chicken, amount: "2 chicken breasts")
Ingredient.create(name: "Sichuan Peppercorns", recipe: chicken, amount: "1/4 cup")
Ingredient.create(name: "soy sauce", recipe: chicken, amount: "2 tbsp")
Ingredient.create(name: "scallions", recipe: chicken, amount: "to taste")
Ingredient.create(name: "coconut", recipe: cookies, amount: "2 tbsp")
Ingredient.create(name: "chocolate", recipe: cookies, amount: "2 cups")
Ingredient.create(name: "oatmeal", recipe: cookies, amount: "2 cups")
Ingredient.create(name: "cocoa", recipe: brownies, amount: "1/4 cup")
Ingredient.create(name: "oil", recipe: brownies, amount: "1 cups")
Ingredient.create(name: "carob chips", recipe: brownies, amount: "1/2 cups")
Ingredient.create(name: "water", recipe: water, amount: "2 cups")
Ingredient.create(name: "baking soda", recipe: water, amount: "1/2 tsp")
Ingredient.create(name: "flour", recipe: noodles, amount: "2 cups")
Ingredient.create(name: "water", recipe: noodles, amount: "1/2 tsp")
Ingredient.create(name: "banana", recipe: banana, amount: "1")
Ingredient.create(name: "raw ass pecan", recipe: pecan, amount: "1")
Ingredient.create(name: "bacon", recipe: mochi, amount: "1 strip")
Ingredient.create(name: "mochi", recipe: mochi, amount: "1 glob")
Ingredient.create(name: "meat", recipe: meat, amount: "a lot")
