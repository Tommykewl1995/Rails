# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
for i in 1..10 do
  Product.create(title: 'My first attempt',
    description:
    %{<p>
    This is my first attempt to make a shitty web app in rails framework.
    Rails is truly awesome and i am in love with it.
    </p>},
    image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/791px-Ruby_on_Rails.svg.png',
    price: '10000.00')
end
