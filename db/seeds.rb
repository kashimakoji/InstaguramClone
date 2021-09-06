50.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "11"
  password_confirmation = "11"
  User.create!(name: name,
               mail: email,
               password: password,
               password_confirmation: password_confirmation,
               )
end
