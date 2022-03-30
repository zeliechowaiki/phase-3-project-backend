puts "🌱 Seeding spices..."

# 8.times do
#   Item.create(
#     name: Faker::Device.model_name,
#     category: "tech",
#     condition: "good",
#     starting_price: rand(20..300)
#   )
# end


10.times do
  User.create(
    name: Faker::Name.name,
    username: Faker::Twitter.screen_name,
    password: Faker::Internet.password,
    money: rand(50..5000)
  )
end
  Item.create(name:"Original script from The Godfather",image:"https://media.lasvegassun.com/media/img/photos/2011/10/05/scaled.1005_web_godfather_script001_t320.JPG?0f3ddbed359eab2c0b293f3dd101a0fde643f8b3condition",category:"film",condition:"used",starting_price:5000)
  Item.create(name:"1932 Ford Roadster Model B",image:"https://static0.srcdn.com/wordpress/wp-content/uploads/2019/03/1932-Ford-Roadster-history.jpg?q=50&fit=crop&w=740&h=416&dpr=1.5",category:"auto",condition:"used",starting_price:55000)
  Item.create(name:"Faberge Spider Brooch",image:"http://4.bp.blogspot.com/-awrpTkvFX8M/VJDgUizLiaI/AAAAAAAADqs/Uu3n2fkYxuI/s1600/Fabergex20Spider_7L.jpg",category:"jewelry",condition:"used",starting_price:40000)
  Item.create(name:"Jimi Hendrix's 1963 Fender Stratocaster Guitar",image:"https://static3.srcdn.com/wordpress/wp-content/uploads/2019/03/1963-Fender-Stratocaster-guitar.jpg?q=50&fit=crop&w=740&h=554&dpr=1.5",category:"music",condition:"used",starting_price:100000)
  Item.create(name:"The last violin played on the Titanic",image:"https://static.standard.co.uk/s3fs-public/thumbnails/image/2013/10/19/16/titanic-violin.jpg?width=1200&width=1200&auto=webp&quality=75",category:"history",condition:"used",starting_price:27500)
  Item.create(name:"Cave Cay (Island, Bahamas)",image:"https://www.privateislandsonline.com/uploads/resize/_909_6026d75621ccf.jpg-1074-822.jpg",category:"real estate",condition:"new",starting_price:10000000)
  Item.create(name:"Batman #1",image:"https://www.sellmycomicbooks.com/images/xbatman-comics-1.jpg.pagespeed.ic.Eama7mHuS2.jpg",category:"comic books",condition:"used",starting_price:80000)
  Item.create(name:"Salvatore Dali Armchair sculpture",image:"https://a.1stdibscdn.com/armchair-sculpture-by-salvador-dali-for-sale/1121189/f_241511021623771127288/24151102_master.jpg?disable=upscale&auto=webp&quality=60&width=960",category:"art",condition:"used",starting_price:25000)
  Item.create(name:"Louis Vuitton 1920's era Steamer Trunk",image:"https://a.1stdibscdn.com/louis-vuitton-steamer-trunk-wardrobe-trunk-chest-france-circa-1920-for-sale/1121189/f_171759421576054055194/17175942_master.jpeg?disable=upscale&auto=webp&quality=60&width=960",category:"antique",condition:"used",starting_price:15000)
  Item.create(name:"Apple-1 Computer",image:"https://i.guim.co.uk/img/media/f5c5457b0bccf73f39a31c8d9b7ee8a16342922d/0_154_4096_2459/master/4096.jpg?width=620&quality=85&auto=format&fit=max&s=88bf6dbf4b5e17b90d7ea94a4abc76ed",category:"technology",condition:"used",starting_price:85000)
  Item.create(name:"Apple-1 Computer",image:"https://i.guim.co.uk/img/media/f5c5457b0bccf73f39a31c8d9b7ee8a16342922d/0_154_4096_2459/master/4096.jpg?width=620&quality=85&auto=format&fit=max&s=88bf6dbf4b5e17b90d7ea94a4abc76ed",category:"technology",condition:"used",starting_price:85000)



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
 

