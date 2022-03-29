puts "🌱 Seeding spices..."

8.times do
  Item.create(
    name: Faker::Device.model_name,
    category: "tech",
    condition: "good",
    starting_price: rand(20..300)
  )
end


10.times do
  User.create(
    name: Faker::Name.name,
    username: Faker::Twitter.screen_name,
    password: Faker::Internet.password,
    money: rand(50..5000)
  )
end

Item.all.each do |item|
  min = item.starting_price
  max = min + 500
  Bid.create(
    bid_amount: rand(min..max),
    user_id: rand(1..10),
    item_id: item.id
  )
  end
end


puts "✅ Done seeding!"
