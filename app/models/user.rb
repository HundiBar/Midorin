class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :pots
  has_many :messages
  has_one_attached :avatar
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
end
