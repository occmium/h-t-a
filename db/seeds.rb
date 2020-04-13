# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

10.times do |integer|
  user = User.create!(
    email: "#{integer + 1}@example.com", 
    name: "Bot_#{integer + 1}", 
    last_name: "The_#{integer + 1}_off", 
    nickname: "@bot_#{integer + 1}", 
    citizenship: "Purrwebia", 
    birthday: Time.now - (integer + 10).years - (integer + 1).days - (integer + 1).months, 
    image: "https://i.picsum.photos/id/#{integer + 1}/200/200.jpg", 
    password: "123123"
  )
  Chatroom.create!(user: user, topic: "#{user.name}'s topic")
end

first_user = User.first
first_user.friends << User.find_by(name: "Bot_2")
first_user.feed_items.create!(title: "TITLE of the first user", text: "TEXT of the first user")

second_user = User.second
second_user.friends << [User.find_by(name: "Bot_3"), User.find_by(name: "Bot_4")]
2.times do |int| 
  second_user.feed_items.create!(
    title: "TITLE_#{int + 1} of the second user", 
    text: "TEXT_#{int + 1} of the second user"
  )
end
  
last_user = User.last
User.all.each_with_index do |user, index|
  next if last_user.id == user.id
  last_user.friends << user
  last_user.feed_items.create!(
    title: "TITLE_#{index + 1} of the last user", 
    text: "TEXT_#{index + 1} of the last user"
  )
end
    
Comment.create!(
  user: second_user, 
  feed_item: FeedItem.first, 
  message: "SECOND user FIRST feed_item FIRST message"
)
  
Comment.create!(
  user: last_user, 
  feed_item: FeedItem.first, 
  message: "LAST user FIRST feed_item SECOND message"
)
  
10.times do |int|
  second_user.feed_items.first.upvote_by User.find_by(name: "Bot_#{int + 1}")
  Comment.second.upvote_by User.find_by(name: "Bot_#{int + 1}")
end

second_chatroom = Chatroom.second
5.times do |int|
  Message.create!(
    user: first_user, 
    text: "Text #{int + 1}", 
    chatroom: second_chatroom
  )
  sleep 1
  print " wait #{4 - int} ...\r"
end
