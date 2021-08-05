# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create!(
  name: "Calathea Vittata",
  scientific_name: "Calathea elliptica 'Vittata'",
  description: "I am a rarer member of the Calathea family with bright green elliptical leaves featuring sleek white stripes that look hand-painted.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/CalatheaVittata2_1200x1200.jpg?v=1588097502",
  care: "High humidity levels are a must. Stand on a wet pebble tray to improve humidity and mist frequently. Pop it in the shower from time to time to give an extra boost.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C. Please keep me away from draughts!",
  light: 2,
  watering_schedule: 2 ,
  toxicity: "Good news: I am pet friendly!"
)

Plant.create!(
  common_name: "Chinese Evergreen",
  scientific_name: "Aglaonema 'Diamond Bay'",
  description: "I am one of 21 members of the Chinese Evergreen family. We are all tough, good looking and the perfect combo of striking foliage and low maintenance.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Alaonema_First_Diamond_201808_1200x1200.jpg?v=1563896053",
  care: "Yellowing leaves is what I suffer from most. This can be due to over or under watering. Make sure my soil is moist but not wet and I should be all good.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C.",
  light: 1,
  toxicity: "My leaves contain insoluble calcium oxalates which are poisonous to pets and children if ingested, so best to keep me away from nibblers.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Chinese Evergreen 'Crete'",
  scientific_name: "Aglaonema 'Crete'",
  description: "I am a small-batch, patented Chinese Evergreen. If you see an Aglaonema at indoor plant shops, I'll probably be my more-common geen and yellow cousin. My variegated red, yellow and green colouring is what marks me out as unusual. My leaves are lush and full, but I'm also compact so I can be slotted into tight crevices, which I'll immediately brighten up.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/costa-farms-house-plants-6agcreta-64_1000_1200x1200.jpg?v=1564515773",
  care: "Although I can last in low humidity, I'll grow better in a humid environment so keep me somewhere warm and mist my leaves with a spray bottle.",
  temperature: "Keep me away from draughts and in temperatures of between 18 and 24°C.",
  light: 2,
  watering_schedule: 2 ,
  toxicity: "Keep me away from pets and children as I am toxic."
)

Plant.create!(
  name: "Chinese Evergreen 'Cutlass'",
  scientific_name: "Aglaonema 'Cutlass'",
  description: "I am one of 21 members of the Chinese Evergreen genus. We are all tough, good looking and the perfect combo of striking foliage and low maintenance. I'll make a statement whichever room you place me in.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/AglaonemaCutlass_1200x1200.jpg?v=1578323525",
  care: "If you notice the tips of my leaves turning brown, it could be because there's too much fluoride, chlorine and salt in your tap water. Leave the water in an open container overnight or give me rainwater.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C.",
  light: 1,
  watering_schedule: 2 ,
  toxicity: "My leaves contain insoluble calcium oxalates which are poisonous to pets and children if ingested, so best to keep me away from nibblers."
)

Plant.create!(
  name: "Neon Pothos",
  scientific_name: "Epipremnum aureum Neon",
  description: "I have the same elongated-heart-shaped leaves as other Pothos but I can be easily told apart by my electric yellow leaves.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Neon_Pothos_1200x1200.jpg?v=1564228415",
  care: "If I'm getting too long or a bit straggly, take sharp shears and give me a trim.",
  temperature: "I like to be kept warm, ideally between 16 and 27°C.",
  light: 2,
  watering_schedule: 1,
  toxicity: "Keep me away from pets and children."
)

Plant.create!(
  name: "Pencil Cactus",
  scientific_name: "Euphorbia Tirucalli",
  description: "I am actually a succulent and not a cactus and have a myriad of common names - Milk Bush, Firestick Plant, Indian Tree Spurge and even Naked Lady!",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Pencil-cactus_1200x1200.jpg?v=1575298359",
  care: "I am super hardy and require very little care. I am easy to propoagate - just cut a stem and stick it in soil.",
  temperature: "As an African native, I like it warm but live comfortably in rooms above 15 degrees C. Keep me away from draughts please.",
  light: 3,
  watering_schedule: 3 ,
  toxicity: "My sap/milk is very poisonous, so keep me away from pets and kids and wash your hands if it gets on your skin."
)

Plant.create!(
  name: "Philodendron Shangri-La",
  scientific_name: "Philodendron bipinnatifidum Shangri-La",
  description: "I am a super easy-going, fuss-free plant with glossy leaves that transform any space into a tropical paradise.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Philo-ShangriLa_1200x1200.jpg?v=1590760313",
  care: "I can develop root rot if you water me too much or leave me sitting in water.",
  temperature: "Room temperatures of 16-24°C are perfect.",
  light: 2,
  watering_schedule: 2,
  toxicity: "I am toxic so please don't eat me."
)

Plant.create!(
  name: "Pitcher Plant",
  scientific_name: "Sarracenia",
  description: "I have tall, narrow pitchers which attract insects with my bright colours and inviting scents, only to snap them up later!",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Pitcher_Plant_201810_1200x1200.jpg?v=1564231591",
  care: "I prefer peat moss mixed with either lime-free horticultural sand or perlite, to a ratio of about 2:1.",
  temperature: "I am fairly temperature tolerant but keep me away from strong draughts.",
  light: 3,
  watering_schedule: 1,
  toxicity: "Good news: I'm considered non-toxic so should be okay around pets, as long as they don't eat me whole!"
)
