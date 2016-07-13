# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Product.create(name: Faker::Commerce.product_name, price: rand(1..5000), condition: ['excellent', 'good', 'average'].sample, on_clearance: rand(0..1), quantity: rand(1..5))
end
#
# product_image = {
#   "aluminum" => "https://secure.img1.wfrcdn.com/lf/49/hash/37312/26748078/1/Aluminum-Top-Dining-Table-TADN2846.jpg",
#   "cotton" => "http://thumbs.ebaystatic.com/images/g/1~kAAOSwhRxXLQBI/s-l225.jpg",
#   "concrete" => "https://thumbs.dreamstime.com/x/dirty-old-shoes-concrete-floor-51734423.jpg",
#   "linen" => "http://img.slskn.com/ip/s/resizeinbox/400x400/http://www.modefind.co.uk/img/p/Timex-ORIGINALS-LINEN-Watch-goldcoloured_kdtcw1",
#   "wooden" => "http://toolguyd.com/blog/wp-content/uploads/2012/06/Slim-Timber-Wood-Wallet.jpg",
# "default" => "https://www.aspcapetinsurance.com/media/1027/26.jpg"
# }
#
# photo_url = {
#     "aluminum" => "https://secure.img1.wfrcdn.com/lf/49/hash/37312/26748078/1/Aluminum-Top-Dining-Table-TADN2846.jpg",
#     "cotton" => "http://thumbs.ebaystatic.com/images/g/1~kAAOSwhRxXLQBI/s-l225.jpg",
#     "concrete" => "https://thumbs.dreamstime.com/x/dirty-old-shoes-concrete-floor-51734423.jpg",
#     "linen" => "http://img.slskn.com/ip/s/resizeinbox/400x400/http://www.modefind.co.uk/img/p/Timex-ORIGINALS-LINEN-Watch-goldcoloured_kdtcw1",
#     "wooden" => "http://toolguyd.com/blog/wp-content/uploads/2012/06/Slim-Timber-Wood-Wallet.jpg",
#   "default" => "https://www.aspcapetinsurance.com/media/1027/26.jpg"
#   }
#
# Product.all.each do |prod|
#   if prod.name.downcase.include?("aluminum")
#     prod.photo_url = product_image.fetch("aluminum")
#     prod.save
#   elsif prod.name.downcase.include?("cotton")
#       prod.photo_url = product_image.fetch("cotton")
#       prod.save
#   elsif prod.name.downcase.include?("concrete")
#       prod.photo_url = product_image.fetch("concrete")
#       prod.save
#   elsif prod.name.downcase.include?("linen")
#       prod.photo_url = product_image.fetch("linen")
#       prod.save
#   elsif prod.name.downcase.include?("wooden")
#       prod.photo_url = product_image.fetch("wooden")
#       prod.save
#   else
#     prod.photo_url = product_image.fetch("default")
#     prod.save
#   end
# end
