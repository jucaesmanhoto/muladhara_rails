class User < ApplicationRecord
  validates :name, :document, presence: true

  has_many :interagents
  has_many :places

  has_many :appointments, through: :interagents, dependent: :destroy

  has_one_attached :photo # Cloudinary



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
