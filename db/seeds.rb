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

cocktail1 = Cocktail.create(name: "Purple People Eater", description: "Perfect, purple accompaniment to any dish")
cocktail2 = Cocktail.create(name: "Tequila Sunrise", description: "1 tequila, 2 tequila, 3 tequila, floor (as they say)")
cocktail3 = Cocktail.create(name: "Whiskey Sour", description: "Strong and full o' whiskey")
cocktail4 = Cocktail.create(name: "Bloody Mary", description: "Vodka. It's for breakfast.")
cocktail5 = Cocktail.create(name: "Git & Tonic", description: "For when you want to get turnt without the calories")
cocktail6 = Cocktail.create(name: "Dirty Martini", description: "Extra olives, please!")
cocktail7 = Cocktail.create(name: "Long Island", description: "Little bit of everything")
cocktail8 = Cocktail.create(name: "Flatiron Fog", description: "For a day when you've had one too many labs")
cocktail9 = Cocktail.create(name: "404", description: "No error here. You picked a good one.")
cocktail10 = Cocktail.create(name: "Ruby on the Rocks", description: "Rails can only offer so much")
cocktail11 = Cocktail.create(name: "Jack & Code", description: "The classic you're thinking of, with a new name")
cocktail12 = Cocktail.create(name: "WeWorkWhiskey", description: "Do (or drink) what you love")
cocktail13 = Cocktail.create(name: "The Paul", description: "Guaranteed sass with every glass")
cocktail14 = Cocktail.create(name: "Mod Margarita", description: "May or may not give you the confidence for your next code challenge")
cocktail15 = Cocktail.create(name: "Code Fashioned", description: "The most abstract of cocktails")


drink_flavors = ["refreshing", "tart", "savory", "fruit", "strong", "spicy", "sweet", "fizzy", "licorice", "herbal", "vegetal", "bitter", "unusual", "floral", "smoky"]

drink_flavors.each do |flavor|
  Flavor.create(keyword: flavor)
end

post1 = Post.create!(user: User.all.sample, cocktail: cocktail1, image_url: 'https://cdn.liquor.com/wp-content/uploads/2016/07/14070101/aviation-720FB.jpg')
post2 = Post.create(user: User.all.sample, cocktail: cocktail2, image_url: 'https://www.saveur.com/sites/saveur.com/files/styles/1000_1x_/public/copper-king-6_2000x1500.jpg?itok=vMhh96oB&fc=50,50')
post3 = Post.create(user: User.all.sample, cocktail: cocktail3, image_url: "https://cdn.liquor.com/wp-content/uploads/2011/07/05125158/fa-Whiskey-Sour.jpg")
post4 = Post.create(user: User.all.sample, cocktail: cocktail4, image_url: "https://cdn.liquor.com/wp-content/uploads/2017/09/01105541/classic-bloody-mary-720x720-recipe.jpg")
post5 = Post.create(user: User.all.sample, cocktail: cocktail5, image_url: "https://www.thespruceeats.com/thmb/YlhdecRcUlxy5o5TFfcmqv1CQiw=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/gin-tonic-5a8f334b8e1b6e0036a9631d.jpg")
post6 = Post.create(user: User.all.sample, cocktail: cocktail6, image_url: "https://3xpz6dj5ws61vi7id1lg5vte-wpengine.netdna-ssl.com/wp-content/uploads/2013/12/dirtymartini4.jpg")
post7 = Post.create(user: User.all.sample, cocktail: cocktail7, image_url: "https://cdn.liquor.com/wp-content/uploads/2018/07/30080352/long-island-720x720-recipe.jpg")
post8 = Post.create(user: User.all.sample, cocktail: cocktail8, image_url: "https://s3.us-east-2.amazonaws.com/chrissy-tuxedo-no2/1500x861recipe-fog-cutter-cocktail-recipe.jpg")
post9 = Post.create(user: User.all.sample, cocktail: cocktail9, image_url: "https://assets.bonappetit.com/photos/57acbeaa1b33404414975151/16:9/w_1200,c_limit/pineapple-hibiscus-cocktail.jpg")
post10 = Post.create(user: User.all.sample, cocktail: cocktail10, image_url: "https://www.the5oclockchef.com/wp-content/uploads/2018/01/Love-Potion-Vodka-Cocktail-feat-400x500.jpg")
post11 = Post.create(user: User.all.sample, cocktail: cocktail11, image_url: "https://upserve.com/media/sites/2/bigstock-Cocktail-With-Cola-And-Ice-97105607-1100x600.jpg")
post12 = Post.create(user: User.all.sample, cocktail: cocktail12, image_url: "https://assets.punchdrink.com/wp-content/uploads/2014/01/Improved-Whiskey.jpg")
post13 = Post.create(user: User.all.sample, cocktail: cocktail13, image_url: "https://www.supergoldenbakes.com/wordpress/wp-content/uploads/2017/07/Knickerbocker-2.jpg")
post14 = Post.create(user: User.all.sample, cocktail: cocktail14, image_url: "https://thecookful.com/wp-content/uploads/2015/08/Classic-Margarita-Rocks-DSC_2772-edit-portrait-680.jpg")
post15 = Post.create(user: User.all.sample, cocktail: cocktail15, image_url: "https://cdn.liquor.com/wp-content/uploads/2018/05/08113350/bourbon-old-fashioned-720x720-recipe.jpg")

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



like1 = Like.create(post: Post.all.sample,
  user: User.all.sample,
  if Like.where()
)
like2 = Like.create(post: Post.all.sample, user: User.all.sample)
like3 = Like.create(post: Post.all.sample, user: User.all.sample)
like4 = Like.create(post: Post.all.sample, user: User.all.sample)
like5 = Like.create(post: Post.all.sample, user: User.all.sample)
like6 = Like.create(post: Post.all.sample, user: User.all.sample)
like7 = Like.create(post: Post.all.sample, user: User.all.sample)
like8 = Like.create(post: Post.all.sample, user: User.all.sample)
like9 = Like.create(post: Post.all.sample, user: User.all.sample)
like10 = Like.create(post: Post.all.sample, user: User.all.sample)
