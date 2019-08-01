# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Workspace.create(name: "Flatiron", location: "Dumbo", password: "password")
Workspace.create(name: "Tigerlilly", location: "Dumbo", password: "password")


Review.create(user_id: 1, rating: 3, comment: "Great listener")
Review.create(user_id: 1, rating: 5, comment: "Can't read right")
Review.create(user_id: 1, rating: 3, comment: "Doesnt know hes in the matrix")
Review.create(user_id: 4, rating: 2, comment: "Took the blue pill")

User.create(workspace_id: 1, name: "Borris Blake", age: 46, title: "Intern", email: "lakeplacid@gmail.com", password: "lake")
User.create(workspace_id: 1, name: "Tommy Gun", age: 11, title: "Boss", email: "lakeplacidd@gmail.com", password: "lake")
User.create(workspace_id: 1, name: "Laurence Fishburn", age: 58, title: "Sales", email: "lakepddlacid@gmail.com", password: "lake")

