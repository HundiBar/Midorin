class Plant < ApplicationRecord
  has_many :pots

  validates :name, :description, :cover_picture, :watering_schedule, :care, presence: true
end
