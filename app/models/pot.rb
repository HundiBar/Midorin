class Pot < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  # validates :nickname, uniqueness: true
  # validates :nickname, presence: true
  # validates :last_watered, presence: true
  # validates :date, presence: true

  def water_in_days
    # Scheduling frequency for plant pot.plant.watering_schedule
    # Pot last watered pot.last_watered
    # Current day
    plant.watering_schedule - (Date.today - last_watered.to_date).to_i
  end

end
