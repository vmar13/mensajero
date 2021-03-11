# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Conversation.destroy_all
Message.destroy_all
Thought.destroy_all

20.times do
    Conversation.create(title: Faker::Book.title, start_date: Faker::Date.in_date_period)
end

20.times do 
    Message.create(text: Faker::Quote.famous_last_words, conversation_id: Conversation.all.sample.id)
end

20.times do
    Thought.create(text: Faker::Lorem.words, message_id: Message.all.sample.id)
end
    
  