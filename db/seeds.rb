# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Note.destroy_all

yeet = User.create(email: "tester@gmail.com", name: "Yeet", password: "password")
Note.create(user: yeeter, title: "Something cool here", contents: "get it together mam")


10.times do
    user = User.create(email: Faker::Internet.email, name: Faker::Name.name, password: 'password')
    random_number = rand(6)
    random_number.times do
        Note.create(user: user, title: Faker::Lorem.sentence(word_count: 3), contents: Faker::Lorem.paragraph(sentence_count: 3))
    end
end