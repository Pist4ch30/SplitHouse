# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Part.destroy_all
Property.destroy_all
User.destroy_all

martin = User.new
martin.email = "martin@gmail.com"
martin.password = "123456"
martin.first_name = "Martin"
martin.last_name = "Durand"
martin.date_of_birth = Date.today - 33.years
martin.about_you = "blabla"
martin.budget = 50000
martin.address = "16 villa Gaudelet, Paris"
martin.occupation = "artist"
martin.family_status = 0
martin.save
file = URI.open('https://www.jeancoutu.com/globalassets/revamp/photo/conseils-photo/20160302-01-reseaux-sociaux-profil/photo-profil_301783868.jpg')
martin.photo.attach(io: file, filename: 'tbd', content_type: 'image/jpg')

didier = User.new
didier.email = "didier@gmail.com"
didier.password = "123456"
didier.first_name = "Didier"
didier.last_name = "Bigot"
didier.date_of_birth = Date.today - 62.years
didier.about_you = "blabla2"
didier.budget = 100000
didier.address = "12 rue de l'église, Lyon"
didier.occupation = "retired"
didier.family_status = 1
didier.save
file = URI.open('https://i.kym-cdn.com/entries/icons/mobile/000/016/546/hidethepainharold.jpg')
didier.photo.attach(io: file, filename: 'tbd', content_type: 'image/jpg')

jorge = User.new
jorge.email = "jorge@gmail.com"
jorge.password = "123456"
jorge.first_name = "Jorge"
jorge.last_name = "Sampaoli"
jorge.date_of_birth = Date.today - 58.years
jorge.about_you = "blabla2"
jorge.budget = 250000
jorge.address = "61 rue Marx Dormoy, Marseille"
jorge.occupation = "football coach"
jorge.family_status = 1
jorge.save
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Jorge_Sampaoli_2018.jpg/500px-Jorge_Sampaoli_2018.jpg')
jorge.photo.attach(io: file, filename: 'tbd', content_type: 'image/jpg')

maison1 = Property.new
maison1.title = "Magnifique maison d'architecte"
maison1.price_part = 300000
maison1.home_size = 165
maison1.nbr_room = 4
maison1.nbr_bathroom = 2
maison1.address = "1 plage des Graniers, Saint-Tropez"
maison1.detail = "Cette magnifique maison d'architecte vient d'être refaite à neuf et offre de beaux volumes"
maison1.pool = true
maison1.garden = true
maison1.parking = true
maison1.garage = true
maison1.summer_kitchen = true
maison1.save
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/pwfVtGaaQfmnq3P5skAR_DSC_1704.jpg')
maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/yKZoLHdlTzCZvYwbefzT_DSC07931.jpg')
maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/9e4ZnVEVQgmgUHDSutuf_DSC_1772.jpg')
maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/ywxeGRgBQ6GqkG5lzn5J_DSC_1735.jpg')
maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/tOoCiloQQNCeEFMQepuB_DSC_1671.jpg')
maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/2YrCSuncTVWL9NCV1UyS_DSC_1904.jpg')
maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/Rk6tG5KSFurRqJsfGotw_DSC_2004.jpg')
maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/m4MFo4XThiIVVp13yaug_DSC_1692.jpg')
maison1.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')

maison2 = Property.new
maison2.title = "Maison sur le front de mer à Marseille"
maison2.price_part = 200000
maison2.home_size = 125
maison2.nbr_room = 3
maison2.nbr_bathroom = 2
maison2.address = "52 Corniche Président John Fitzgerald Kennedy, Marseille"
maison2.detail = "Une maison de rêve en pleine ville"
maison2.pool = true
maison2.garden = true
maison2.parking = true
maison2.garage = true
maison2.summer_kitchen = false
maison2.save
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/9dgUl3MiSlWEuQi7q1VC_unikibiza-propiedades_5f5c88718a3d1-edicion.jpg')
maison2.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/ksjFoq7pQbSqBQJ1hKuB_Salon_(1).jpg')
maison2.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/Lbh2igY2RE6st3zo8lia_Cocina+SALON_(1).jpg')
maison2.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/MfUx8dAWRsabsD0WA9KJ_Habitacion_Principal.jpg')
maison2.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/xzqNVzHRQPCEiRHZEqca_h7wxYtxvTd8apLTQ34x2_Bano.jpg')
maison2.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')

maison3 = Property.new
maison3.title = "Maison à colombages dans le Calvados"
maison3.price_part = 75000
maison3.home_size = 168
maison3.nbr_room = 4
maison3.nbr_bathroom = 3
maison3.address = "Chemin de la Croix Solier, Tourgéville"
maison3.detail = "Le charme normand à 2 heures de Paris"
maison3.pool = false
maison3.garden = true
maison3.parking = true
maison3.garage = false
maison3.summer_kitchen = false
maison3.save
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1643129547110x121306362793904160%2Fphoto_e1c97bf17f8ad197908dac6f459395bb.jpeg')
maison3.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpeg')
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1643129538461x555735240952756500%2Fphoto_d01d993748a5edb959b457a20b2a0b9b.jpeg')
maison3.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpeg')
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1643129542427x888818223623173000%2Fphoto_d3537cbcb309b37b3814ddd0c4cfdb64.jpeg')
maison3.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpeg')

part1 = Part.new
part1.status = 1
part1.nbr_part = 4
part1.property = maison1
part1.user = didier

part2 = Part.new
part2.status = 1
part2.nbr_part = 4
part2.property = maison1
part2.user = jorge

martin.favorite(maison1)
martin.favorite(maison2)

booking1 = Booking.new
booking1.finish_date = "14/08/2022"
booking1.start_date = "01/08/2022"
booking1.duration = 14
booking1.property = maison1
booking1.user = didier
