# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

product_list = [
  {"title" => "basketball", "price" => 500, "description" => "Go to exercise", "image" => "螢幕快照 2017-03-15 14.16.12"},
  {"title" => "bike", "price" => 5000, "description" => "Go to exercise", "image" => "螢幕快照 2017-03-15 14.16.12"},
  {"title" => "Mac", "price" => 30000, "description" => "Go to learning rails", "image" => "螢幕快照 2017-03-15 14.16.12"}
]


product_list.each do |product|
  Product.create( :title => product["title"],
                  :price => product["price"],
                  :description => product["description"],
                  :image => product["image"] )
end
