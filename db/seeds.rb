# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants = [
  {
    name: 'Cheek By Jowl',
    address1: '21 Boon Tat St',
    address2: 'none',
    city: 'Singapore',
    state: 'Singapore',
    zipcode: '069620',
    phone: '(65)6221 1911',
    category_id: 4,
    latitude: 1.281301,
    longitude: 103.848486,
    image: 'http://res.cloudinary.com/dk2c1re0u/image/upload/v1501128532/restaurant_cheekbyjowl_p6cw6r.png'
  }, {
    name: 'Adrift by David Myers',
    address1: '10 Bayfront Avenue',
    address2: 'Hotel Lobby Tower 2, MBS',
    city: 'Singapore',
    state: 'Singapore',
    zipcode: '018956',
    phone: '(65)6688 5657',
    category_id: 3,
    latitude: 1.2833661,
    longitude: 103.8606815,
    image: 'http://res.cloudinary.com/dk2c1re0u/image/upload/v1501653228/restaurant_adrift_qfxued.png'
  }, {
    name: 'Akira Back Singapore',
    address1: '30 Beach Road',
    address2: 'JW Marriott Hotel',
    city: 'Singapore',
    state: 'Singapore',
    zipcode: '189763',
    phone: '(65)6818 1914',
    category_id: 2,
    latitude: 1.2945209,
    longitude: 103.8559817,
    image: 'http://res.cloudinary.com/dk2c1re0u/image/upload/v1501653397/restaurant_akiraback_r9ri35.png'
  }, {
    name: 'Bam! Tapas Sake Bar',
    address1: '38 Tras St',
    address2: 'Tapas Bar',
    city: 'Singapore',
    state: 'Singapore',
    zipcode: '078977',
    phone: '(65)6226 0500',
    category_id: 1,
    latitude: 1.2784306,
    longitude: 103.8443293,
    image: 'http://res.cloudinary.com/dk2c1re0u/image/upload/v1501653426/restaurant_bam_ijuwkt.png'
  }
  ]

restaurants.each do |r|
  name = r[:name]
  address1 = r[:address1]
  address2 = r[:address2]
  city = r[:city]
  state = r[:state]
  zipcode = r[:zipcode]
  phone = r[:phone]
  latitude = r[:latitude]
  longitude = r[:longitude]
  image = r[:image]
  Restaurant.create(
  name: name,
  address1: address1,
  address2: address2,
  city: city,
  state: state,
  zipcode: zipcode,
  phone: phone,
  category_id: 1,
  latitude: latitude,
  longitude: longitude,
  image: image
  )
end

Restaurant.create(name: 'test')
# Category.create(name: 'western')
# Restaurant.create(restaurants)


# Restaurant.where(name: 'Cheek By Jowl').first_or_create(name: 'Cheek By Jowl', address1: '21 Boon Tat St', city: 'Singapore', state: 'Singapore', zipcode: '069620', phone: '(65)6221 1911', latitude: '1.281301', longitude: '103.848486', image: 'http://res.cloudinary.com/dk2c1re0u/image/upload/v1501128532/restaurant_cheekbyjowl_p6cw6r.png')
# Restaurant.where(name: 'Adrift by David Myers').first_or_create(name: 'Adrift by David Myers', address1: '10 Bayfront Avenue', address2: 'Hotel Lobby Tower 2, MBS', city: 'Singapore', state: 'Singapore', zipcode: '018956', phone: '(65)6688 5657', latitude: '1.2833661', longitude: '103.8606815', image: 'http://res.cloudinary.com/dk2c1re0u/image/upload/v1501653228/restaurant_adrift_qfxued.png')
# Restaurant.where(name: 'Akira Back Singapore').first_or_create(name: 'Akira Back Singapore', address1: '30 Beach Road', address2: 'JW Marriott Hotel', city: 'Singapore', state: 'Singapore', zipcode: '189763', phone: '(65)6818 1914', latitude: '1.2945209', longitude: '103.8559817', image: 'http://res.cloudinary.com/dk2c1re0u/image/upload/v1501653397/restaurant_akiraback_r9ri35.png')
# Restaurant.where(name: 'Bam! Tapas Sake Bar').first_or_create(name: 'Bam! Tapas Sake Bar', address1: '38 Tras St', city: 'Singapore', state: 'Singapore', zipcode: '078977', phone: '(65)6226 0500', latitude: '1.2784306', longitude: '103.8443293', image: 'http://res.cloudinary.com/dk2c1re0u/image/upload/v1501653426/restaurant_bam_ijuwkt.png')

p 'Number of items seeded: ', Restaurant.all.length
