# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  Artwork.destroy_all
  ArtworkShare.destroy_all

  User.create!(username: 'ujwal')
  User.create!(username: 'danny')
  User.create!(username: 'jane')

  Artwork.create!(title: 'Mona Lisa', artist_id: 25, image_url: 'monalisa.com')
  Artwork.create!(title: 'Last Supper', artist_id: 25, image_url: 'lastsupper.com')
  Artwork.create!(title: 'Mid Summer Nights Dream', artist_id: 26, image_url: 'midsummer.com')
  
  ArtworkShare.create!(viewer_id: 24, artwork_id: 7)
  ArtworkShare.create!(viewer_id: 25, artwork_id: 9)
  ArtworkShare.create!(viewer_id: 26, artwork_id: 7)
  ArtworkShare.create!(viewer_id: 24, artwork_id: 8)
end
