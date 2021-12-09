# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB..."
HousingRequest.destroy_all
puts "HousingRequest Destroyed"
Room.destroy_all
puts "Room Destroyed"
User.destroy_all

puts "User Destroyed"

# SEEKERS **************************************************************

puts "Creating Seekers..."

thomas = User.create!(
  name: "Thomas",
  description: "J'ai besoin de dormir 2 nuits quelque part",
  email: "thomas@gmail.com",
  password: "secret",
  profile_image: "#"
)

thomas_profile_pic = File.open(Rails.root.join('db/fixtures/users', 'thomas.jpg'))
thomas.photo.attach(io: thomas_profile_pic, filename: 'thomas.jpg', content_type: 'image/jpg')

aline = User.create!(
  name: "Aline",
  description: "En panne de voiture dans le coin, possibilité de m'héberger?",
  email: "aline@gmail.com",
  password: "secret",
  profile_image: "#"
)

aline_profile_pic = File.open(Rails.root.join('db/fixtures/users', 'aline.jpg'))
aline.photo.attach(io: aline_profile_pic, filename: 'aline.jpg', content_type: 'image/jpg')

# HOSTS *****************************************************************
puts "Creating Hosts..."

firas = User.create!(
  name: "Firas",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "firas@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0657197768"
)

firas_profile_pic = File.open(Rails.root.join('db/fixtures/users', 'firas.jpg'))
firas.photo.attach(io: firas_profile_pic, filename: 'firas.jpg', content_type: 'image/jpg')

romain = User.create!(
  name: "Romain",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "romain@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0615717634"
)

romain_profile_pic = File.open(Rails.root.join('db/fixtures/users', 'romain.jpg'))
romain.photo.attach(io: romain_profile_pic, filename: 'romain.jpg', content_type: 'image/jpg')

josiane = User.create!(
  name: "Josiane",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "josiane@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0682964512"
)

josiane_profile_pic = File.open(Rails.root.join('db/fixtures/users', 'josiane.jpg'))
josiane.photo.attach(io: josiane_profile_pic, filename: 'josiane.jpg', content_type: 'image/jpg')

luis = User.create!(
  name: "Luis",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "luis@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0648505253"
)

luis_profile_pic = File.open(Rails.root.join('db/fixtures/users', 'luis.jpg'))
luis.photo.attach(io: luis_profile_pic, filename: 'luis.jpg', content_type: 'image/jpg')

hubert = User.create!(
  name: "Hubert",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "hubert@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0610193033"
)

hubert_profile_pic = File.open(Rails.root.join('db/fixtures/users', 'hubert.jpg'))
hubert.photo.attach(io: hubert_profile_pic, filename: 'hubert.jpg', content_type: 'image/jpg')

# ROOMS *****************************************************************
puts "Creating Rooms..."

room_romain = Room.new(
  host:                       romain,
  title:                      "Chambre indépendante dans T3",
  summary:                    "Mon coloc n'étant pas là, je propose sa chambre pour une personne en galère de logement",
  address:                    "4, rue Henri Cochard 44000 NANTES",
  housing_type:               "personal room",
  giveaway_description:       "",
  has_books:                  false,
  has_personal_bathroom:      true,
  has_tv:                     true,
  has_internet:               true
)
room_romain.save!

room_romain_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_romain_1.jpg'))
room_romain.photos.attach(io: room_romain_profile_pic, filename: 'room_romain_1.jpg', content_type: 'image/jpg')

room_romain_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_romain_2.jpg'))
room_romain.photos.attach(io: room_romain_profile_pic, filename: 'room_romain_2.jpg', content_type: 'image/jpg')

room_romain_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_romain_3.jpg'))
room_romain.photos.attach(io: room_romain_profile_pic, filename: 'room_romain_3.jpg', content_type: 'image/jpg')

room_josiane = Room.new(

  host:                       josiane,
  title:                      "Jolie chambre dans annexe",
  summary:                    "Jolie petite chambre située dans l'annexe de ma maison, disponible en ce moment.",
  address:                    "50, Boulevard Jean Ingres 44000 NANTES",
  housing_type:               "personal room",
  giveaway_description:       "",
  has_books:                  true,
  has_personal_bathroom:      true,
  has_tv:                     true,
  has_internet:               false
)
room_josiane.save!

room_josiane_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_josiane_1.jpg'))
room_josiane.photos.attach(io: room_josiane_profile_pic, filename: 'room_josiane_1.jpg', content_type: 'image/jpg')

room_josiane_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_josiane_2.jpg'))
room_josiane.photos.attach(io: room_josiane_profile_pic, filename: 'room_josiane_2.jpg', content_type: 'image/jpg')

room_josiane_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_josiane_3.jpg'))
room_josiane.photos.attach(io: room_josiane_profile_pic, filename: 'room_josiane_3.jpg', content_type: 'image/jpg')

room_luis = Room.new(
  host:                       luis,
  title:                      "Chambre partagée dans mon studio",
  summary:                    "Si quelqu'un dans le besoin, propose un lit d'appoint dans mon studio",
  address:                    "6, rue de Belleville 44000 NANTES",
  housing_type:               "shared room",
  giveaway_description:       "",
  has_books:                  true,
  has_personal_bathroom:      false,
  has_tv:                     true,
  has_internet:               true
)
room_luis.save!

room_luis_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_luis_1.jpg'))
room_luis.photos.attach(io: room_luis_profile_pic, filename: 'room_luis_1.jpg', content_type: 'image/jpg')

room_luis_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_luis_2.jpg'))
room_luis.photos.attach(io: room_luis_profile_pic, filename: 'room_luis_2.jpg', content_type: 'image/jpg')

room_luis_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_luis_3.jpg'))
room_luis.photos.attach(io: room_luis_profile_pic, filename: 'room_luis_3.jpg', content_type: 'image/jpg')

room_hubert = Room.new(
  host:                       hubert,
  title:                      "Chambre d'ami à disposition",
  summary:                    "Je propose ma chambre d'ami inocupée en ce moment",
  address:                    "15, rue Robert Douineau 44300 SAINT SEBASTIEN SUR LOIRE",
  housing_type:               "personal room",
  giveaway_description:       "",
  has_books:                  true,
  has_personal_bathroom:      true,
  has_tv:                     true,
  has_internet:               false
)
room_hubert.save!

room_hubert_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_hubert_1.jpg'))
room_hubert.photos.attach(io: room_hubert_profile_pic, filename: 'room_hubert_1.jpg', content_type: 'image/jpg')

room_hubert_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_hubert_2.jpg'))
room_hubert.photos.attach(io: room_hubert_profile_pic, filename: 'room_hubert_2.jpg', content_type: 'image/jpg')

room_hubert_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_hubert_3.jpg'))
room_hubert.photos.attach(io: room_hubert_profile_pic, filename: 'room_hubert_3.jpg', content_type: 'image/jpg')

room_firas = Room.new(
  host:                       firas,
  title:                      "Canapé à disposition dans mon studio pour quelqu",
  summary:                    "Mon canapé est libre si vous avez besoin de dormir au chaud.",
  address:                    "8, rue Georges Clémenceau 44000 NANTES",
  housing_type:               "personal room",
  giveaway_description:       "",
  has_books:                  true,
  has_personal_bathroom:      true,
  has_tv:                     true,
  has_internet:               true
)
room_firas.save!

room_firas_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_firas_1.jpg'))
room_firas.photos.attach(io: room_firas_profile_pic, filename: 'room_firas_1.jpg', content_type: 'image/jpg')

room_firas_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_firas_2.jpg'))
room_firas.photos.attach(io: room_firas_profile_pic, filename: 'room_firas_2.jpg', content_type: 'image/jpg')

room_firas_profile_pic = File.open(Rails.root.join('db/fixtures/rooms', 'room_firas_3.jpg'))
room_firas.photos.attach(io: room_firas_profile_pic, filename: 'room_firas_3.jpg', content_type: 'image/jpg')

# puts "Creating Housing Requests"
