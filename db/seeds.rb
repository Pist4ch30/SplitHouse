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
Favorite.destroy_all
Property.destroy_all
User.destroy_all

puts 'Creating Users'
florian = User.new
florian.email = "florian@gmail.com"
florian.password = "123456"
florian.first_name = "Florian"
florian.last_name = "Bel"
florian.date_of_birth = Date.today - 32.years
florian.about_you = "blabla"
florian.budget = 50000
florian.address = "16 villa Gaudelet, Paris"
florian.occupation = "Fullstack developer"
florian.family_status = 2
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1641761662/hh58c3zauyocldxakd32.jpg')
florian.photo.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
florian.save!


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
maison5.title = "Petite maison familiale avec une magnifique vue mer"
maison5.price_part = 76000
maison5.home_size = 95
maison5.nbr_room = 3
maison5.nbr_bathroom = 2
maison5.address = "5 avenue de la Madone, Menton"
maison5.detail = "Une vue incroyable surplombant la baie"
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
maison6.title = "Appartement de charme proche du centre et des pistes"
maison6.price_part = 40000
maison6.home_size = 85
maison6.nbr_room = 3
maison6.nbr_bathroom = 2
maison6.address = "5 rue de Loutraz-Bramans, Val-Cenis"
maison6.detail = "Magnifique appartement avec départ et arrivée skis aux pieds"
maison6.pool = false
maison6.garden = false
maison6.parking = true
maison6.garage = false
maison6.summer_kitchen = false
maison6.region = "Auvergne-Rhône-Alpes"
file = URI.open('https://a0.muscache.com/im/pictures/prohost-api/Hosting-558501732720867883/original/54309927-a481-438e-b657-bb0154d9277a.jpeg?im_w=1200')
maison6.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/prohost-api/Hosting-558501732720867883/original/42051c19-34f6-4c90-9f68-02ddac269fae.jpeg?im_w=1200')
maison6.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/prohost-api/Hosting-558501732720867883/original/d55c9479-098f-4972-a898-4f95342df016.jpeg?im_w=1200')
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

maison10 = Property.new
maison10.title = "Bel appartement en centre ville"
maison10.price_part = 65000
maison10.home_size = 82
maison10.nbr_room = 3
maison10.nbr_bathroom = 1
maison10.address = "30 avenue Aristide Briand, Menton"
maison10.detail = "Magnifique appartement moderne avec balcon, proche du centre et de la mer"
maison10.pool = false
maison10.garden = false
maison10.parking = false
maison10.garage = true
maison10.summer_kitchen = false
maison10.region = "Provence-Alpes-Côte d’Azur"
file = URI.open('https://a0.muscache.com/im/pictures/8cbfb816-15a2-4f2d-a512-a37a6720fbc7.jpg?im_w=1200')
maison10.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/a1b3cce3-04e6-4573-9bf5-26f46634b8c0.jpg?im_w=1200')
maison10.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/b9dfe612-be40-482e-af5f-236c48cf1cdb.jpg?im_w=960')
maison10.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/0dba748d-c615-4505-8922-dce5d2d0ee56.jpg?im_w=1200')
maison10.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/38362184-61a4-488c-b225-9ab2d9c9343f.jpg?im_w=1200')
maison10.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/53c93701-7ef6-43e4-9786-dcf612b7d1a2.jpg?im_w=1200')
maison10.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison10.save!

maison11 = Property.new
maison11.title = "Appartement lumineux et cosy avec vue mer"
maison11.price_part = 57000
maison11.home_size = 91
maison11.nbr_room = 2
maison11.nbr_bathroom = 2
maison11.address = "30 avenue Félix Faure, Menton"
maison11.detail = "Résidence récente avec piscine et court de tennis"
maison11.pool = false
maison11.garden = false
maison11.parking = false
maison11.garage = true
maison11.summer_kitchen = false
maison11.region = "Provence-Alpes-Côte d’Azur"
file = URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-53318704/original/df73de0a-e9a6-492a-9a06-d4db214eb387.jpeg?im_w=960')
maison11.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-53318704/original/9c147791-29a3-4c72-8e84-ace1e4e846d0.jpeg?im_w=1200')
maison11.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-53318704/original/a5c8f5e6-8188-43da-8385-3b676305bf0a.jpeg?im_w=1200')
maison11.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/0bffedfd-2e20-49b9-9e39-532bccdaead2.jpg?im_w=1200')
maison11.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
file = URI.open('https://a0.muscache.com/im/pictures/f69984c2-a155-4fb9-919a-0b5489b48f66.jpg?im_w=1200')
maison11.photos.attach(io: file, filename: 'tbd', content_type: 'image/jpg')
maison11.save!


Part.create(status: 1, nbr_part: 3, property: maison6, user: didier)
Part.create(status: 1, nbr_part: 4, property: maison6, user: jorge)
Part.create(status: 1, nbr_part: 1, property: maison6, user: florian)
Part.create(status: 1, nbr_part: 3, property: maison11, user: didier)
Part.create(status: 1, nbr_part: 4, property: maison11, user: jorge)


Booking.create(finish_date: "22/08/2022", start_date: "15/08/2022", duration: 7, property: maison11, user: didier)
Booking.create(finish_date: "27/07/2022", start_date: "20/07/2022", duration: 7, property: maison11, user: jorge)


booking1 = Booking.new
booking1.start_date = Date.today + 10.days
booking1.finish_date = Date.today + 20.days
booking1.property = maison11
booking1.user = jorge
booking1.save!
