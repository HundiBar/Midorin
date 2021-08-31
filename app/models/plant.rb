class Plant < ApplicationRecord
  has_many :pots
  enum light: { low: "low", medium: "medium", high: "high" }
  enum watering_schedule: { biweekly: 1, weekly: 2, daily: 3 }

  LIGHT =["low", "medium", "high"]
  WATER = ["biweekly","weekly","daily"]
  # validates :name, :description, :cover_picture, :watering_schedule, :care, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name, :scientific_name],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
