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

cocktail1 = Cocktail.create(name: "Purple People Eater", description: "Fizzy and delish")
cocktail2 = Cocktail.create(name: "Tequila Sunrise", description: "Fruity and strong")
cocktail3 = Cocktail.create(name: "Whiskey Sour", description: "Strong and full o' whiskey")

post1 = Post.create!(user: User.all.sample, cocktail: Cocktail.all.sample, image_url: 'https://cdn.liquor.com/wp-content/uploads/2016/07/14070101/aviation-720FB.jpg' )

post2 = Post.create(user: User.all.sample, cocktail: Cocktail.all.sample, image_url: 'https://www.saveur.com/sites/saveur.com/files/styles/1000_1x_/public/copper-king-6_2000x1500.jpg?itok=vMhh96oB&fc=50,50')

post3 = Post.create(user_id: 3, cocktail_id: 3, image_url: "https://cdn.liquor.com/wp-content/uploads/2011/07/05125158/fa-Whiskey-Sour.jpg")

drink_flavors = ["refreshing", "tart", "savory", "fruit", "strong", "spicy", "sweet", "fizzy", "licorice", "herbal", "vegetal", "bitter", "unusual", "floral", "smoky"]

drink_flavors.each do |flavor|
  Flavor.create(keyword: flavor)
end

post_flavor1 = PostFlavor.create(post: Post.all.sample, flavor: Flavor.all.sample)
post_flavor2 = PostFlavor.create(post: Post.all.sample, flavor: Flavor.all.sample)
post_flavor3 = PostFlavor.create(post: Post.all.sample, flavor: Flavor.all.sample)
post_flavor4 = PostFlavor.create(post: Post.all.sample, flavor: Flavor.all.sample)
post_flavor5 = PostFlavor.create(post: Post.all.sample, flavor: Flavor.all.sample)


ing1 = Ingredient.create(name: "purple drank", quantity: "3 oz")
ing2 = Ingredient.create(name: "lemonade", quantity: "5 oz")
ing3 = Ingredient.create(name: "blueberry", quantity: "handful")
ing4 = Ingredient.create(name: "tequila", quantity: "3 oz")
ing5 = Ingredient.create(name: "grenadine", quantity: "2 oz")
ing6 = Ingredient.create(name: "orange juice", quantity: "2 oz")

cocktail_ing1 = CocktailIngredient.create(cocktail_id: 1, ingredient_id: 1)
cocktail_ing2 = CocktailIngredient.create(cocktail_id: 1, ingredient_id: 2)
cocktail_ing3 = CocktailIngredient.create(cocktail_id: 1, ingredient_id: 3)
cocktail_ing4 = CocktailIngredient.create(cocktail_id: 2, ingredient_id: 4)
cocktail_ing5 = CocktailIngredient.create(cocktail_id: 2, ingredient_id: 5)
cocktail_ing6 = CocktailIngredient.create(cocktail_id: 2, ingredient_id: 6)
