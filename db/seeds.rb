# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'
require 'json'
require 'byebug'
require 'date'

# Fix to prevent the bug of cloudinary not accepting StringIo Files
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0



puts 'Cleaning old records'
PlaceTelephone.destroy_all
PlaceAddress.destroy_all
Place.destroy_all
Professional.destroy_all
User.destroy_all
Address.destroy_all
Telephone.destroy_all

puts 'Creating an user'
user = User.create!(email: 'teste@teste.com', password: '123456', document: '12345678901', name:'Admin')
user.admin = true
user.save


puts 'Creating 20 random users'

20.times do

  # Using a better api to create random users than Faker
  url = "https://randomuser.me/api/"
  random_user_information = open(url).read
  random_user = JSON.parse(random_user_information)

  user = User.create!({
    name: random_user['results'][0]['name']['first'] + ' ' + random_user['results'][0]['name']['last'] ,
    email: Faker::Internet.email,
    password:'123456',
    document: 11.times.map{rand(10)}.join
    # we have to create the roles as well.
  })



   file= URI.open(random_user['results'][0]['picture']['medium'])
   user.photo.attach(io:file, filename: "randomavatar.jpg", content_type: 'image/jpg')

end
puts 'Users created'


#Disclaimer: since we going to display the locations in the map i picked up real locations, we can google up to how to scrap the info from
#google maps to create more seeds, or search an api that give us real address of sao paulo city.

puts 'Creating 5 differents places(real places)'

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)




place = Place.create!({name:'Palácio de Cristais', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Moema', street:"Av. Jamaris", complement:'744', number:744, zip_code:'04078-002' })
telephone = Telephone.create!({number:'943240064', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})
# place_reviews = PlaceReview.create!({place_id: place.id, review_id: review.id }) # still pending the last merge, so far we dont have this table, will let commented by now.

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)


place = Place.create!({name:'Clínica de Terapias Alternativas Luz e Consciência', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Tatuape', street:"R. Serra de Juréa", complement:'35', number:35, zip_code:'03323-020' })
telephone = Telephone.create!({number:'998847783', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)


place = Place.create!({name:'Clinica de Terapia Holistica', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Vila Pirituba', street:"Av. Raimundo Pereira de Magalhães", complement:'3294', number:'3294', zip_code:'05145-200' })
telephone = Telephone.create!({number:'38346673', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)


place = Place.create!({name:'Ceata Centro de Estudos de Acupuntura Terapias Alternativas', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Pinheiros', street:"R. Lisboa", complement:'424', number:424, zip_code:'05413-000' })
telephone = Telephone.create!({number:'30610664', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)

place = Place.create!({name:'Triskelion - Centro de Terapias Alternativas', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Jardim Analia Franco', street:"Rua Nagib Izar", complement:'285', number:285, zip_code:'03337-070' })
telephone = Telephone.create!({number:'969028114', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})


puts 'creating more 5 real locations'

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)

place = Place.create!({name:'Corpo & Alma Estética e Terapia Alternativa', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'São Domingos', street:"Av. do Anastácio", complement:'1789', number:1789, zip_code:'05119-000' })
telephone = Telephone.create!({number:'41116143', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)

place = Place.create!({name:'Acupuntura Terapêutica e Estética, Drenagem Linfática para a Saúde da Mulher', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Penha', street:"Rua Candapuí", complement:'93 cj 02', number:93, zip_code:'03621-000' })
telephone = Telephone.create!({number:'999503003', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)

place = Place.create!({name:'RECURSO NATURAL - Centro de Terapias Alternativas', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Campos Elíseos', street:"Praça Olavo Bilac", complement:'95', number:95, zip_code:'01201-050' })
telephone = Telephone.create!({number:'38268401', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)

place = Place.create!({name:'TAO Pinheiros Acupuntura - Medicina Tradicional Chinesa', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Pinheiros', street:"R. Teodoro Sampaio", complement:'conj 21', number:2341, zip_code:'05420-000' })
telephone = Telephone.create!({number:'992398625', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})

random_user_from_DB = User.order('RANDOM()').first
user = User.find(random_user_from_DB.id)

place = Place.create!({name:'Ilê Hael Centro Holístico de Terapias Alternativas', user_id:user.id})
address = Address.create!({city:'São Paulo', state:'São Paulo', country:'Brazil', neighborhood:'Santana', street:"R. Paulo Gonçalves", complement:'22', number:22, zip_code:'02403-020' })
telephone = Telephone.create!({number:'29597065', area_code:'11', country_code:'55'})
professional = Professional.create!({name: user.name, birth_date: DateTime.strptime("#{rand(1960...2002)}-01-20","%Y-%m-%d"), sex: ['male','female'].sample, user_id: user.id })
place_address = PlaceAddress.create!({place_id:place.id, address_id:address.id })
place_telephone = PlaceTelephone.create!({ place_id: place.id, telephone_id: telephone.id })
review = Review.create!({rating:[1,2,3,4,5].sample, content: 'Great'})





# logic bellow to create Room / Interagent

puts 'Seeds compleated successfuly'



