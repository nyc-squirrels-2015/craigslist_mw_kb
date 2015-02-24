require 'Faker'

5.times do
  User.create(name: Faker::Name.first_name, username: Faker::Internet.user_name, password: "1234")
end

5.times do
  Category.create(title: Faker::Lorem.word)
end

5.times do |i|
  Article.create(title: Faker::Lorem.words(3), description: Faker::Lorem.paragraph, user_id: i+1, category_id: i+1 )
end
