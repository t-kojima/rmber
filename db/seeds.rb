# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

300.times do |i|
  Device.create(
    host: "dev#{i}",
    os: "linux",
    maker: "dell",
    model: "opt",
    _type: "note",
    purpose: "moge",
    enabled: true,
    deleted: false
  )
end
