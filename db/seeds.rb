# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all
User.destroy_all
Review.destroy_all


products = [
  {
    name: "Mustachifier",
    price: 9.99,
    user_id: 1,
    stock: 20,
    description: "Are you as tired of your baby’s lack of facial hair as I am? Well get ready my friends, because the days of mustache-less babies are NO MORE!",
    category: "Baby",
    photo_url: 'ryan.jpg'
  },
  {
    name: "Glitter Beard Kit",
    price: 99.99,
    user_id: 2,
    stock: 10,
    description: "Celebrate every day with a festive Glitter Beard! So easy to do! AND you'll leave behind a little glitter everywhere you go!",
    category: "Personal Care",
    photo_url: 'Glitter_Beard.jpg'
  },
  {
    name: "How-To-Guide to your Beard Bowl",
    price: 29.99,
    user_id: 3,
    stock: 15,
    description: "Why dirty the dishes?! Design your personal beard bowl today!",
    category: "Personal Care",
    photo_url: 'Beard_Bowl.jpg'
  },
  {
    name: "STumP",
    price: 98.99,
    user_id: 1,
    stock: 15,
    description: "One-of-kind seating!",
    category: "Furniture",
    photo_url: 'stump.jpg'
  },
  {
    name: "Crocheted Baby Beard",
    price: 98.99,
    user_id: 2,
    stock: 15,
    description: "One-of-kind warmth!",
    category: "Baby",
    photo_url: 'Baby_beard.jpg'
  },
  {
    name: "Baby Mason Bottle",
    price: 28.99,
    user_id: 3,
    stock: 15,
    description: "One-of-kind drinking!",
    category: "Baby",
    photo_url: 'baby_mason_bottle.jpg'
  },
  {
    name: "Headphones All Ways",
    price: 98.99,
    user_id: 1,
    stock: 15,
    description: "Don't get caught with the wrong audioware!",
    category: "Miscellaneous",
    photo_url: 'Headers.jpg'
  },
  {
    name: "Longboard Stroller",
    price: 998.99,
    user_id: 1,
    stock: 15,
    description: "You're still cool even with a kid!",
    category: "Baby",
    photo_url: 'Longboard_stroller.jpg'
  },
  {
    name: "Selfie Shirt",
    price: 98.99,
    user_id: 2,
    stock: 15,
    description: "One-of-kind shirt!",
    category: "Clothing",
    photo_url: 'SelfieShirt.jpg'
  },
  {
    name: "Subway Record Player",
    price: 898.99,
    user_id: 3,
    stock: 15,
    description: "Make friends on the subway!",
    category: "Miscellaneous",
    photo_url: 'Subway_record_player.jpg'
  },
]


products.each do |product|
    hipster_prod = Product.create(product)
    review = Review.create(rating: 3, user_id: 2, product_id: hipster_prod.id, content: "jnjnjnj")
end



orders = [
  {
    user_id: 1,
    status: "pending"
  }
]


orders.each do |order|
    Order.create(order)
end


order_items = [
{
  product_id: 3,
  order_id: 1,
  quantity: 2
},
{
  product_id: 2,
  order_id: 1,
  quantity: 3
}
]


order_items.each do |order_item|
    OrderItem.create(order_item)
end


users = [
  {
    username: "SmallBatchMoustache",
    email: "smallbatchstache@hipsterly.com",
    password: "xyz"
  },

  {
    username: "BeardFabulous",
    email: "beardfabulous@hipsterly.com",
    password: "xyz"
  },

  {
    username: "SingleOriginBeard",
    email: "SingleOriginBeard@hipsterly.com",
    password: "xyz"
  }
]

users.each do |user|
    User.create(user)
end
