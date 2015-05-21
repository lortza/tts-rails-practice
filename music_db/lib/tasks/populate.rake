namespace :db do 
  desc "Clear existing data and populate with Faker data"
  task :populate => :environment do
    require "populator" #calling in gem populator
    require "faker" #calling in gem faker

    [Artist, Song].each(&:destroy_all) #destroys data from these tables

    genre_array = [1, 2, 3, 4, 5, 6, 7, 8]

    Artist.populate 10 do |xartist|
      xartist.name = Faker::Name.name
      xartist.genre_id = genre_array.sample
      xartist.bio = Faker::Lorem.paragraph(2)

      # Add Songs
      Song.populate 1..10 do |xsong|
        xsong.name = Faker::Company.catch_phrase
        xsong.artist_id = xartist.id
      end # song.populate
    end # artist.populate

  end # task
end # namespace