# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Sekou", password: "Sekou", email: "test@example.com", phone:123)
User.create(username: "Ben", password: "Ben", email: "test@example.com", phone:123)
User.create(username: "Jack", password: "Jack", email: "test@example.com", phone:123)


Task.create(user_id: 1, title: "test 1", dateToDo: "2020/05/27")
Task.create(user_id: 1, title: "test 2", dateToDo: "2020/05/27")