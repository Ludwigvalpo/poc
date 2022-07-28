# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
User.destroy_all

user = User.new(
    first_name: 'Juan', 
    last_name: 'Pérez', 
    email: 'nada@nada.com',
    rut: '12345678',
    password: '123123')

8.times do |i|
    photo = Photo.create(user: user, url: "/images/0#{i + 1}.jpg")

    puts "Se ha creado la photo: #{photo.url}"
end

