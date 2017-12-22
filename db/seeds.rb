# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "uname1", name: "name one", email: "test1@gmail.com", password: "12345678")
User.create(username: "uname2", name: "name two", email: "test2@gmail.com", password: "12345678")
User.create(username: "uname3", name: "name thr", email: "test3@gmail.com", password: "12345678")

Picture.create(user: User.first, image_data: "1")
Picture.create(user: User.last, image_data: "2")
Picture.create(user: User.first, image_data: "3")

Post.create(user: User.first, text: "text1")
Post.create(user: User.first, text: "text2")
Post.create(user: User.first, text: "text3")

