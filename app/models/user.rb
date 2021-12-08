class User < ApplicationRecord
  SEEKER_SERVICES = ["Jardinage", "Courses", "Bricolage", "Cuisine", "Animaux"]
  HOST_EQUIPMENTS = ["Douche", "TV", "Wifi", "Livres"]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :rooms, foreign_key: :host_id
  has_many :housing_requests, through: :rooms

  has_many :requests, class_name: "HousingRequest", foreign_key: :seeker_id

  validates :name, presence: true
  validates :description, presence: true
end
