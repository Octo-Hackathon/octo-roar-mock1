# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Usertype.create([{name:'Buyer'},{name:'Vendor'}])

User.create([{username:'jsmith',first_name:'joe',last_name:'smith',phone:'1231234567',usertype_id:1},
  {username:'johndoe',first_name:'john',last_name:'Doe',phone:'1231234567',usertype_id:2}
  ])

