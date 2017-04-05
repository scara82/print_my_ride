# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Material.destroy_all
Creator.destroy_all
CreatorMaterial.destroy_all

User.create( name: 'Will', last_name: 'Smith', email: 'will@smith.co', password: 'pudding')
User.create( name: 'Wilbur', last_name: 'Wallace', email: 'wilbur@wallace.co', password: 'pudding')

Creator.create( user_id: User.first.id, printer: true, printer_model: 'printomatic5000', location: 'Melbourne', designer: false, rating: 5, payment_details: 'cash please', description: "I just really love to see the creepy stuff you guys make me print")

Material.create(name: 'plastic')
Material.create(name: 'aluminium')
Material.create(name: 'iron')
Material.create(name: 'titatnium')

CreatorMaterial.create( user_id: Creator.first.user_id, material_id: Material.last.id )
