# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'destroying everything !'
Booking.destroy_all
Part.destroy_all
Favorite.destroy_all
Property.destroy_all
User.destroy_all

puts 'Creating Users'
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
file = URI.open('https://www.jeancoutu.com/globalassets/revamp/photo/conseils-photo/20160302-01-reseaux-sociaux-profil/photo-profil_301783868.jpg')
martin.photo.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
martin.save!


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
file = URI.open('https://i.kym-cdn.com/entries/icons/mobile/000/016/546/hidethepainharold.jpg')
didier.photo.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
didier.save!

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
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Jorge_Sampaoli_2018.jpg/500px-Jorge_Sampaoli_2018.jpg')
jorge.photo.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
jorge.save!


puts 'creating houses'
maison1 = Property.new
maison1.title = "Magnifique maison d'architecte"
maison1.price_part = 300000
maison1.home_size = 165
maison1.nbr_room = 4
maison1.nbr_bathroom = 2
maison1.address = "2 place de l'Hôtel de Ville, Saint-Tropez"
maison1.detail = "Cette magnifique maison d'architecte vient d'être refaite à neuf et offre de beaux volumes"
maison1.pool = true
maison1.garden = true
maison1.parking = true
maison1.garage = true
maison1.summer_kitchen = true
maison1.region = "Provence-Alpes-Côte d’Azur"
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
maison1.save!

maison2 = Property.new
maison2.title = "Maison sur le front de mer"
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
maison2.region = "Provence-Alpes-Côte d’Azur"
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
maison2.save!

maison3 = Property.new
maison3.title = "Maison à colombages"
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
maison3.region = "Normandie"
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1643129547110x121306362793904160%2Fphoto_e1c97bf17f8ad197908dac6f459395bb.jpeg')
maison3.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpeg')
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1643129538461x555735240952756500%2Fphoto_d01d993748a5edb959b457a20b2a0b9b.jpeg')
maison3.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpeg')
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1643129542427x888818223623173000%2Fphoto_d3537cbcb309b37b3814ddd0c4cfdb64.jpeg')
maison3.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpeg')
maison3.save!

martin.favorite(maison1)
martin.favorite(maison2)

maison4 = Property.new
maison4.title = "Grande maison en pierres"
maison4.price_part = 150000
maison4.home_size = 222
maison4.nbr_room = 3
maison4.nbr_bathroom = 2
maison4.address = "7 avenue Olivier Guichard, La Baule-Escoublac"
maison4.detail = "Superbe maison de 5 chambres avec piscine et dépendance"
maison4.pool = true
maison4.garden = true
maison4.parking = true
maison4.garage = false
maison4.summer_kitchen = false
maison4.region = "Bretagne"
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1644854888110x309578422827460740%2FAchat%2520Vente%2520-%2520Maison%2520Demeure%2520Domaine%2520Saint-Molf%2520Gue%25CC%2581rande%2520-%2520Espaces%2520Atypiques%2520Nantes%2520-%2520La%2520Baule%2520V2-2.jpg%3Fauto%3Denhance%26q%3D90%26fm%3Djpg?q=90&fm=jpg&auto=compress&dpr=2.5&fit=crop&h=580&w=770')
maison4.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1644854850346x121257009803428240%2F9614.jpg%3Fauto%3Denhance%26q%3D90%26fm%3Djpg?q=90&fm=jpg&auto=compress&dpr=2.5&fit=crop&h=580&w=770')
maison4.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1644579787071x717528671815621800%2FPhotos%2520%252817%2529.jpg%3Fauto%3Denhance%26q%3D90%26fm%3Djpg?q=90&fm=jpg&auto=compress&dpr=2.5&fit=crop&h=580&w=770')
maison4.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison4.save!

maison5 = Property.new
maison5.title = "Maison sur les hauteurs avec une magnifique vue mer"
maison5.price_part = 225000
maison5.home_size = 175
maison5.nbr_room = 3
maison5.nbr_bathroom = 3
maison5.address = "Cavalaire-sur-Mer"
maison5.detail = "Une vue surplombant la baie"
maison5.pool = true
maison5.garden = true
maison5.parking = true
maison5.garage = false
maison5.summer_kitchen = true
maison5.region = "Provence-Alpes-Côte d’Azur"
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1640275999971x485077876803955400%2FPicture-5926226-14.jpg?q=90&fm=jpg&auto=compress&dpr=2.5&fit=crop&h=580&w=770')
maison5.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1640275870475x171711914150200600%2FPicture-5926226-5%2520%25281%2529.jpg?q=90&fm=jpg&auto=compress&dpr=2.5&fit=crop&h=580&w=770')
maison5.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1640278570536x766546340598746100%2FPicture-5926226-1.jpg?q=90&fm=jpg&auto=compress&dpr=2.5&fit=crop&h=580&w=770')
maison5.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison5.save!

maison6 = Property.new
maison6.title = "Grand chalet typique en bois"
maison6.price_part = 85000
maison6.home_size = 145
maison6.nbr_room = 3
maison6.nbr_bathroom = 2
maison6.address = "Grande Rue, Val Thorens"
maison6.detail = "Un magnifique chalet avec départ et arrivée skis aux pieds"
maison6.pool = false
maison6.garden = true
maison6.parking = true
maison6.garage = false
maison6.summer_kitchen = false
maison6.region = "Auvergne-Rhône-Alpes"
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/lyrZPhkRLiNyCzLYhnn1_1.jpg/width:3840/format:webp/fit:cover')
maison6.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/Bo1iubp4QVSPK7cJ2NtL_2.jpg/width:3840/format:webp/fit:cover')
maison6.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/RV84jB69TCCFRiPysTuE_13.jpg/width:3840/format:webp/fit:cover')
maison6.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison6.save!

maison7 = Property.new
maison7.title = "Maison atypique avec grand domaine et dépendance"
maison7.price_part = 355000
maison7.home_size = 210
maison7.nbr_room = 4
maison7.nbr_bathroom = 3
maison7.address = "12 avenue Edouard VII, Biarritz"
maison7.detail = "Une grande maison avec de beaux volumes et un immense jardin"
maison7.pool = true
maison7.garden = true
maison7.parking = true
maison7.garage = false
maison7.summer_kitchen = false
maison7.region = "Nouvelle-Aquitaine"
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/qCAW3qLRRRenNXbLbWzG_Olive_grove_pool_2.png/width:3840/format:webp/fit:cover')
maison7.photos.attach(io: file, filename: 'tbd', content_type: 'image/png')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/41yNXAXfTRe0R25g4VDP_SW_-_Pacaso_03.jpg/width:3840/format:webp/fit:cover')
maison7.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/5t1bKIlOTAiiniSfgyD1_SW_-_Pacaso_103.jpg/width:3840/format:webp/fit:cover')
maison7.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison7.save!

maison8 = Property.new
maison8.title = "Maison contemporaine"
maison8.price_part = 155000
maison8.home_size = 210
maison8.nbr_room = 2
maison8.nbr_bathroom = 2
maison8.address = "Place de l'Hôtel de ville, Perros-Guirec"
maison8.detail = "Un havre de paix à 5 minutes des plages"
maison8.pool = true
maison8.garden = true
maison8.parking = true
maison8.garage = false
maison8.summer_kitchen = false
maison8.region = "Bretagne"
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/WYpAcmq7STqew63TFplT_exterior-backyard.jpg/width:3840/format:webp/fit:cover')
maison8.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/725zXjF0SqyYOchMWwt0_living.jpg/width:3840/format:webp/fit:cover')
maison8.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://d2lek8u79qswmc.cloudfront.net/image/2BaOPusmSzqOfgrLpiDG_kitchen-dining.jpg/width:3840/format:webp/fit:cover')
maison8.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison8.save!

maison9 = Property.new
maison9.title = "Château rénové proche de la forêt"
maison9.price_part = 275000
maison9.home_size = 310
maison9.nbr_room = 6
maison9.nbr_bathroom = 3
maison9.address = "40 rue Grande, Fontainebleau"
maison9.detail = "Magnifique château refait à neuf dans la forêt domaniale de Fontainebleau"
maison9.pool = false
maison9.garden = true
maison9.parking = true
maison9.garage = true
maison9.summer_kitchen = false
maison9.region = "Ile-de-France"
file = URI.open('https://v.seloger.com/s/cdn/x/visuels/1/m/r/e/1mreh2ifpwomfdq0xu8xg20l6von0watqkikg8ge8.jpg')
maison9.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://v.seloger.com/s/cdn/x/visuels/0/1/n/o/01no733zkuxsyodqcszh1dvhvyvecff7emfcucohs.jpg')
maison9.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://v.seloger.com/s/cdn/x/visuels/1/g/6/k/1g6kigbdfzny4k85612i1fm2fkvjcbn234wdxnshs.jpg')
maison9.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison9.save!

didier.favorite(maison1)
didier.favorite(maison2)


puts 'creating parts'
# _____ Simulation => Didier et Jorge achete 4 part chacun _____

# Achat => de parts
Part.create(status: 1, nbr_part: 4, property: maison1, user: didier)
Part.create(status: 1, nbr_part: 4, property: maison1, user: jorge)

# Didier reserve 2 semaines en aout
Booking.create(finish_date: "14/08/2022", start_date: "01/08/2022", duration: 14, property: maison1, user: didier)

# Jorge reserve 2 semaines en aout
Booking.create(finish_date: "30/08/2022", start_date: "15/08/2022", property: maison1, user: jorge)
# Jorge reserve 10 jours en septembre
Booking.create(finish_date: "20/09/2022", start_date: "10/09/2022", property: maison1, user: jorge)


#Ajout de favoris
didier.favorite(maison5)
didier.favorite(maison6)
didier.favorite(maison7)

jorge.favorite(maison1)
jorge.favorite(maison3)

# _____ Simulation => Didier à des parts dans deux propiété _____

# Achat => de parts
Part.create(status: 1, nbr_part: 2, property: maison2, user: didier)


puts 'creating booking'
booking1 = Booking.new
booking1.start_date = Date.today + 10.days
booking1.finish_date = Date.today + 20.days
booking1.property = maison1
booking1.user = jorge
booking1.save!
