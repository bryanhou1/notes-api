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


Note.create(user: User.first, text: "text1", title: "123")
Note.create(user: User.last, text: "text2")
Note.create(user: User.first, text: "text3")

