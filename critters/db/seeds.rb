# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Country.create(name: "Mexico")
Country.create(name: "Nicaragua")
Country.create(name: "Panama")
Country.create(name: "US")

Type.create(name: "Dog")
Type.create(name: "Cat")
Type.create(name: "Reptile")
Type.create(name: "Insect")

Owner.create(name: "Sabina", city: "Isla Mujeres", country_id: 1)
Owner.create(name: "Rigo", city: "Léon", country_id: 2)
Owner.create(name: "JohnBecky", city: "NOLA", country_id: 4)
Owner.create(name: "NicaDons", city: "Granada", country_id: 2)
Owner.create(name: "Nanette", city: "Todos Santos", country_id: 1)

Critter.create(name: 'Miko', type_id: 1, hobby: "chasing horses, gnawing on trees", owner_id: 1, photo_url: "http://content.purseblog.com/images/coach-legacy-stripe-dog-sweater.jpg")
Critter.create(name: 'Yolanda', type_id: 2, hobby: "hiding under the bed, being invisible", owner_id: 2, photo_url: "https://pbs.twimg.com/profile_images/424484505915621376/EOwsjaMZ_400x400.png")
Critter.create(name: 'da PC', type_id: 2, hobby: "ducking under cars", owner_id: 3, photo_url: "https://pbs.twimg.com/profile_images/2422342690/dkaexbalynwrfhm8ftou_400x400.jpeg")