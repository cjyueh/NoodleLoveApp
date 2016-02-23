# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# seeding db with list of noodle dishes
Dish.create({dish_name: "Garlic Noodles", cuisine_type: "Vietnamese"})
Dish.create({dish_name: "Spaghetti Bolognese", cuisine_type: "Italian"})
Dish.create({dish_name: "Bun Bo Hue", cuisine_type: "Vietnamese"})
Dish.create({dish_name: "Jap Chae", cuisine_type: "Korean"})
Dish.create({dish_name: "Beef Chow Fun", cuisine_type: "Chinese"})
Dish.create({dish_name: "Fried Eggplant Oroshi Udon", cuisine_type: "Japanese"})
Dish.create({dish_name: "Pad Kee Maw", cuisine_type: "Thai"})

# seeding db with list of reviews
# Review.create({restaurant_name: "Crustacean", dish_rating: 5, dish_review: "Great dish.", dish_image: "http://www.nobiggie.net/wp-content/uploads/2012/09/garlic-noodles.jpg", dish: 1, user_id: 1})
# Review.create({restaurant_name: "Crustacean", dish_rating: 3, dish_review: "Just ok.", dish_image: "https://41.media.tumblr.com/tumblr_m8xdnutfa81rtx3pyo1_500.jpg", dish: 1, user_id: 2})