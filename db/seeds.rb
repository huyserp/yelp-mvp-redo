puts 'clearing old records'
Restaurant.destroy_all

puts "5 new restaurants going up in the neighborhood"

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
  puts restaurant.name
end

puts 'finished'
