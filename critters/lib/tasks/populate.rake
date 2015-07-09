# FIRST: change filename to populate.rake

namespace :db do

  desc "Clear the DB and fill with sample data"
  task :populate => :environment do
    #requires these gems
    require "populator"
    require "faker"

    #destroys all existing data from these models
    [Country, Owner, Critter].each(&:destroy_all)

    # my own sets data that Faker doesn't have
    CRITTER_NAMES = ["Rupert", "Miko", "Lara", "Mara", "Hemi", "Yolanda", "Lulu", "Max", "Noche", "Zorro", "PorkChop", "Maudie", "Dixie", "Millie", "Termie", "Gracie", "PennyDoog", "Oscar", "Trip"]

    # CRITTER_TYPES = ["Cat", "Dog", "Lizard", "Termite", "Milipede", "Hermit Crab", "Snake", "Gecko", "Howler Monkey", "Bat", "Horse", "Cow", "Llama", "Alpaca", "Sheep", "Goat", "Elephant", "Ocelot" ]

    CRITTER_TYPE_ID =[1, 2, 3, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]

    #add Faker Gem content for Countries, Owners, Critters
    Country.populate 4 do |x|
      x.name = Faker::Address.country

      Owner.populate 3 do |y|
        y.country_id = x.id #assigns owner to country
        y.name = Faker::Name.first_name
        y.city = Faker::Address.city

        Critter.populate 1..3 do |z|
          z.type_id = CRITTER_TYPE_ID.sample
          z.owner_id = y.id #assigns critter to owner
          z.name = CRITTER_NAMES.sample
          z.hobby = Faker::Lorem.paragraph
          z.photo_url = "https://www.severnedgevets.co.uk/wp-content/uploads/2014/09/photo-placeholder-pets.png"

        end #critter
      end #owner
    end #city


  end #task
end #namespace