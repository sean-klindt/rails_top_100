#require 'billboard-top-100'
#require 'httparty'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'billboard-top-100'




billboard = BillboardTop100.new()

# date format YYYY-MM-DD (defaults to saturday of current week)

puts "Done"