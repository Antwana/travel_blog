# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Blog.destroy_all
Comment.destroy_all

blogs = Blog.create([{user_name: 'Jai', title: 'My time in Chile', country: 'Chile', city: 'Santiago', place: 'La Moneda Palace', article: 'I really enjoyed my time in Santigo. During that time, I was a graduate student traveling with my cohort as required for my major. Although we did not have a lot of time to go sight-seeing, I did manage to explore a few places. One was La Moneda Palace which I absolutely loved. Palacio de La Moneda is the seat of the President of the Republic of Chile.', photo_url: 'http://photos.wikimapia.org/p/00/02/55/52/52_big.jpg', date_traveled: 'May 2015'},
  {user_name: 'Marshall', title: "A visit to Kunstmuseum", country: 'Norway', city: 'Trondheim', place: 'Trondheim Kunstmuseum', article: 'The Trondheim Kunstmuseum in Norway. I visited this museum while on a tour in Norway with several friends. We were impressed with the selection of international ans regional art.', photo_url: 'app/assets/images/IMG_1080-1.JPG', date_traveled: 'March 2016',}])

comments = Comment.create([{
  name: 'Marshall', user_comments: 'Great Article!!!', blog_id: blogs[0]},
  {name: 'Kim', user_comments: 'Love this! I plant to visit soon', blog_id: blogs[0]},
  {name: 'Ada', user_comments: 'This is Great!', blog_id: blogs[1]}])

p "Created #{Blog.count} entries"
p "Created #{Comment.count} entries"
# Blog.create!([{
#   user_name: "Jai",
#   title: "My Time in Chile",
#   country: "Chile",
#   city: "Santiago",
#   place: "La Moneda Palace",
#   article: "I really enjoyed my time in Santigo. During that time, I was a graduate student traveling with my cohort as required for my major. Although we didn't have a lot of time to go sight-seeing, I did manage to explore a few places. One was La Moneda Palace which I absolutely loved. Palacio de La Moneda is the seat of the President of the Republic of Chile.",
#   photo_url: "http://photos.wikimapia.org/p/00/02/55/52/52_big.jpg",
#   date_traveled: "May 2015",
#   date_created:
#   },
#   {
#   user_name: "Marshall",
#   title: "A Visit to Kunstmuseum",
#   country: "Norway",
#   city: "Trondheim",
#   place: "Trondheim Kunstmuseum",
#   article: "The Trondheim Kunstmuseum in Norway. I visited this museum while on a tour in Norway with several friends. We were impressed with the selection of international ans regional art.",
#   photo_url: "app/assets/images/IMG_1080-1.JPG",
#   date_traveled: "March 2016",
#   date_created:
#     }
#     ])
