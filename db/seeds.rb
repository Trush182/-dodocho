# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HousingRequests.destroy_all
Rooms.destroy_all
User.destroy_all

# SEEKERS **************************************************************

thomas = Seeker.create!(
  name: "Thomas",
  description: "J'ai besoin de dormir 2 nuits quelque part",
  email: "thomas@gmail.com",
  password: "secret",
  profile_image: "#",
)

aline = Seeker.create!(
  name: "Aline",
  description: "En panne de voiture dans le coin, possibilité de m'héberger?",
  email: "aline@gmail.com",
  password: "secret",
  profile_image: "#",
)

# HOSTS *****************************************************************

romain = Host.create!(
  name: "Romain",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "romain@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0615717634",
)

josiane = Host.create!(
  name: "Josiane",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "josiane@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0682964512",
)

 luis = Host.create!(
  name: "Luis",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "luis@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0648505253",
)

hubert = Host.create!(
  name: "Hubert",
  description: "J'ai une chambre disponible pour qui en a besoin",
  email: "hubert@gmail.com",
  password: "secret",
  profile_image: "#",
  phone_number: "0610193033",
)

# ROOMS *****************************************************************

room_romain = Room.new(
  host:                       romain,
  summary:                    "Chambre indépendante 1",
  address:                    "4, rue Henri Cochard 44000 NANTES",
  housing_type:               "personal room",
  giveaway_description:       "",
  has_books:                  false,
  has_personal_bathroom:      true,
  has_tv:                     false,
  has_internet:               true,
)
room_romain.save!

room_josiane = Room.new(

  host:                       josiane,
  summary:                    "",
  address:                    "280, Boulevard de la Liberté 44000 NANTES",
  housing_type:               "personal room",
  giveaway_description:       "",
  has_books:                  true,
  has_personal_bathroom:      false,
  has_tv:                     true,
  has_internet:               false,
)
room_josiane.save!

room_luis = Room.new(
  host:                       luis,
  summary:                    ""
  address:                    "6, rue du Pont aux choux 44000 NANTES",
  housing_type:               "shared room",
  giveaway_description:
  has_books:                  false,
  has_personal_bathroom:      false,
  has_tv:                     true,
  has_internet:               true,
)
room_luis.save!

room_hubert = Room.new(
  host:                       hubert,
  summary:
  address:                    "280, rue des Guépins 44000 NANTES ",
  housing_type:               "personal room",
  giveaway_description:
  has_books:                  true,
  has_personal_bathroom:      true,
  has_tv:                     true,
  has_internet:               false,
)
room_hubert.save!
