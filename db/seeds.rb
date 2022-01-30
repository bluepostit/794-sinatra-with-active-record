require 'faker'

puts 'Adding restaurants...'

Restaurant.create!(name: 'Sabih Frishman', address: 'Tel Aviv')

20.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city
  )
end

puts 'Done'
