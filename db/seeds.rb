# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([Activity.new() name: 'Star Wars' }, Activity.create!( name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all

require "open-uri"

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')

artworks = Artwork.new(

    name: "The Night Watch",
    artist_name: "Rembrandt",
    description: "Most famous Dutch Golden Age paintings.",
    location: "London",
    price_per_day: 50,
    user_id: 1
  )
  artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  artworks.save

  # Activity.new(
  #   name: "The Swing",
  #   artist_name: "Jean-Honoré Fragonard",
  #   description: "Also known as The Happy Accidents of the Swing.",
  #   location: "London",
  #   price_per_day: 35,
  #   user_id: 2
  # )
  # artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  # artworks.save

  # Activity.new(
  #   name: "Sea of Galilee",
  #   artist_name: "Rembrandt",
  #   description: " The Storm on the Sea of Galilee.",
  #   location: "Amsterdam",
  #   price_per_day: 30,
  #   user_id: 3
  # )
  # artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  # artworks.save


  # Activity.new(
  #   name: "Le Moulin de la Galette",
  #   artist_name: "Pierre-Auguste Renoir",
  #   description: "Bal du moulin de la Galette.",
  #   location: "Paris",
  #   price_per_day: 40,
  #   user_id: 4
  # )
  # artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  # artworks.save


  # Activity.new(
  #   name: "Les Demoiselles d'Avignon",
  #   artist_name: "Pablo Picasso",
  #   description: "Created in 1907 by the Spanish artist Pablo Picasso.",
  #   location: "New York",
  #   price_per_day: 30,
  #   user_id: 5
  # )
  # artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  # artworks.save


  # Activity.new(
  #   name: "A bar at the folies-bergère",
  #   artist_name: "Edouard Manet",
  #   description: "The courtauld gallery.",
  #   location: "London",
  #   price_per_day: 40,
  #   user_id: 6
  # )
  # artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  # artworks.save

  # Activity.new(
  #   name: "Las meninas",
  #   artist_name: "Diego velázquez",
  #   description: "The prado museum.",
  #   location: "Spain",
  #   price_per_day: 25,
  #   user_id: 7
  # )
  # artworks.photo.attach(io: file, filename: 'nes.png', content_type: 'images/the night watch.jpeg')
  # artworks.save


