# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
drink_flavors = ["refreshing", "tart", "savory", "fruit", "strong", "spicy", "sweet", "fizzy", "licorice", "herbal", "vegetal", "bitter", "unusual", "floral", "smoky"]

user1 = User.create(email: "abc123@gmail.com", first_name: "Anna", last_name: "Conaway", username: "annaconaway", password: "password", age: 27)
user2 = User.create(email: "12345@gmail.com", first_name: "Jason", last_name: "Campbell", username: "jasoncampbell", password: "pw123", age: 32)

cocktail1 = Cocktail.create(name: "Purple People Eater", description: "Fizzy and delish")
cocktail2 = Cocktail.create(name: "Tequila Sunrise", description: "Fruity and strong")

post1 = Post.create(user_id: 1, cocktail_id: 1, keyword1: drink_flavors.sample, keyword2: drink_flavors.sample, image_url: 'https://cdn.liquor.com/wp-content/uploads/2016/07/14070101/aviation-720FB.jpg')
post1 = Post.create(user_id: 2, cocktail_id: 2, keyword1: drink_flavors.sample, keyword2: drink_flavors.sample, image_url: 'https://www.saveur.com/sites/saveur.com/files/styles/1000_1x_/public/copper-king-6_2000x1500.jpg?itok=vMhh96oB&fc=50,50')
