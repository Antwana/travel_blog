# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Blog.destroy_all
Comment.destroy_all

Blog.create!([{
  user_name: "Jacintha Wadlington",
  title: "My Time in Chile",
  country: "Chile",
  city: "Santiago",
  place: "La Moneda Palace",
  article: "I really enjoyed my time in Santigo. During that time, I was a graduate student traveling with my cohort as required for my major. Although we didn't have a lot of time to go sight-seeing, I did manage to explore a few places. One was La Moneda Palace which I absolutely loved. Palacio de La Moneda is the seat of the President of the Republic of Chile.",
  photo_url: "http://photos.wikimapia.org/p/00/02/55/52/52_big.jpg",
  date_traveled: "May 2015",
  date_created:
  }])
