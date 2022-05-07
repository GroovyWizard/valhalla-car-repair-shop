# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


1.times do 
    admin = User.new 
    admin.email = 'super@admin.com'
    admin.role = 0
    admin.name = 'DarthVader'
    admin.password = '123456'
    admin.password_confirmation = '123456' 
    admin.save()
end

1.times do 
    dashboard = Dashboard.new 
    dashboard.comission_percentage = 10
    dashboard.save()
end 

50.times do 
    name = Faker::Name.name
    document = Faker::CPF.pretty
    phone = Faker::PhoneNumber.area_code #=> "201"
    address = Faker::Address.full_address
    Client.create!(name: name, document: document, phone: phone, address: address )
end

50.times do 
    model = Faker::Vehicle.model
    registration_plate = Faker::Vehicle.license_plate
    client_id = 1
    Vehicle.create!(model: model, registration_plate: registration_plate, client_id: client_id)
end
