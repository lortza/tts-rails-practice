# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserTask.create(description: "brush the dog", due: "20130118061017")
UserTask.create(description: "feed the cat", due: "20150118061017")
UserTask.create(description: "find the hamster", due: "20150118061017")