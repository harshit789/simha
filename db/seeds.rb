# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create do |u|
  u.name = "Simha"
  u.email = "reddykumaras@gmail.com"
  u.password = "123123123"
  u.admin = true
end

Cab.create do |c|
  c.name = "Small cab"
  c.model = "ac"
  c.price = 7
end
Cab.create do |c|
  c.name = "Small cab"
  c.model = "non - ac"
  c.price = 6
end
Cab.create do |c|
  c.name = "Tavera"
  c.model = "ac"
  c.price = 8
end
Cab.create do |c|
  c.name = "Tavera"
  c.model = "non - ac"
  c.price = 7
end
Cab.create do |c|
  c.name = "Innova"
  c.model = "ac"
  c.price = 10
end
Cab.create do |c|
  c.name = "Innova"
  c.model = "non - ac"
  c.price = 9
end

