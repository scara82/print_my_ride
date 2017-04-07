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
Project.destroy_all
Cad.destroy_all
Job.destroy_all

User.create( name: 'Will', last_name: 'Smith', email: 'will@smith.co', password: 'pudding')
User.create( name: 'Wilbur', last_name: 'Wallace', email: 'wilbur@wallace.co', password: 'pudding')

Creator.create( user_id: User.first.id, printer: true, printer_model: 'printomatic5000', location: 'Melbourne', designer: false, rating: 5, payment_details: 'cash please', description: "I just really love to see the creepy stuff you guys make me print")

Material.create(name: 'plastic')
Material.create(name: 'aluminium')
Material.create(name: 'iron')
Material.create(name: 'titatnium')

CreatorMaterial.create( user_id: Creator.first.user_id, material_id: Material.last.id )
CreatorMaterial.create( user_id: Creator.first.user_id, material_id: Material.first.id )

Project.create( owner_id: User.last.id, description: "create me a mikki mouse head outa titatnium" )

Cad.create( designer_id: Creator.first.id, description: 'mikki mouse head', material_id: Material.last.id, image_url: "https://www.tinkercad.com/things/3vh8qovQ6on/t725.png?t=56941a62" )
Cad.create( designer_id: Creator.first.id, description: 'bike tyre pry bar', material_id: Material.last.id, image_url: "https://ae01.alicdn.com/kf/HTB1eYQJJpXXXXasXXXXq6xXFXXXU/3PCS-Lot-Engineering-Plastics-Steel-Elbow-font-b-Tire-b-font-Repair-Tools-font-b-Tire.jpg" )
Cad.create( designer_id: Creator.first.id, description: 'make some custom chop sticks', material_id: Material.last.id, image_url: "https://s-media-cache-ak0.pinimg.com/originals/37/32/47/37324791609d2b73eab2ae09c778c1d7.jpg" )
Cad.create( designer_id: Creator.first.id, description: 'great head for your vacuum cleaner', material_id: Material.last.id, image_url: "https://i1.wp.com/www.vacuumsguide.com/wp-content/uploads/2014/09/claw-utility-nozzle.png" )



Job.create( project_id: Project.first.id, cad_id: Cad.first.id, accepted: false, completed: false, printer_id: Creator.first.id, user_id: User.first.id, description: 'I need this job done for the end of May 2017. Make an offert!', job_img: 'http://www.panozzosrl.com/images/catalogo/images-big/VTC85_viti_testa_cilindrica_din85.jpg', material: 'plastic' )
Job.create( project_id: Project.first.id, cad_id: Cad.first.id, accepted: false, completed: false, printer_id: Creator.first.id, user_id: User.first.id, description: 'I want something that looks like food but is not actually edible', job_img: 'http://imgs.inkfrog.com/pix/kabicy/22000282-3.JPG', material: 'plastic' )
Job.create( project_id: Project.first.id, cad_id: Cad.first.id, accepted: false, completed: false, printer_id: Creator.first.id, user_id: User.first.id, description: "I am very small, i need new furniture - please print me a house worth of furniture at 1/100th scale", job_img: 'https://s-media-cache-ak0.pinimg.com/736x/57/fd/5f/57fd5f96a7f93535db427f47c9d3fba0.jpg', material: 'mixed' )
Job.create( project_id: Project.first.id, cad_id: Cad.first.id, accepted: false, completed: false, printer_id: Creator.first.id, user_id: User.first.id, description: 'looking to fix my car - need this special bmw tool - can someone make it for me', job_img: 'http://www.samstagsales.com/bmw/bmw118570.jpg', material: 'plastic' )

Bid.create( creator_id: Creator.first.user_id, job_id: Job.first.id, design: true, print: true, price: 49.99 )
