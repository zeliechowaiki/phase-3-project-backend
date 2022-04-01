puts "🌱 Seeding spices..."

10.times do
  User.create(
    name: Faker::Name.name,
    username: Faker::Twitter.screen_name,
    password: Faker::Internet.password,
    money: rand(75000..6000000)
  )
end

Item.create(
  name:"Original script from The Godfather",
  image:"godfather.jpg",
  category:"memorabilia",
  condition:"used",
  starting_price:5000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"1932 Ford Roadster Model B",
  image:"ford roadster.jpg",
  category:"historical",
  condition:"used",
  starting_price:55000,
  open: true,
<<<<<<< HEAD
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Faberge Spider Brooch",
  image:"Spider brooch.jpg",
  category:"jewelry",
  condition:"used",
  starting_price:40000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
=======
  auction_end: DateTime.now()+rand(1..10).minutes
>>>>>>> Zelie
)
# Item.create(
#   name:"Faberge Spider Brooch",
#   image:"http://4.bp.blogspot.com/-awrpTkvFX8M/VJDgUizLiaI/AAAAAAAADqs/Uu3n2fkYxuI/s1600/Fabergex20Spider_7L.jpg",
#   category:"jewelry",
#   condition:"used",
#   starting_price:40000,
#   open: true,
#   auction_end: DateTime.now()+rand(1..10).minutes
# )
Item.create(
  name:"Jimi Hendrix's 1963 Fender Stratocaster Guitar",
  image:"Hendrix-guitar.jpg",
  category:"art",
  condition:"used",
  starting_price:100000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"The last violin played on the Titanic",
  image:"titanic-violin.jpg",
  category:"historical",
  condition:"used",
  starting_price:27500,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Cave Cay (Island, Bahamas)",
  image:"Cay island.jpg",
  category:"real estate",
  condition:"new",
  starting_price:10000000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Batman #1",
  image:"batman1.jpg",
  category:"memorabilia",
  condition:"used",
  starting_price:80000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Salvatore Dali Armchair sculpture",
  image:"Dali-armchair.jpg",
  category:"art",
  condition:"used",
  starting_price:25000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Louis Vuitton 1920's era Steamer Trunk",
  image:"Lv trunk.jpg" ,
  category:"historical",
  condition:"used",
  starting_price:15000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Apple-1 Computer",
  image:"apple1.jpg",
  category:"historical",
  condition:"used",
  starting_price:85000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Tiffany & Co. Antique 18k Pocket Watch",
  image:"tiffanys-watch.jpeg",
  category:"art",
  condition:"used",
  starting_price:30000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Al Capone owned Colt .45 Pistol",
  image:"capone.jpg",
  category:"memorabilia",
  condition:"used",
  starting_price:15000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"1986 Nintendo Super Mario Bros",
  image:"supermario.jpg",
  category:"memorabilia",
  condition:"new",
  starting_price:500000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Vincent van Gogh original L/'allée des Alyscamps ",
  image:"vangogh.jpg",
  category:"art",
  condition:"new",
  starting_price:16000000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Rangyai Island (Thailand)",
  image:"https://content.phuket101.net/wp-content/uploads/20200618225319/rang-yai-island-1.jpg",
  category:"real estate",
  condition:"used",
  starting_price:95000000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Mounu Island Resort (Tonga)",
  image:"https://www.privateislandsonline.com/uploads/resize/_1454_587fc4291df23.jpg-1360-1100.jpg",
  category:"real estate",
  condition:"used",
  starting_price:75000000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)
Item.create(
  name:"Koro Levu Island (Fiji)",
  image:"https://www.privateislandsonline.com/uploads/resize/_2173_58c1c43450f73.jpg-1360-1100.jpg",
  category:"real estate",
  condition:"used",
  starting_price:2750000,
  open: true,
  auction_end: DateTime.now()+rand(1..10).minutes
)

Item.all.each do |item|
  min = item.starting_price
  max = min + 500
  Bid.create(
    bid_amount: rand(min..max),
    user_id: rand(1..10),
    item_id: item.id,
    created_at: DateTime.now()-rand(1..10).minutes
  )
end

puts "✅ Done seeding!"
 

