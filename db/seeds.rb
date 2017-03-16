# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name:'Cocktails')
Category.create(name:'Energy Drinks')
Category.create(name:'Caribbean Drinks')
Category.create(name:'Cervezas')
Category.create(name:'Shots')
Category.create(name:'Scotch')
Category.create(name:'Pisco')
Category.create(name:'Ron')

Product.create(name:'Manhattan', price:'3500', photo: , category_id:Category.find_by(name:'Cocktails').id)
Product.create(name:'Cosmopolitan', price:'3500', photo: , category_id:Category.find_by(name:'Cocktails').id)
Product.create(name:'Laguna Azul', price:'3500', photo: , category_id:Category.find_by(name:'Cocktails').id)
Product.create(name:'Daiquiri', price:'3500', photo: , category_id:Category.find_by(name:'Cocktails').id)

Product.create(name:'Redbull' price:'3500', photo: , category_id:Category.find_by(name:'Energy Drinks').id)
Product.create(name:'Speed', price:'3500', photo: , category_id:Category.find_by(name:'Energy Drinks').id)
Product.create(name:'Battery', price:'3500', photo: , category_id:Category.find_by(name:'Energy Drinks').id)
Product.create(name:'Monster', price:'3500', photo: , category_id:Category.find_by(name:'Energy Drinks').id)