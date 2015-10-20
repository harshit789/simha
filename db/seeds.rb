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
  c.name = "dezire"
  c.model = "ac"
  c.price = 7
end
Cab.create do |c|
  c.name = "dezire"
  c.model = "non - ac"
  c.price = 6
end
Cab.create do |c|
  c.name = "indigo"
  c.model = "ac"
  c.price = 7
end
Cab.create do |c|
  c.name = "indigo"
  c.model = "non - ac"
  c.price = 6
end
Cab.create do |c|
  c.name = "etios"
  c.model = "ac"
  c.price = 7
end
Cab.create do |c|
  c.name = "etios"
  c.model = "non - ac"
  c.price = 6
end
Cab.create do |c|
  c.name = "tavera"
  c.model = "ac"
  c.price = 8
end
Cab.create do |c|
  c.name = "tavera"
  c.model = "non - ac"
  c.price = 7
end
Cab.create do |c|
  c.name = "ertiga"
  c.model = "ac"
  c.price = 8
end
Cab.create do |c|
  c.name = "ertiga"
  c.model = "non - ac"
  c.price = 7
end
Cab.create do |c|
  c.name = "innova"
  c.model = "ac"
  c.price = 10
end
Cab.create do |c|
  c.name = "innova"
  c.model = "non - ac"
  c.price = 9
end
Cab.create do |c|
  c.name = "xylo"
  c.model = "ac"
  c.price = 10
end
Cab.create do |c|
  c.name = "xylo"
  c.model = "non - ac"
  c.price = 9
end
Cab.create do |c|
  c.name = "qualis"
  c.model = "ac"
  c.price = 10
end
Cab.create do |c|
  c.name = "qualis"
  c.model = "non - ac"
  c.price = 9
end
Cab.create do |c|
  c.name = "bolero"
  c.model = "ac"
  c.price = 10
end
Cab.create do |c|
  c.name = "bolero"
  c.model = "non - ac"
  c.price = 9
end
Cab.create do |c|
  c.name = "traveller"
  c.model = "ac"
  c.price = 17.5
end
Cab.create do |c|
  c.name = "traveller"
  c.model = "non - ac"
  c.price = 15.5
end
Cab.create do |c|
  c.name = "xuv 500"
  c.model = "ac"
  c.price = 15.5
end
Cab.create do |c|
  c.name = "xuv 500"
  c.model = "non - ac"
  c.price = 15.5
end