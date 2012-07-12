# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach ::Rails.root + 'lib/galleries.csv', headers: true do |g|
  puts g[1]
  gallery = Gallery.new
  gallery.name = g[1]
  gallery.build_location(address: g[2], city: 'Victoria')
  gallery.hours = g[3]
  gallery.festival_hours = g[4]
  gallery.phone = g[5]
  gallery.email = g[6]
  gallery.website = g[7]
  gallery.description = g[8]
  gallery.exhibition_description = g[9]
  gallery.save
end
