# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create!(
  common_name: "Aechmea 'Blue Rain'",
  scientific_name: "Blue Rain Bromeliad",
  description: "I am easily identified by my vibrant neon flowers. When this central bud fades, I will still have plums of glossy (but rough to touch) green foliage. You may also see little pups in my soil which can grow into new plants.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Aechmea_Blue_Rain_201807_1200x1200.jpg",
  care: "I can last for many years with the right care. I'm as spectacular as I am easy to look after.",
  temperature: "I thrive in a warm and a humid atmosphere, don't let me get below 15°C.",
  light: 1,
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 1,
)

Plant.create!(
  common_name: "Calathea 'Dottie'",
  scientific_name: "Calathea Roseopicta 'Dottie'",
  description: "My deep purple leaves are marked with pink stripes: one down the middle, a single ring towards the edges and several connecting the two. Calathea 'Dottie' is almost identical to the Calathea Angela, genetically, but it has very different colours.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Purple_Calathea_201808_1200x1200.jpg",
  care: "High humidity levels are a must. Stand on a wet pebble tray to improve humidity and mist frequently. Pop it in the shower from time to time to give an extra boost.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C. Please keep me away from draughts!",
  light: 2,
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Calathea 'Silvia'",
  scientific_name: "Calathea Roseopicta 'Silvia'",
  description: "You can tell I'm a Rosepicta because I have little lines coming out from the centre of my leaves. My leaves are purple underside, while on top, pale green bleeds into darker green, flecked with pink lines.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/thumbnail_Calathea_-_large_201810_1200x1200.jpg",
  care: "High humidity levels are a must. Stand on a wet pebble tray to improve humidity and mist frequently. Pop it in the shower from time to time to give an extra boost.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C. Please keep me away from draughts!",
  light: 2,
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Shadow plant",
  scientific_name: "Calathea Leopardina",
  description: "Roar. I'm a leopardina. They call me that because my regularly spaces markings are reminiscent of an animal print. The base colour of my leaves is a bright, luminous green, while the markings are matte and darker.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Calathea_leopardina_1200x1200.jpg",
  care: "High humidity levels are a must. Stand on a wet pebble tray to improve humidity and mist frequently. Pop it in the shower from time to time to give an extra boost.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C. Please keep me away from draughts!",
  light: 2,
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Sensitive Plant",
  scientific_name: "Mimosa Pudica",
  description: "I'm famous for my shy sensibility. If you run your fingers along my leaves, they'll clam up, bashfully. To look after me well, keep me in a warm, humid atmosphere with plenty of light. I like my soil to be moist, but I need this moisture to be paired with heat.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Mimosa-Pudica_1200x1200.jpg",
  care: "I like humidity, which you can simulate by misting my leaves or popping me on a pebble tray. I want to be reminded of my tropical home.",
  temperature: "I like it hot! Temperatures of above 21 degrees are ideal but I can tolerate temperatures down to 13 degrees.",
  light: 3,
  toxicity: "I'm best kept away from children and pets.",
  watering_schedule: 3,
)

Plant.create!(
  common_name: "String of Dolphins",
  scientific_name: "Senecio peregrinus",
  description: "I am a beautiful succulent with leaves that resemble dolphins jumping out of the water, hence my common name. I am also sometimes called Dolphin Necklace, Dolphin Plant or Flying Dolphins.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/TrendSpotter_detail4_d1a2edeb-210d-493e-8a69-c5eb9bc5619f_1200x1200.jpg",
  care: "I am susceptible to root rot if overwatered so make sure my pot can drain and I'm not left sitting in water.",
  temperature: "Room temperatures of 16-24°C are perfect.",
  light: 2,
  toxicity: "I am toxic so please don't eat me.",
  watering_schedule: 1,
)

Plant.create!(
  common_name: "String of Turtles",
  scientific_name: "Peperomia Prostrata",
  description: "I am a miniature member of the Peperomia family with delicate leaves that resemble the shell of a turtle, hence my common name. My delicately patterned leaves will keep you staring for ages!",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Peperomia_Prostrata_1200x1200.jpg",
  care: "If you notice my leaves wilting, you're overwatering me. Let me soil dry out a little before giving me more water.",
  temperature: "I like normal room temperatures of between 16-23°C.",
  light: 3,
  toxicity: "Good news: I am pet-safe!",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Syngonium 'Trileaf Wonder'",
  scientific_name: "Syngonium Podophyllum",
  description: "I am an unusual Syngonium variety with leaves that start light green and develop into a deep, glossy green as they mature.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Peperomia_Prostrata_1200x1200.jpg",
  care: "I like a fair amount of humidity so please mist me.",
  temperature: "Room temperatures of 16-24°C are perfect. I don't like cold draughts!",
  light: 2,
  toxicity: "I am toxic like other Syngonium plants, so please don't eat me.",
  watering_schedule: 2,
)



































