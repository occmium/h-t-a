# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |integer|
  User.create!(
    email: "#{integer + 1}@example.com", 
    name: "Bot_#{integer + 1}", 
    last_name: "The_#{integer + 1}_off", 
    nickname: "@bot_#{integer + 1}", 
    citizenship: "Purrwebia", 
    birthday: Time.now - (integer + 10).years - (integer + 1).days - (integer + 1).months, 
    image: "https://i.picsum.photos/id/#{integer + 1}/200/200.jpg", 
    password: "123123"
  )
end
