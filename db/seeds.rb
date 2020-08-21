# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([artworks = Artwork.new() name: 'Star Wars' }, Activity.create!( name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all

require "open-uri"

file = URI.open('https://s.france24.com/media/display/b0deed42-a168-11e9-9e50-005056a98db9/w:1280/p:16x9/rembrandt-m.webp')

artworks = Artwork.new(

    name: "The Night Watch",
    artist_name: "Rembrandt",
    description: "Dutch Golden Age paintings",
    location: "Amsterdam, Netherlands",
    price_per_day: 50,
    user: User.first
  )
  artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  artworks.save!


file = URI.open('https://i.etsystatic.com/9356362/r/il/05b811/812878753/il_1588xN.812878753_kzkl.jpg')
  artworks = Artwork.new(
    name: "The Swing",
    artist_name: "Jean-Honoré Fragonard",
    description: "Accidents of the Swing",
    location: "London, Manchester Square",
    price_per_day: 35,
    user: User.first
  )
  artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  artworks.save!


file = URI.open('https://media.overstockart.com/optimized/cache/data/product_images/REM4775-1000x1000.jpg')
  artworks = Artwork.new(
    name: "Sea of Galilee",
    artist_name: "Rembrandt",
    description: "The Storm on the Sea of Galilee.",
    location: "United States, Boston",
    price_per_day: 30,
    user: User.first
  )
  artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  artworks.save!


file = URI.open('https://c8.alamy.com/comp/H3YTE1/painting-titled-bal-du-moulin-de-la-galette-by-pierre-auguste-renoir-H3YTE1.jpg')
  artworks = Artwork.new(
    name: "Le Moulin",
    artist_name: "Pierre-Auguste Renoir",
    description: "Bal du moulin de la Galette",
    location: "Paris, Musée d'Orsay",
    price_per_day: 40,
    user: User.first
  )
  artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  artworks.save!


file = URI.open('https://ae01.alicdn.com/kf/HTB1s0fRXULrK1Rjy0Fjq6zYXFXaO.jpg')
  artworks = Artwork.new(
    name: "Les Demoiselles",
    artist_name: "Pablo Picasso",
    description: "Created in 1907 by Picasso",
    location: "New York, The Museum of Modern Art",
    price_per_day: 30,
    user:  User.first
  )
  artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  artworks.save!


file = URI.open('https://ichef.bbci.co.uk/images/ic/1200x675/p02ycl21.jpg')
  artworks = Artwork.new(
    name: "The folies-bergère",
    artist_name: "Edouard Manet",
    description: "The courtauld gallery",
    location: "London, Covent Garden",
    price_per_day: 40,
    user: User.first
  )
  artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  artworks.save!


file = URI.open('https://sothebys-com.brightspotcdn.com/3f/5a/b8b06f534d3890eda8c478b52436/ce9ac9d7c2b0403f8c5d582487da5377/poster.jpg')
  artworks = Artwork.new(
    name: "Las meninas",
    artist_name: "Diego velázquez",
    description: "The prado museum",
    location: "London, Oxford Street",
    price_per_day: 25,
    user: User.first
  )
  artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  artworks.save!


