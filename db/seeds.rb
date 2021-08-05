# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create!(
  name: "Tayo Vase Plant",
  scientific_name: "Aechmea Tayoensis",
  description: "I have compact and broad, mid-green foliage, with a muted red, spiky rosette shaped flower.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Aechmea_Tayoensis_1200x1200.jpg",
  care: "I like humidity so please occasionally spray me with water.",
  temperature: "Keep me away from draughts and in temperatures of between 18 and 24°C.",
  light: 1,
  toxicity: "Keep me away from pets and children as I am toxic",
  watering_schedule: 2,
)

Plant.create!(
  name: "African Milk Tree",
  scientific_name: "Euphorbia Trigona",
  description: "My stems have three wing-like angles and carry short, sharp spines as well as leaves. Given the right conditions I can grow into an impressive tree.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Euphorbia_Rubra_1200x1200.jpg",
  care: "As a tree, I can live for a very a long time so take good care of me.",
  temperature: "I don't like the cold and should be kept above 13°C.",
  light: 3,
  toxicity: "Keep me away from pets and children.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Anthurium Jungle King",
  scientific_name: "Anthurium ellipticum",
  description: "I am one of close to 1000 species of Anthurium found in the wild. My large, paddle-shaped leaves are the perfect jungle shape.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/jungleking_1200x1200.jpg",
  care: "If you notice my leaves turning yellow, you're probably overwatering me. If they turn crispy at the edges, increase himudity around me and mist me.",
  temperature: "I like it warm so no rooms below 16°C please!",
  light: 1,
  toxicity: "I am toxic so please don't eat me.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Basket Plant",
  scientific_name: "Callisia fragans",
  description: "My name means 'beautiful lily' in Latin but I'm actually a Tradescantia, making me a fast grower and easy to care for. I also get beautiful white blooms if you treat me nicely.
I am prized for my compact symmetry and paddle shaped leaves. Though I can grow bananas in the wild, you are unlikely to see any from me in your house.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Callisia-sub-YinYang_1200x1200.jpg",
  care: "Repot me yearly as I'm a voracious grower. You can also propagate me easily from stem cuttings.",
  temperature: "I like it on the warmer side, so no temperatures lower than 15°C please.",
  light: 2,
  toxicity: "I am perfectly pet-friendly!",
  watering_schedule: 2,
)

Plant.create!(
  name: "Torch Aloe Arista",
  scientific_name: "Aristaloe aristata",
  description: "Find all the care information you need about the Torch Aloe (Aloe Aristata) on our Bloombox Club A-Z of plant care. And don’t forget to check our shop for a big range of indoor plants.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Torch_Aloe_in_pot_1200x1200.jpg",
  care: "I'm low maintenance and should be able to cope with most temperatures.",
  light: 3,
  toxicity: "Don't eat me, this could cause severe discomfort!",
  watering_schedule: 1,
)

Plant.create!(
  name: "Urn Plant",
  scientific_name: "Aechmea fasciata",
  description: "My star quality is the long-lasting pink flower I produce, which contrasts nicely with my surrounding grey-green marbled foliage. In the wild, I naturally grow on the branches of trees.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Urn_1200x1200.jpg",
  care: "As a bromeliad, once my flower fades, it won't come back. However, I will produce offsets (pups) at the base section which can be propagated when they reach about 15cm tall.",
  light: 2,
  toxicity: "I am not known to be toxic.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Vanilla Orchid",
  scientific_name: "Vanilla planifolia",
  description: "I am a climbing orchid and one of the main sources for vanilla flavouring. I have long trailing vines with narrow leaves that finish in a point. Vanilla Orchid's are relatively rare anyway, but especially those with variegated leaves like mine.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Vanilla-Orchid_1200x1200.jpg",
  care: "Because I like moist soil, I can be prone to root rot. Re-pot me yearly and check my roots. Also look out for spider mites and mealybugs.",
  light: 2,
  toxicity: "As a rare plant, little information is available but its orchid relatives are listed as non-toxic.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Wax Plant",
  scientific_name: "Australis",
  description: "I have thick waxy looking round shaped leaves and white star-like flowers.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Hoya-Australis_1200x1200.jpg",
  care: "I am susceptible to root rot so don't overwater me.
",
  light: 1,
  toxicity: "Keep me away from pets and children as I am toxic.",
  watering_schedule: 1,
)
