# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


chinese = Category.where(name: "Chinese").first_or_create(name: "Chinese")
european = Category.where(name: "European").first_or_create(name: "European")
indian = Category.where(name: "Indian").first_or_create(name: "Indian")
japanese = Category.where(name: "Japanese").first_or_create(name: "Japanese")
korean = Category.where(name: "Korean").first_or_create(name: "Korean")
muslim = Category.where(name: "Muslim").first_or_create(name: "Muslim")

Restaurant.where(name: "Chatterbox").first_or_create(name: "Chatterbox", description: "chicken rice", city: "Orchard", state:"Singapore", category_id: chinese.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: chinese.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: chinese.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: chinese.id)

Restaurant.where(name: "Kentucky Fried Chicken").first_or_create(name: "Kentucky Fried Chicken", description: "fried chicken", city: "Bedok", state:"Singapore", category_id: european.id)
Restaurant.where(name: "Macdonald's").first_or_create(name: "Macdonald's", description: "burgers", city: "East Coast", state:"Singapore", category_id: european.id)
Restaurant.where(name: "Subway").first_or_create(name: "Subway", description: "sandwiches", city: "Jurong East", state:"Singapore", category_id: european.id)
Restaurant.where(name: "Arnold fried chicken").first_or_create(name: "Arnold fried chicken", description: "fried chicken", city: "Yishun", state:"Singapore", category_id: european.id)

Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: indian.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: indian.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: indian.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: indian.id)

Restaurant.where(name: "The Sushi Bar").first_or_create(name: "The Sushi Bar", description: "sushi", city: "Orchard", state:"Singapore", category_id: japanese.id)
Restaurant.where(name: "Mos Burgers").first_or_create(name: "Mos Burgers", description: "burgers", city: "Orchard", state:"Singapore", category_id: japanese.id)
Restaurant.where(name: "Ichiban Boshi").first_or_create(name: "Ichiban Boshi", description: "japanese food", city: "East Coast", state:"Singapore", category_id: japanese.id)
Restaurant.where(name: "Kotobuki Restaurant").first_or_create(name: "Kotobuki Restaurant", description: "japanese food", city: "East Coast", state:"Singapore", category_id: japanese.id)

Restaurant.where(name: "Ju Shin Jung Korean Restaurant").first_or_create(name: "Ju Shin Jung Korean Restaurant", description: "korean food", city: "East Coast", state:"Singapore", category_id: korean.id)
Restaurant.where(name: "Yong Kin Wah").first_or_create(name: "Yong Kin Wah", description: "korean food", city: "Bedok", state:"Singapore", category_id: korean.id)
Restaurant.where(name: "Oppa BBQ").first_or_create(name: "Oppa BBQ", description: "korean food", city: "Jurong East", state:"Singapore", category_id: korean.id)
Restaurant.where(name: "Seoul Garden").first_or_create(name: "Seoul Garden", description: "korean food", city: "Yishun", state:"Singapore", category_id: korean.id)

Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: muslim.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: muslim.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: muslim.id)
Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city: "Yishun", state:"Singapore", category_id: muslim.id)
