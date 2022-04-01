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
  image:"https://media.lasvegassun.com/media/img/photos/2011/10/05/scaled.1005_web_godfather_script001_t320.JPG?0f3ddbed359eab2c0b293f3dd101a0fde643f8b3condition",
  category:"memorabilia",
  condition:"used",
  starting_price:5000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"1932 Ford Roadster Model B",
  image:"https://static0.srcdn.com/wordpress/wp-content/uploads/2019/03/1932-Ford-Roadster-history.jpg?q=50&fit=crop&w=740&h=416&dpr=1.5",
  category:"historical",
  condition:"used",
  starting_price:55000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Faberge Spider Brooch",
  image:"http://4.bp.blogspot.com/-awrpTkvFX8M/VJDgUizLiaI/AAAAAAAADqs/Uu3n2fkYxuI/s1600/Fabergex20Spider_7L.jpg",
  category:"jewelry",
  condition:"used",
  starting_price:40000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Jimi Hendrix's 1963 Fender Stratocaster Guitar",
  image:"https://static3.srcdn.com/wordpress/wp-content/uploads/2019/03/1963-Fender-Stratocaster-guitar.jpg?q=50&fit=crop&w=740&h=554&dpr=1.5",
  category:"art",
  condition:"used",
  starting_price:100000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"The last violin played on the Titanic",
  image:"https://static.standard.co.uk/s3fs-public/thumbnails/image/2013/10/19/16/titanic-violin.jpg?width=1200&width=1200&auto=webp&quality=75",
  category:"historical",
  condition:"used",
  starting_price:27500,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Cave Cay (Island, Bahamas)",
  image:"https://www.privateislandsonline.com/uploads/resize/_909_6026d75621ccf.jpg-1074-822.jpg",
  category:"real estate",
  condition:"new",
  starting_price:10000000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Batman #1",
  image:"https://www.sellmycomicbooks.com/images/xbatman-comics-1.jpg.pagespeed.ic.Eama7mHuS2.jpg",
  category:"memorabilia",
  condition:"used",
  starting_price:80000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Salvatore Dali Armchair sculpture",
  image:"https://a.1stdibscdn.com/armchair-sculpture-by-salvador-dali-for-sale/1121189/f_241511021623771127288/24151102_master.jpg?disable=upscale&auto=webp&quality=60&width=960",
  category:"art",
  condition:"used",
  starting_price:25000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Louis Vuitton 1920's era Steamer Trunk",
  image:"https://a.1stdibscdn.com/louis-vuitton-steamer-trunk-wardrobe-trunk-chest-france-circa-1920-for-sale/1121189/f_171759421576054055194/17175942_master.jpeg?disable=upscale&auto=webp&quality=60&width=960",
  category:"historical",
  condition:"used",
  starting_price:15000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Apple-1 Computer",
  image:"https://i.guim.co.uk/img/media/f5c5457b0bccf73f39a31c8d9b7ee8a16342922d/0_154_4096_2459/master/4096.jpg?width=620&quality=85&auto=format&fit=max&s=88bf6dbf4b5e17b90d7ea94a4abc76ed",
  category:"historical",
  condition:"used",
  starting_price:85000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Tiffany & Co. Antique 18k Pocket Watch",
  image:"https://cdn.shopify.com/s/files/1/1227/9946/products/DSC_0698_63901b88-c974-42ee-aba8-b750777f45b7_1024x1024.JPG?v=1565716046",
  category:"art",
  condition:"used",
  starting_price:30000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Al Capone owned Colt .45 Pistol",
  image:"https://www.firstpost.com/wp-content/uploads/2021/10/5capone1.jpg",
  category:"memorabilia",
  condition:"used",
  starting_price:15000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"1986 Nintendo Super Mario Bros",
  image:"https://static01.nyt.com/images/2021/04/03/multimedia/03xp-mario-image/03xp-mario-image-mobileMasterAt3x.jpg",
  category:"memorabilia",
  condition:"new",
  starting_price:500000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)
Item.create(
  name:"Vincent van Gogh original L/'allée des Alyscamps ",
  image:"https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/4/10/1428687259105/2910e4dd-7455-4dcf-91a0-e42be1cfe329-2060x1236.jpeg?width=620&quality=85&auto=format&fit=max&s=c92a0647940d7280615b8a098281de7e",
  category:"art",
  condition:"new",
  starting_price:16000000,
  open: true,
  auction_end: DateTime.now()+rand(1..3).hours
)

Item.all.each do |item|
  min = item.starting_price
  max = min + 500
  Bid.create(
    bid_amount: rand(min..max),
    user_id: rand(1..10),
    item_id: item.id
  )
end

puts "✅ Done seeding!"
 

