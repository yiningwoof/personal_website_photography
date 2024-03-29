# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

maples = Photo.create(
    title: "Lost Maples",
    category: "Texas Nature",
    location: "Lost Maples State Park, TX",
    year: 2018
)
maples.photo.attach(io: File.open("./public/test.jpg"), filename: "test.jpg", content_type: "image/jpg")