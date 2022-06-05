puts "🌱 Seeding spices..."

petra_jordan = Destination.create(country: "Jordan", state_province: "Ma'an Governorate", city: "Petra", zipcode: 71882, image: "https://cdn-bmalj.nitrocdn.com/uirOOtSrYrqqUksKHkiSCjZGZlPeXsmk/assets/static/optimized/rev-0404f4f/images/wonders-of-the-world-petra-Jordan.jpeg")
great_wall = Destination.create(country: "China", state_province: "Hebei Province", city: "Beijing", zipcode: 065201, image: "https://cdn-bmalj.nitrocdn.com/uirOOtSrYrqqUksKHkiSCjZGZlPeXsmk/assets/static/optimized/rev-0404f4f/images/wonders-of-the-world-great-wall-of-china.jpg")
# christ_redeemer = Destination.create(country: "Brazil", state_province: , city: , zipcode: , img: )
# colosseum = Destination.create(country: "Italy", state_province: , city: , zipcode: , img: )
# machu_pichu = Destination.create(country: "Peru", state_province: , city: , zipcode: , img: )
# chichen_itza = Destination.create(country: "Mexico", state_province: , city: , zipcode: , img: )
# taj_mahal = Destination.create(country: "India", state_province: , city: , zipcode: , img: )

Note.create(overall_rating: 85, safety_rating: 72, food_rating: 90, must_do: "You have to go to these places:\n- The Siq of Petra\n- Bab el Siq\n- Djin Blocks\n- The Treasury\n- Sreet of Facades", additional_notes: "Wear a lot of sunblock because it can get really hot during the day. Beware: Petra is set in a desert environment, so once the sun goes down it gets cold quickly.", destination_id: 1)
Note.create(overall_rating: 91, safety_rating: 95, food_rating: 92, must_do: "Walk on the wall at night: On Simatai's wall at night, you can have a beautiful view of the brightly lit Gubei Water Town resort at the bottom of the mountains. After your night visit to the Great Wall, you can relax at the resort area, which offers up to 5-star hotels and hot springs.", additional_notes: "We have been to two sections the Muytianyu Wall and the Badaling Great Wall. Both were equally impressive. We really feel that the Great Wall of China lives up to the hype. The location is breathtaking as it weaves through the mountains and spans for miles and miles. Even with the crowds of Badaling which is closes to Beijing, we loved it. The wall was built the 7th century and spanned nearly 9000 km.", destination_id: 2 )
# .destination_notes.create(overall_rating: , safety_rating: , food_rating: , must_do: , additional_notes: )
# .destination_notes.create(overall_rating: , safety_rating: , food_rating: , must_do: , additional_notes: )
# .destination_notes.create(overall_rating: , safety_rating: , food_rating: , must_do: , additional_notes: )
# .destination_notes.create(overall_rating: , safety_rating: , food_rating: , must_do: , additional_notes: )
# .destination_notes.create(overall_rating: , safety_rating: , food_rating: , must_do: , additional_notes: )
puts "✅ Done seeding!"
