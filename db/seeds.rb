# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Request.destroy_all
Table.destroy_all
Category.destroy_all

Category.create(name:'Drinks')
Category.create(name:'Foods')

Product.create(name:'Manhattan', price:'3500', photo:"", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Cosmopolitan', price:'3500', photo:"", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Laguna Azul', price:'3500', photo:"", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Daiquiri', price:'3500', photo:"", category_id:Category.find_by(name:'Drinks').id)

Product.create(name:'Chuletón de cerdo', price:'3500', photo:"", category_id:Category.find_by(name:'Foods').id)
Product.create(name:'Fettuccine alfredo', price:'3500', photo:"", category_id:Category.find_by(name:'Foods').id)
Product.create(name:'Paella Marinera', price:'3500', photo:"", category_id:Category.find_by(name:'Foods').id)
Product.create(name:'Lasagna', price:'3500', photo:"", category_id:Category.find_by(name:'Foods').id)

Table.create(number: 1, status: true)
Table.create(number: 2, status: true)
Table.create(number: 3, status: true)
Table.create(number: 4, status: true)
Table.create(number: 5, status: true)
Table.create(number: 6, status: true)
Table.create(number: 7, status: true)
Table.create(number: 8, status: true)
Table.create(number: 9, status: true)
Table.create(number: 10, status: true)

