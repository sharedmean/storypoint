# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding...'

Position.create(row: 1, position: 1)
Position.create(row: 1, position: 2)
Position.create(row: 1, position: 3)
Position.create(row: 1, position: 4)
Position.create(row: 2, position: 1)
Position.create(row: 2, position: 2)
Position.create(row: 2, position: 3)
Position.create(row: 2, position: 4)
Position.create(row: 3, position: 1)
Position.create(row: 3, position: 2)
Position.create(row: 3, position: 3)
Position.create(row: 3, position: 4)
Position.create(row: 4, position: 1)
Position.create(row: 4, position: 2)
Position.create(row: 4, position: 3)
Position.create(row: 4, position: 4)
Position.create(row: 5, position: 1)
Position.create(row: 5, position: 2)
Position.create(row: 5, position: 3)
Position.create(row: 5, position: 4)
Genre.create(name: 'novel')

puts 'Seeding done.'
