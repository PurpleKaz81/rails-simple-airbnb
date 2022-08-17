# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flat.destroy_all

puts 'Generating five flats'
5.times do
  flat = Flat.new(
    name: Faker::Kpop.ii_groups,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),
    price_per_night: "#{rand(0..1000).to_f}",
    number_of_guests: Faker::Number.within(range: 1..4)
  )
  flat.save!
end

puts 'Finished!'
