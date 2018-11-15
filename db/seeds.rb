# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flavor.destroy_all
User.destroy_all
Cocktail.destroy_all
Post.destroy_all
Like.destroy_all
Ingredient.destroy_all



user1 = User.create(email: "abc123@gmail.com", first_name: "Anna", last_name: "Conaway", username: "annaconaway", password: "password", age: 27)
user2 = User.create(email: "12345@gmail.com", first_name: "Jason", last_name: "Campbell", username: "jasoncampbell", password: "pw123", age: 32)

cocktail1 = Cocktail.create(name: "Purple People Eater".downcase, description: "Perfect, purple accompaniment to any dish")
cocktail2 = Cocktail.create(name: "Tequila Sunrise".downcase, description: "1 tequila, 2 tequila, 3 tequila, floor (as they say)")
cocktail3 = Cocktail.create(name: "Whiskey Sour".downcase, description: "Strong and full o' whiskey")
cocktail4 = Cocktail.create(name: "Bloody Mary".downcase, description: "Vodka. It's for breakfast.")
cocktail5 = Cocktail.create(name: "Git & Tonic".downcase, description: "For when you want to get turnt without the calories")
cocktail6 = Cocktail.create(name: "Dirty Martini".downcase, description: "Extra olives, please!")
cocktail7 = Cocktail.create(name: "Long Island".downcase, description: "Little bit of everything")
cocktail8 = Cocktail.create(name: "Flatiron Fog".downcase, description: "For a day when you've had one too many labs")
cocktail9 = Cocktail.create(name: "404".downcase, description: "No error here. You picked a good one.")
cocktail10 = Cocktail.create(name: "Ruby on the Rocks".downcase, description: "Rails can only offer so much")
cocktail11 = Cocktail.create(name: "Jack & Code".downcase, description: "The classic you're thinking of, with a new name")
cocktail12 = Cocktail.create(name: "WeWork Whiskey".downcase, description: "Do (or drink) what you love")
cocktail13 = Cocktail.create(name: "The Paul".downcase, description: "Guaranteed sass with every glass")
cocktail14 = Cocktail.create(name: "Mod Margarita".downcase, description: "May or may not give you the confidence for your next code challenge")
cocktail15 = Cocktail.create(name: "Code Fashioned".downcase, description: "The most abstract of cocktails")


drink_flavors = ["refreshing", "tart", "savory", "fruit", "strong", "spicy", "sweet", "fizzy", "licorice", "herbal", "vegetal", "bitter", "unusual", "floral", "smoky"]

drink_flavors.each do |flavor|
  Flavor.create(keyword: flavor)
end

post1 = Post.create(user: User.all.sample, cocktail: cocktail1, image: File.open("images/tequilasunrise.jpeg"))


post2 = Post.create(user: User.all.sample, cocktail: cocktail2, image: File.open("images/tequilasunrise.jpeg"))

post3 = Post.create(user: User.all.sample, cocktail: cocktail3, image: File.open("images/tequilasunrise.jpeg"))

post4 = Post.create(user: User.all.sample, cocktail: cocktail4, image: File.open("images/tequilasunrise.jpeg"))

post5 = Post.create(user: User.all.sample, cocktail: cocktail5, image: File.open("images/tequilasunrise.jpeg"))

post6 = Post.create(user: User.all.sample, cocktail: cocktail6, image: File.open("images/tequilasunrise.jpeg"))

post7 = Post.create(user: User.all.sample, cocktail: cocktail7, image: File.open("images/tequilasunrise.jpeg"))

post8 = Post.create(user: User.all.sample, cocktail: cocktail8, image: File.open("images/tequilasunrise.jpeg"))

post9 = Post.create(user: User.all.sample, cocktail: cocktail9, image: File.open("images/tequilasunrise.jpeg"))

post10 = Post.create(user: User.all.sample, cocktail: cocktail10, image: File.open("images/tequilasunrise.jpeg"))

post11 = Post.create(user: User.all.sample, cocktail: cocktail11, image: File.open("images/tequilasunrise.jpeg"))

post12 = Post.create(user: User.all.sample, cocktail: cocktail12, image: File.open("images/tequilasunrise.jpeg"))

post13 = Post.create(user: User.all.sample, cocktail: cocktail13, image: File.open("images/tequilasunrise.jpeg"))

post14 = Post.create(user: User.all.sample, cocktail: cocktail14, image: File.open("images/tequilasunrise.jpeg"))

post15 = Post.create(user: User.all.sample, cocktail: cocktail15, image: File.open("images/tequilasunrise.jpeg"))

Post.all.each do |post|
  PostFlavor.create(post: post, flavor: Flavor.all.sample)
  PostFlavor.create(post: post, flavor: Flavor.all.sample)
end


ing1 = Ingredient.create(name: "Purple Drank", quantity: "3 oz")
ing2 = Ingredient.create(name: "Lemonade", quantity: "5 oz")
ing3 = Ingredient.create(name: "Blackberries", quantity: "handful")
ing4 = Ingredient.create(name: "Tequila", quantity: "3 oz")
ing5 = Ingredient.create(name: "Grenadine", quantity: "2 oz")
ing6 = Ingredient.create(name: "Orange Juice", quantity: "2 oz")
ing7 = Ingredient.create(name: "Rum", quantity: "5 oz")
ing8 = Ingredient.create(name: "Coke", quantity: "5 oz")
ing9 = Ingredient.create(name: "Gin", quantity: "4 oz")
ing10 = Ingredient.create(name: "Tonic", quantity: "3 oz")
ing11 = Ingredient.create(name: "Tomato Juice", quantity: "5 oz")
ing12 = Ingredient.create(name: "Vodka", quantity: "3 oz")
ing13 = Ingredient.create(name: "Olives", quantity: "a few")
ing14 = Ingredient.create(name: "Bitters", quantity: "1 oz")
ing15 = Ingredient.create(name: "Whiskey", quantity: "5 oz")
ing16 = Ingredient.create(name: "Cointreau", quantity: "3 oz")
ing17 = Ingredient.create(name: "Lime Juice", quantity: "5 oz")
ing18 = Ingredient.create(name: "Sugar", quantity: "1 oz")


cocktail_ing1 = CocktailIngredient.create(cocktail_id: 1, ingredient_id: 1)
cocktail_ing2 = CocktailIngredient.create(cocktail_id: 1, ingredient_id: 2)
cocktail_ing3 = CocktailIngredient.create(cocktail_id: 1, ingredient_id: 3)
cocktail_ing4 = CocktailIngredient.create(cocktail_id: 2, ingredient_id: 4)
cocktail_ing5 = CocktailIngredient.create(cocktail_id: 2, ingredient_id: 5)
cocktail_ing6 = CocktailIngredient.create(cocktail_id: 2, ingredient_id: 6)
cocktail_ing7 = CocktailIngredient.create(cocktail_id: 3, ingredient_id: 15)
cocktail_ing8 = CocktailIngredient.create(cocktail_id: 3, ingredient_id: 5)
cocktail_ing9 = CocktailIngredient.create(cocktail_id: 3, ingredient_id: 14)
cocktail_ing10 = CocktailIngredient.create(cocktail_id: 4, ingredient_id: 12)
cocktail_ing11 = CocktailIngredient.create(cocktail_id: 4, ingredient_id: 11)
cocktail_ing12 = CocktailIngredient.create(cocktail_id: 5, ingredient_id: 9)
cocktail_ing13 = CocktailIngredient.create(cocktail_id: 5, ingredient_id: 10)
cocktail_ing14 = CocktailIngredient.create(cocktail_id: 6, ingredient_id: 12)
cocktail_ing15 = CocktailIngredient.create(cocktail_id: 6, ingredient_id: 13)
cocktail_ing16 = CocktailIngredient.create(cocktail_id: 7, ingredient_id: 12)
cocktail_ing17 = CocktailIngredient.create(cocktail_id: 7, ingredient_id: 7)
cocktail_ing18 = CocktailIngredient.create(cocktail_id: 7, ingredient_id: 8)
cocktail_ing19 = CocktailIngredient.create(cocktail_id: 7, ingredient_id: 2)
cocktail_ing20 = CocktailIngredient.create(cocktail_id: 8, ingredient_id: 4)
cocktail_ing21 = CocktailIngredient.create(cocktail_id: 8, ingredient_id: 2)
cocktail_ing22 = CocktailIngredient.create(cocktail_id: 9, ingredient_id: 6)
cocktail_ing23 = CocktailIngredient.create(cocktail_id: 9, ingredient_id: 7)
cocktail_ing24 = CocktailIngredient.create(cocktail_id: 10, ingredient_id: 15)
cocktail_ing25 = CocktailIngredient.create(cocktail_id: 10, ingredient_id: 5)
cocktail_ing26 = CocktailIngredient.create(cocktail_id: 11, ingredient_id: 7)
cocktail_ing27 = CocktailIngredient.create(cocktail_id: 11, ingredient_id: 8)
cocktail_ing28 = CocktailIngredient.create(cocktail_id: 12, ingredient_id: 5)
cocktail_ing29 = CocktailIngredient.create(cocktail_id: 12, ingredient_id: 2)
cocktail_ing30 = CocktailIngredient.create(cocktail_id: 13, ingredient_id: 4)
cocktail_ing31 = CocktailIngredient.create(cocktail_id: 13, ingredient_id: 4)
cocktail_ing32 = CocktailIngredient.create(cocktail_id: 13, ingredient_id: 5)
cocktail_ing33 = CocktailIngredient.create(cocktail_id: 14, ingredient_id: 2)
cocktail_ing34 = CocktailIngredient.create(cocktail_id: 14, ingredient_id: 16)
cocktail_ing35 = CocktailIngredient.create(cocktail_id: 14, ingredient_id: 17)
cocktail_ing36 = CocktailIngredient.create(cocktail_id: 15, ingredient_id: 15)
cocktail_ing36 = CocktailIngredient.create(cocktail_id: 15, ingredient_id: 18)
cocktail_ing36 = CocktailIngredient.create(cocktail_id: 15, ingredient_id: 14)



# #like1 = Like.create(post: Post.all.sample,
#   user: User.all.sample,
#   if Like.where()
# )
like2 = Like.create(post: Post.all.sample, user: User.all.sample)
like3 = Like.create(post: Post.all.sample, user: User.all.sample)
like4 = Like.create(post: Post.all.sample, user: User.all.sample)
like5 = Like.create(post: Post.all.sample, user: User.all.sample)
like6 = Like.create(post: Post.all.sample, user: User.all.sample)
like7 = Like.create(post: Post.all.sample, user: User.all.sample)
like8 = Like.create(post: Post.all.sample, user: User.all.sample)
like9 = Like.create(post: Post.all.sample, user: User.all.sample)
like10 = Like.create(post: Post.all.sample, user: User.all.sample)
