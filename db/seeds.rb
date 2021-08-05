# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create!(
  common_name: "Coral Cactus",
  scientific_name: "Euphorbia Lactea Cristata",
  description: "I might look like a come from the sea, but I am actually a succulent hybrid. My tough steam gives way to a prickly fan, coloured either green or pink.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Coral_Cactus_pink_1200x1200.jpg?v=1563976389",
  care: "Please be careful handling me as I contain latex which is an irritant.",
  temperature: "Average indoor temperatures should be fine for me, just keep me away from draughts.",
  light: 3,
  toxicity: "Best keep me away from children and pets, because I am spikey.",
  watering_schedule: 1,
)

Plant.create!(
  common_name: "Croton Nervia",
  scientific_name: "Codiaeum variegatum Nervia",
  description: "I am one of the boldest houseplants around with rainbow-coloured foliage being my stand-out feature. Who needs flowers when you've got leaves like mine?",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Kroton_201807_1200x1200.jpg?v=1564340193",
  care: "When I get stressed I lose my leaves - if you've just brought me home, wait a few weeks to let me adjust. If I continue to lose my leaves, check that the air around me is not too dry and that I'm getting enough light.",
  temperature: "I like a warm, humid environment. Especially in Spring and Summer keep me moist but not sitting in water. You can mist me often.",
  light: 3,
  toxicity: "I can make you sick if you eat me so best to keep me away from pets and kids.",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Dark Green Beetle Radiator Plant",
  scientific_name: "Peperomia angulata ‘Rocca Scuro’",
  description: "I am a lesser seen member of the Peperomia genus. I sport fine, neatly-traced  leaves on long hanging stems.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Peperomia-angulata-Dark-Green-Beetle-Radiator-Plant-Leaves-Detail_600x_117caf41-933c-4537-bcf5-71def1007769_1200x1200.jpg?v=1622203027",
  care: "Overwatering is my most likely cause of illness. I can withstand droughts but overly wet soil can kill me.",
  temperature: "A warm environment is best, I'll suffer if I'm in a room below 12°C.",
  light: 1,
  toxicity: "Perfectly safe for all.",
  watering_schedule: 1,
)

Plant.create!(
  common_name: "Desert Rose",
  scientific_name: "Adenium obesum",
  description: "My common name is misleading - I am in no way related to a rose, but am actually a succulent. You may also hear me referred to as Mock Azalea and Sabi Star.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Adenium_1200x1200.jpg?v=1582721954",
  care: "If you repot me, please use well draining soil (ask for cactus soil). I am susceptible to root rot during winter so please don't overwater me",
  temperature: "I'm more than happy living in normal room temperatures of between 16-24 degrees C.",
  light: 3,
  toxicity: "All parts of me are poisonous if ingested so keep me away from nibbly pets and kids.",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Mother-In-Law's Tongue",
  scientific_name: "Sansevieria trifasciata",
  description: "This hardy desert plant is also commonly known as the Snake Plant due to the shape of it's leaves or Viper's Bowstring Hemp, as its fibres are used to make bowstrings. In Africa it is often used to weave baskets too.
The Sansevieria is also a great air purifier and humidity leveller - it extracts poisonous substances from the air and transforms them into oxygen.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Sansevieria_Geo_Pot_1024x1024_00548c3d-913d-4e4f-93c7-9948ad5b68b0_1200x1200.jpg?v=1554381652",
  care: "Get ready for a lifetime friendship - Sansevierias are notoriously hard to kill off. They are pretty pest-resistant too, so as long as you don't drown them, they're happy.",
  temperature: "It can withstand a wide range of temperatures but don't leave outdoors in British winters. It can take dry heat too so unlike most plants, is ok near a radiator.",
  light: 1,
  toxicity: "We can't imagine many pets would want to chew on the tough spikes, but if they do, they might get digestive discomfort.",
  watering_schedule: 1,
)

Plant.create!(
  common_name: "Long Leaf Fig",
  scientific_name: "Ficus maclellandii 'Alii'",
  description: "I am a new-ish cultivar, tougher and less of a diva than my Ficus cousins, I won't drop my leaves easily! My slender leaves make me a stylish addition to any home, plus I'm a quick grower so will easily add a touch of drama and scale.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Ficus_Alii_1200x1200.jpg?v=1572873080",
  care: "I am hardier than other Ficus plants but my leaves may drop if I'm not getting enough light or incorrect water amounts. I recover quickly though!",
  temperature: "Room temperatures of 16-24°C are perfect. I don't like cold draughts!",
  light: 1,
  toxicity: "I ooze latex which can be an irritant and my leaves are poisonous if ingested.",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Madagascar Jewel",
  scientific_name: "Euphorbia leuconeura",
  description: "I have attractive, dark green foliage, with white veins when young. These will fade a little as I age but by that point I'll be so impressively bushy you won't mind at all!",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Euphorbia-leuconeura_1200x1200.jpg?v=1564668674",
  care: "I'm a very easy plant to care for, as I'm technically a succulent.",
  temperature: "I don’t like the temperature around me to be less than 15°C.",
  light: 1,
  toxicity: "I am a toxic plant, not to touch, but if my leaves or stems are damaged the sap can be an irritant. Keep me away from pets and children.",
  watering_schedule: 1,
)

Plant.create!(
  common_name: "Mandarin Plant",
  scientific_name: "Chlorophytum Orchidastrum 'Fire Flash'",
  description: "A member of the Spider Plant family, I am easy to care for and grow, but much more dramatic than my (slightly drab) cousins!",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Mandarin-Plant_1200x1200.jpg?v=1580299656",
  care: "If you notice brown spots or edges on my leaves, it could be a sensitivity to chlorine and fluoride in tapwater. To combat this, collect rainwater or leave tap water in an open container overnight before giving me a drink.",
  temperature: "Room temperatures of 16-24°C are perfect. I don't like cold draughts!",
  light: 2,
  toxicity: "I am toxic so please don't eat me.",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Mandarin Plant",
  scientific_name: "Chlorophytum Orchidastrum 'Fire Flash'",
  description: "A member of the Spider Plant family, I am easy to care for and grow, but much more dramatic than my (slightly drab) cousins!",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Mandarin-Plant_1200x1200.jpg?v=1580299656",
  care: "If you notice brown spots or edges on my leaves, it could be a sensitivity to chlorine and fluoride in tapwater. To combat this, collect rainwater or leave tap water in an open container overnight before giving me a drink.",
  temperature: "Room temperatures of 16-24°C are perfect. I don't like cold draughts!",
  light: 2,
  toxicity: "I am toxic so please don't eat me.",
  watering_schedule: 2,
)

Plant.create!(
  common_name: "Lipstick Plant 'Mona Lisa'",
  scientific_name: "Aeschynanthus 'Mona Lisa'",
  description: "Like my famous namesake, I will keep you mesmerised and contemplative. My flowers are surrounded by dark green leaves, as though coming out of a dark tube; hence the moniker Lipstick Plant.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Lipstick_Plant_Mona_Lisa_1200x1200.jpg?v=1564086422",
  care: "The most common issue with me is leaf-drop - if more than the top inch of my soil is dry, please water me more. If you notice yellow leaves, I probably need more light.",
  temperature: "I'm happy with normal room temperature but keep me away from hot or cold draughts please.",
  light: 2,
  toxicity: "Good news: I am pet-safe!",
  watering_schedule: 1,
)

Plant.create!(
  common_name: "Lipstick Plant 'Mona Lisa'",
  scientific_name: "Aeschynanthus 'Mona Lisa'",
  description: "Like my famous namesake, I will keep you mesmerised and contemplative. My flowers are surrounded by dark green leaves, as though coming out of a dark tube; hence the moniker Lipstick Plant.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Lipstick_Plant_Mona_Lisa_1200x1200.jpg?v=1564086422",
  care: "The most common issue with me is leaf-drop - if more than the top inch of my soil is dry, please water me more. If you notice yellow leaves, I probably need more light.",
  temperature: "I'm happy with normal room temperature but keep me away from hot or cold draughts please.",
  light: 2,
  toxicity: "Good news: I am pet-safe!",
  watering_schedule: 1,
)