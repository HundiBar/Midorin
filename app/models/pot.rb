class Pot < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  validates :user_id, presence: true
  validates :plant_id, presence: true
  validates :last_watered, presence: true


  def water_in_days
    plant.days_until_water - (Date.today - last_watered.to_date).to_i
  end

end
