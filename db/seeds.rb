# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying plants && users"

Pot.destroy_all
Plant.destroy_all
User.destroy_all


puts "creating seeds"

mylene = User.create!(
  name: "Mylene",
  email: "mylene@me.org",
  password: "mylenelife",
)

troy = User.create!(
  name: "Troy",
  email: "troy@me.org",
  password: "troylife",

)

spencer = User.create!(
  name: "Spencer",
  email: "spencer@me.org",
  password: "spencerlife",
)

dean = User.create!(
  name: "Dean",
  email: "dean@me.org",
  password: "deanlife",
)


Plant.create!(
  name: "Coral Cactus",
  scientific_name: "Euphorbia Lactea Cristata",
  description: "I might look like a come from the sea, but I am actually a succulent hybrid. My tough steam gives way to a prickly fan, coloured either green or pink.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Coral_Cactus_pink_1200x1200.jpg?v=1563976389",
  care: "Please be careful handling me as I contain latex which is an irritant.",
  temperature: "Average indoor temperatures should be fine for me, just keep me away from draughts.",
  light: "high",
  toxicity: "Best keep me away from children and pets, because I am spikey.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Croton Nervia",
  scientific_name: "Codiaeum variegatum Nervia",
  description: "I am one of the boldest houseplants around with rainbow-coloured foliage being my stand-out feature. Who needs flowers when you've got leaves like mine?",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Kroton_201807_1200x1200.jpg?v=1564340193",
  care: "When I get stressed I lose my leaves - if you've just brought me home, wait a few weeks to let me adjust. If I continue to lose my leaves, check that the air around me is not too dry and that I'm getting enough light.",
  temperature: "I like a warm, humid environment. Especially in Spring and Summer keep me moist but not sitting in water. You can mist me often.",
  light: "high",
  toxicity: "I can make you sick if you eat me so best to keep me away from pets and kids.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Dark Green Beetle Radiator Plant",
  scientific_name: "Peperomia angulata ‘Rocca Scuro’",
  description: "I am a lesser seen member of the Peperomia genus. I sport fine, neatly-traced  leaves on long hanging stems.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Peperomia-angulata-Dark-Green-Beetle-Radiator-Plant-Leaves-Detail_600x_117caf41-933c-4537-bcf5-71def1007769_1200x1200.jpg?v=1622203027",
  care: "Overwatering is my most likely cause of illness. I can withstand droughts but overly wet soil can kill me.",
  temperature: "A warm environment is best, I'll suffer if I'm in a room below 12°C.",
  light: "low",
  toxicity: "Perfectly safe for all.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Desert Rose",
  scientific_name: "Adenium obesum",
  description: "My common name is misleading - I am in no way related to a rose, but am actually a succulent. You may also hear me referred to as Mock Azalea and Sabi Star.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Adenium_1200x1200.jpg?v=1582721954",
  care: "If you repot me, please use well draining soil (ask for cactus soil). I am susceptible to root rot during winter so please don't overwater me",
  temperature: "I'm more than happy living in normal room temperatures of between 16-24 degrees C.",
  light: "high",
  toxicity: "All parts of me are poisonous if ingested so keep me away from nibbly pets and kids.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Mother-In-Law's Tongue",
  scientific_name: "Sansevieria trifasciata",
  description: "This hardy desert plant is also commonly known as the Snake Plant due to the shape of it's leaves or Viper's Bowstring Hemp, as its fibres are used to make bowstrings. In Africa it is often used to weave baskets too.
The Sansevieria is also a great air purifier and humidity leveller - it extracts poisonous substances from the air and transforms them into oxygen.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Sansevieria_Geo_Pot_1024x1024_00548c3d-913d-4e4f-93c7-9948ad5b68b0_1200x1200.jpg?v=1554381652",
  care: "Get ready for a lifetime friendship - Sansevierias are notoriously hard to kill off. They are pretty pest-resistant too, so as long as you don't drown them, they're happy.",
  temperature: "It can withstand a wide range of temperatures but don't leave outdoors in British winters. It can take dry heat too so unlike most plants, is ok near a radiator.",
  light: "low",
  toxicity: "We can't imagine many pets would want to chew on the tough spikes, but if they do, they might get digestive discomfort.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Long Leaf Fig",
  scientific_name: "Ficus maclellandii 'Alii'",
  description: "I am a new-ish cultivar, tougher and less of a diva than my Ficus cousins, I won't drop my leaves easily! My slender leaves make me a stylish addition to any home, plus I'm a quick grower so will easily add a touch of drama and scale.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Ficus_Alii_1200x1200.jpg?v=1572873080",
  care: "I am hardier than other Ficus plants but my leaves may drop if I'm not getting enough light or incorrect water amounts. I recover quickly though!",
  temperature: "Room temperatures of 16-24°C are perfect. I don't like cold draughts!",
  light: "low",
  toxicity: "I ooze latex which can be an irritant and my leaves are poisonous if ingested.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Madagascar Jewel",
  scientific_name: "Euphorbia leuconeura",
  description: "I have attractive, dark green foliage, with white veins when young. These will fade a little as I age but by that point I'll be so impressively bushy you won't mind at all!",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Euphorbia-leuconeura_1200x1200.jpg?v=1564668674",
  care: "I'm a very easy plant to care for, as I'm technically a succulent.",
  temperature: "I don’t like the temperature around me to be less than 15°C.",
  light: "low",
  toxicity: "I am a toxic plant, not to touch, but if my leaves or stems are damaged the sap can be an irritant. Keep me away from pets and children.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Mandarin Plant",
  scientific_name: "Chlorophytum Orchidastrum 'Fire Flash'",
  description: "A member of the Spider Plant family, I am easy to care for and grow, but much more dramatic than my (slightly drab) cousins!",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Mandarin-Plant_1200x1200.jpg?v=1580299656",
  care: "If you notice brown spots or edges on my leaves, it could be a sensitivity to chlorine and fluoride in tapwater. To combat this, collect rainwater or leave tap water in an open container overnight before giving me a drink.",
  temperature: "Room temperatures of 16-24°C are perfect. I don't like cold draughts!",
  light: "medium",
  toxicity: "I am toxic so please don't eat me.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Mandarin Plant",
  scientific_name: "Chlorophytum Orchidastrum 'Fire Flash'",
  description: "A member of the Spider Plant family, I am easy to care for and grow, but much more dramatic than my (slightly drab) cousins!",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Mandarin-Plant_1200x1200.jpg?v=1580299656",
  care: "If you notice brown spots or edges on my leaves, it could be a sensitivity to chlorine and fluoride in tapwater. To combat this, collect rainwater or leave tap water in an open container overnight before giving me a drink.",
  temperature: "Room temperatures of 16-24°C are perfect. I don't like cold draughts!",
  light: "medium",
  toxicity: "I am toxic so please don't eat me.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Lipstick Plant 'Mona Lisa'",
  scientific_name: "Aeschynanthus 'Mona Lisa'",
  description: "Like my famous namesake, I will keep you mesmerised and contemplative. My flowers are surrounded by dark green leaves, as though coming out of a dark tube; hence the moniker Lipstick Plant.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Lipstick_Plant_Mona_Lisa_1200x1200.jpg?v=1564086422",
  care: "The most common issue with me is leaf-drop - if more than the top inch of my soil is dry, please water me more. If you notice yellow leaves, I probably need more light.",
  temperature: "I'm happy with normal room temperature but keep me away from hot or cold draughts please.",
  light: "medium",
  toxicity: "Good news: I am pet-safe!",
  watering_schedule: 1,
)

Plant.create!(
  name: "Japanese Sago Palm",
  scientific_name: "Cycas Revoluta",
  description: "I'm not actually a palm at all, but a Cycad which date back to prehistoric times. I do have a palm-like trunk and feathery fronds.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Sago_palm_top_view_1200x1200.jpg?v=1564338303",
  care: "Being a tropical plant, I really like the humidity. Place on a shallow gravel tray filled with water and mist regularly.",
  temperature: "Keep me warm and away from draughts please!",
  light: "medium",
  toxicity: "Best to keep me away from pets and young children as I am quite toxic.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Jewel Orchid",
  scientific_name: "Ludisia Discolor",
  description: "I have dark green oval shaped leaves, intricately decorated with fine white lines. When in bloom, I produce highly prized white flowers.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Jewel_Orchid_201809_1200x1200.jpg?v=1564671363",
  care: "Although I can last in low humidity, I'll grow better in a humid environment so keep me somewhere warm and mist my leaves with a spray bottle.",
  temperature: "I don’t like the temperature around me to be less than 10°C.",
  light: "low",
  toxicity: "Good news, I'm not toxic.",
  watering_schedule: 3,
)

Plant.create!(
  name: "Linear Hoya",
  scientific_name: "Hoya Linearis",
  description: "I have long, flowing locks that promise to trail down bookcases and hang from ceilings. I may also produce little white flowers, seasonally.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Hoya_Linearis_201807_1200x1200.jpg?v=1564071824",
  care: "Don't remove my stalk when I've finished flowering, unless you're sure it's dead. Otherwise I'll produce a new stalk which wastes my energy.",
  temperature: "Keep me warm and away from draughts please!",
  light: "medium",
  toxicity: "Good news: I am pet-safe!",
  watering_schedule: 2,
)

Plant.create!(
  name: "Tayo Vase Plant",
  scientific_name: "Aechmea Tayoensis",
  description: "I have compact and broad, mid-green foliage, with a muted red, spiky rosette shaped flower.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Aechmea_Tayoensis_1200x1200.jpg",
  care: "I like humidity so please occasionally spray me with water.",
  temperature: "Keep me away from draughts and in temperatures of between 18 and 24°C.",
  light: "low",
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
  light: "high",
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
  light: "low",
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
  light: "medium",
  toxicity: "I am perfectly pet-friendly!",
  watering_schedule: 2,
)

Plant.create!(
  name: "Torch Aloe Arista",
  scientific_name: "Aristaloe aristata",
  description: "Find all the care information you need about the Torch Aloe (Aloe Aristata) on our Bloombox Club A-Z of plant care. And don't forget to check our shop for a big range of indoor plants.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Torch_Aloe_in_pot_1200x1200.jpg",
  care: "I'm low maintenance and should be able to cope with most temperatures.",
  light: "high",
  toxicity: "Don't eat me, this could cause severe discomfort!",
  watering_schedule: 1,
)

Plant.create!(
  name: "Urn Plant",
  scientific_name: "Aechmea fasciata",
  description: "My star quality is the long-lasting pink flower I produce, which contrasts nicely with my surrounding grey-green marbled foliage. In the wild, I naturally grow on the branches of trees.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Urn_1200x1200.jpg",
  care: "As a bromeliad, once my flower fades, it won't come back. However, I will produce offsets (pups) at the base section which can be propagated when they reach about 15cm tall.",
  light: "medium",
  toxicity: "I am not known to be toxic.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Vanilla Orchid",
  scientific_name: "Vanilla planifolia",
  description: "I am a climbing orchid and one of the main sources for vanilla flavouring. I have long trailing vines with narrow leaves that finish in a point. Vanilla Orchid's are relatively rare anyway, but especially those with variegated leaves like mine.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Vanilla-Orchid_1200x1200.jpg",
  care: "Because I like moist soil, I can be prone to root rot. Re-pot me yearly and check my roots. Also look out for spider mites and mealybugs.",
  light: "medium",
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
  light: "low",
  toxicity: "Keep me away from pets and children as I am toxic.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Aechmea 'Blue Rain'",
  scientific_name: "Blue Rain Bromeliad",
  description: "I am easily identified by my vibrant neon flowers. When this central bud fades, I will still have plums of glossy (but rough to touch) green foliage. You may also see little pups in my soil which can grow into new plants.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Aechmea_Blue_Rain_201807_1200x1200.jpg",
  care: "I can last for many years with the right care. I'm as spectacular as I am easy to look after.",
  temperature: "I thrive in a warm and a humid atmosphere, don't let me get below 15°C.",
  light: "low",
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 1,
)

Plant.create!(
  name: "Calathea 'Dottie'",
  scientific_name: "Calathea Roseopicta 'Dottie'",
  description: "My deep purple leaves are marked with pink stripes: one down the middle, a single ring towards the edges and several connecting the two. Calathea 'Dottie' is almost identical to the Calathea Angela, genetically, but it has very different colours.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Purple_Calathea_201808_1200x1200.jpg",
  care: "High humidity levels are a must. Stand on a wet pebble tray to improve humidity and mist frequently. Pop it in the shower from time to time to give an extra boost.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C. Please keep me away from draughts!",
  light: "medium",
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 2,
)

Plant.create!(
  name: "Calathea 'Silvia'",
  scientific_name: "Calathea Roseopicta 'Silvia'",
  description: "You can tell I'm a Rosepicta because I have little lines coming out from the centre of my leaves. My leaves are purple underside, while on top, pale green bleeds into darker green, flecked with pink lines.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/thumbnail_Calathea_-_large_201810_1200x1200.jpg",
  care: "High humidity levels are a must. Stand on a wet pebble tray to improve humidity and mist frequently. Pop it in the shower from time to time to give an extra boost.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C. Please keep me away from draughts!",
  light: "medium",
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 2,
)

Plant.create!(
  name: "Shadow plant",
  scientific_name: "Calathea Leopardina",
  description: "Roar. I'm a leopardina. They call me that because my regularly spaces markings are reminiscent of an animal print. The base colour of my leaves is a bright, luminous green, while the markings are matte and darker.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Calathea_leopardina_1200x1200.jpg",
  care: "High humidity levels are a must. Stand on a wet pebble tray to improve humidity and mist frequently. Pop it in the shower from time to time to give an extra boost.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C. Please keep me away from draughts!",
  light: "medium",
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 2,
)

Plant.create!(
  name: "Sensitive Plant",
  scientific_name: "Mimosa Pudica",
  description: "I'm famous for my shy sensibility. If you run your fingers along my leaves, they'll clam up, bashfully. To look after me well, keep me in a warm, humid atmosphere with plenty of light. I like my soil to be moist, but I need this moisture to be paired with heat.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Mimosa-Pudica_1200x1200.jpg",
  care: "I like humidity, which you can simulate by misting my leaves or popping me on a pebble tray. I want to be reminded of my tropical home.",
  temperature: "I like it hot! Temperatures of above 21 degrees are ideal but I can tolerate temperatures down to 13 degrees.",
  light: "high",
  toxicity: "I'm best kept away from children and pets.",
  watering_schedule: 3,
)

Plant.create!(
  name: "String of Dolphins",
  scientific_name: "Senecio peregrinus",
  description: "I am a beautiful succulent with leaves that resemble dolphins jumping out of the water, hence my common name. I am also sometimes called Dolphin Necklace, Dolphin Plant or Flying Dolphins.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/TrendSpotter_detail4_d1a2edeb-210d-493e-8a69-c5eb9bc5619f_1200x1200.jpg",
  care: "I am susceptible to root rot if overwatered so make sure my pot can drain and I'm not left sitting in water.",
  temperature: "Room temperatures of 16-24°C are perfect.",
  light: "medium",
  toxicity: "I am toxic so please don't eat me.",
  watering_schedule: 1,
)

Plant.create!(
  name: "String of Turtles",
  scientific_name: "Peperomia Prostrata",
  description: "I am a miniature member of the Peperomia family with delicate leaves that resemble the shell of a turtle, hence my common name. My delicately patterned leaves will keep you staring for ages!",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Peperomia_Prostrata_1200x1200.jpg",
  care: "If you notice my leaves wilting, you're overwatering me. Let me soil dry out a little before giving me more water.",
  temperature: "I like normal room temperatures of between 16-23°C.",
  light: "high",
  toxicity: "Good news: I am pet-safe!",
  watering_schedule: 2,
)

Plant.create!(
  name: "Syngonium 'Trileaf Wonder'",
  scientific_name: "Syngonium Podophyllum",
  description: "I am an unusual Syngonium variety with leaves that start light green and develop into a deep, glossy green as they mature.",
  cover_picture: "https://cdn.shopify.com/s/files/1/1780/8157/articles/Peperomia_Prostrata_1200x1200.jpg",
  care: "I like a fair amount of humidity so please mist me.",
  temperature: "Room temperatures of 16-24°C are perfect. I don't like cold draughts!",
  light: "medium",
  toxicity: "I am toxic like other Syngonium plants, so please don't eat me.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Calathea Vittata",
  scientific_name: "Calathea elliptica 'Vittata'",
  description: "I am a rarer member of the Calathea family with bright green elliptical leaves featuring sleek white stripes that look hand-painted.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/CalatheaVittata2_1200x1200.jpg?v=1588097502",
  care: "High humidity levels are a must. Stand on a wet pebble tray to improve humidity and mist frequently. Pop it in the shower from time to time to give an extra boost.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C. Please keep me away from draughts!",
  light: "medium",
  toxicity: "Good news: I am pet friendly!",
  watering_schedule: 2,
)

Plant.create!(
  name: "Chinese Evergreen",
  scientific_name: "Aglaonema 'Diamond Bay'",
  description: "I am one of 21 members of the Chinese Evergreen family. We are all tough, good looking and the perfect combo of striking foliage and low maintenance.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Alaonema_First_Diamond_201808_1200x1200.jpg?v=1563896053",
  care: "Yellowing leaves is what I suffer from most. This can be due to over or under watering. Make sure my soil is moist but not wet and I should be all good.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C.",
  light: "low",
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
  light: "medium",
  toxicity: "Keep me away from pets and children as I am toxic.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Chinese Evergreen 'Cutlass'",
  scientific_name: "Aglaonema 'Cutlass'",
  description: "I am one of 21 members of the Chinese Evergreen genus. We are all tough, good looking and the perfect combo of striking foliage and low maintenance. I'll make a statement whichever room you place me in.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/AglaonemaCutlass_1200x1200.jpg?v=1578323525",
  care: "If you notice the tips of my leaves turning brown, it could be because there's too much fluoride, chlorine and salt in your tap water. Leave the water in an open container overnight or give me rainwater.",
  temperature: "I prefer warm to high temperatures, ideally between 18-23°C but can cope with as low as 15°C.",
  light: "low",
  toxicity: "My leaves contain insoluble calcium oxalates which are poisonous to pets and children if ingested, so best to keep me away from nibblers.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Neon Pothos",
  scientific_name: "Epipremnum aureum Neon",
  description: "I have the same elongated-heart-shaped leaves as other Pothos but I can be easily told apart by my electric yellow leaves.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Neon_Pothos_1200x1200.jpg?v=1564228415",
  care: "If I'm getting too long or a bit straggly, take sharp shears and give me a trim.",
  temperature: "I like to be kept warm, ideally between 16 and 27°C.",
  light: "medium",
  toxicity: "Keep me away from pets and children.",
  watering_schedule: 1,
)

Plant.create!(
  name: "Pencil Cactus",
  scientific_name: "Euphorbia Tirucalli",
  description: "I am actually a succulent and not a cactus and have a myriad of common names - Milk Bush, Firestick Plant, Indian Tree Spurge and even Naked Lady!",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Pencil-cactus_1200x1200.jpg?v=1575298359",
  care: "I am super hardy and require very little care. I am easy to propoagate - just cut a stem and stick it in soil.",
  temperature: "As an African native, I like it warm but live comfortably in rooms above 15 degrees C. Keep me away from draughts please.",
  light: "high",
  toxicity: "My sap/milk is very poisonous, so keep me away from pets and kids and wash your hands if it gets on your skin.",
  watering_schedule: 3,
)

Plant.create!(
  name: "Philodendron Shangri-La",
  scientific_name: "Philodendron bipinnatifidum Shangri-La",
  description: "I am a super easy-going, fuss-free plant with glossy leaves that transform any space into a tropical paradise.",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Philo-ShangriLa_1200x1200.jpg?v=1590760313",
  care: "I can develop root rot if you water me too much or leave me sitting in water.",
  temperature: "Room temperatures of 16-24°C are perfect.",
  light: "medium",
  toxicity: "I am toxic so please don't eat me.",
  watering_schedule: 2,
)

Plant.create!(
  name: "Pitcher Plant",
  scientific_name: "Sarracenia",
  description: "I have tall, narrow pitchers which attract insects with my bright colours and inviting scents, only to snap them up later!",
  cover_picture: "http://cdn.shopify.com/s/files/1/1780/8157/articles/Pitcher_Plant_201810_1200x1200.jpg?v=1564231591",
  care: "I prefer peat moss mixed with either lime-free horticultural sand or perlite, to a ratio of about 2:1.",
  temperature: "I am fairly temperature tolerant but keep me away from strong draughts.",
  light: "high",
  toxicity: "Good news: I'm considered non-toxic so should be okay around pets, as long as they don't eat me whole!",
  watering_schedule: 1,
)

# Pot.create!(
#   nickname: "toge",
#   user_id: 7,
#   plant_id: 38,
# )

puts "seeds created"
