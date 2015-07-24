# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
for i in 1..10 do
  o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
  string = (0...50).map { o[rand(o.length)] }.join
  Product.create(title: string,
    description:
    %{<p>
    This is my first attempt to make a shitty web app in rails framework.
    Rails is truly awesome and i am in love with it.
    </p>},
    image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/791px-Ruby_on_Rails.svg.png',
    price: '10000.00')
end
