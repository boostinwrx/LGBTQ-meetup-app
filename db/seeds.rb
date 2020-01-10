# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Meetup.destroy_all

u1 = User.create_or_find_by(name: 'tiff', picture: 'test', pronouns: 'she/her')
c1 = Category.create_or_find_by(category: 'trans')
m1 = Meetup.create_or_find_by(category_id: c1.id, location: 'Alexandria,VA', date: Date.new, time: Time.new)
# Date.new and Time.new is making test data, not accurate time data