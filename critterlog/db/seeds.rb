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

Guardian.create(name: "Sabina", city: "Isla Mujeres", country_id: 1)
Guardian.create(name: "Rigo", city: "Léon", country_id: 2)
Guardian.create(name: "JohnBecky", city: "NOLA", country_id: 4)

Critter.create(name: 'Miko', breed: "dog", hobbies: "chasing horses, gnawing on trees", guardian_id: 1)
Critter.create(name: 'Yolanda', breed: "cat", hobbies: "hiding under the bed, being invisible", guardian_id: 2)
Critter.create(name: 'da PC', breed: "cat", hobbies: "ducking under cars", guardian_id: 3)
