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