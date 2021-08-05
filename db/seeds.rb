# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create!(
  name: "",
  scientific_name: "",
  description: "",
  cover_picture: "",
  care: "",
  temperature: "",
  light: 1,
  watering_schedule: 1440 ,
  toxicity: ""
)
