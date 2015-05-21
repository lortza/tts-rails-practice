namespace :db do 

  desc "Clear the DB and fill with sample data"
  task :populate => :environment do
    require "populator"
    require "faker"

    DOG_NAMES = ["Rupert", "Miko", "Lara", "Mara", "Lulu", "Frankie", "Spot", "Rover", "Nina", "Hemi"]

    # destroys all existing data
    [Owner, Dog].each(&:destroy_all)

    # Add Faker content
    # Add Owners
    Owner.populate 10 do |x|
      x.name = Faker::Name.name
      x.phone = Faker::PhoneNumber.phone_number
      # Add Dogs
      Dog.populate 1..5 do |y|
        y.owner_id = x.id #assigns dogs to owners
        y.name = DOG_NAMES.sample
        y.breed = Faker::App.name
        y.age = rand(0..20)
      end # Dog
    end # each Owner
  end # task
end # namespace