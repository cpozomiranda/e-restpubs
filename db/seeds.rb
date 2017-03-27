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
AdminUser.destroy_all
User.destroy_all

Category.create(name:'Drinks')
Category.create(name:'Foods')

Product.create(name:'Manhattan', price:'3500', photo:"http://img.loquenosabias.com/cocteles/2012/09/08/coctel-manhattan-receta-y-preparacion.jpg", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Cosmopolitan', price:'3500', photo:"https://ecoilogic.files.wordpress.com/2013/07/cosmopc3b3litan.jpg", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Laguna Azul', price:'3500', photo:"http://img.loquenosabias.com/tragos/2012/02/13/bubby-burns-bebida-con-whisky.jpg", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Daiquiri', price:'3500', photo:"https://t1.rg.ltmcdn.com/es/images/0/4/7/img_daiquiri_de_sandia_58740_paso_3_600.jpg", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Pisco Mistral', price:'3500', photo:"http://www.lavozdelnorte.cl/wp-content/uploads/2015/02/Piscola-Fondo-Rojo-660x400.png", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Red Bull', price:'3500', photo:"http://www.staples-3p.com/s7/is/image/Staples/s0417563_sc7?$splssku$", category_id:Category.find_by(name:'Drinks').id)
Product.create(name:'Tequila Margarita', price:'3500', photo:"http://contenidos.civico.com/wp-content/uploads/2016/02/margarita.jpeg", category_id:Category.find_by(name:'Drinks').id)

Product.create(name:'Chuletón de cerdo', price:'3500', photo:"http://www.usa-beef.org/wp-content/uploads/2013/10/RECETA-PORK-4-579x364.jpg", category_id:Category.find_by(name:'Foods').id)
Product.create(name:'Fettuccine alfredo', price:'3500', photo:"http://acam.edu.gt/wp-content/uploads/2014/05/acam-alfredo.jpg ", category_id:Category.find_by(name:'Foods').id)
Product.create(name:'Paella Marinera', price:'3500', photo:"http://uniquevideos.net/wp-content/uploads/2015/10/54.jpg", category_id:Category.find_by(name:'Foods').id)
Product.create(name:'Sopa', price:'3500', photo:"http://orsimages.unileversolutions.com/ORS_Images/Knorr_es-AR/2.4.30_13_2.4.30_326X580.Jpeg", category_id:Category.find_by(name:'Foods').id)
Product.create(name:'Bistec a lo Pobre', price:'3500', photo:"https://4.bp.blogspot.com/--YvwiCK4Hb4/VvS1B88RGFI/AAAAAAAAUxs/xhl_e3DL4B0y028fumDL_EfomofisFzEQ/s1600/2.png", category_id:Category.find_by(name:'Foods').id)
Product.create(name:'Lasagna', price:'3500', photo:"https://barilla.azureedge.net/~/media/images/en_us/hero-images/oven-ready-lasagna.jpg", category_id:Category.find_by(name:'Foods').id)

Table.create(number: 1, status: false)
Table.create(number: 2, status: false)
Table.create(number: 3, status: false)
Table.create(number: 4, status: false)
Table.create(number: 5, status: false)
Table.create(number: 6, status: false)
Table.create(number: 7, status: false)
Table.create(number: 8, status: false)
Table.create(number: 9, status: false)
Table.create(number: 10, status: false)

AdminUser.create!(email: 'admin@admin.com', password: '123456', password_confirmation: '123456')
User.create!(email: 'admin@gmail.com', password: '123456', role: 'admin' , password_confirmation: '123456')
User.create!(email: 'waiter@gmail.com', password: '123456', role: 'waiter' , password_confirmation: '123456')
User.create!(email: 'chef@gmail.com', password: '123456', role: 'chef' , password_confirmation: '123456')