# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Park.destroy_all
Campground.destroy_all
Photo.destroy_all

  park_records = JSON.parse(File.read('./db/info_nationalparks.json'))
  park_records["park"].each do |record|
    Park.create!(record)
  end

  campground_records = JSON.parse(File.read('./db/campgrounds_nationalparks.json'))
  campground_records["campground"].each do |record|
    Campground.create!(record)
  end

  photo_records = JSON.parse(File.read('./db/photos_nationalparks.json'))
  photo_records["photo"].each do |record|
   Photo.create!(record)
  end
