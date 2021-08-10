# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
Category.destroy_all
Book.destroy_all

puts "Creating authors"
author = Author.create(name: "Conan Doyle")
puts "Authors created"
puts "Creating categories"
category = Category.create(name: "mystery")
puts "Categories created"
puts "Creating books"
Book.create(title: "Sherlock Holmes", pages: 300, author_id: author.id, category_id: category.id)
puts "Books created"
