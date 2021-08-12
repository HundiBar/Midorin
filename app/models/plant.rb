class Plant < ApplicationRecord
  has_many :pots
  enum light: { low: "low", medium: "medium", high: "high" }
  enum watering_schedule: { high: 1, medium: 2, low: 3 }


  # validates :name, :description, :cover_picture, :watering_schedule, :care, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name, :scientific_name],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
