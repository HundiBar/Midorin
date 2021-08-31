class Pot < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  validates :user_id, presence: true
  validates :plant_id, presence: true

  has_many_attached :photos

  def water_in_days
    plant.days_until_water - (Date.today - last_watered.to_date).to_i
  end

  def self.pots_in_danger
    Pot.where("last_watered < ?", Date.today - 2)
  end

  def notification

    if water_in_days == 0
      message = "You need to water #{nickname? ? nickname : plant.name} today."
    elsif water_in_days <= -1
      message = "#{nickname? ? nickname : plant.name} needs to be watered!
                It has been #{water_in_days * -1} #{water_in_days == -1 ? "day" : "days"} overdue"
    elsif water_in_days == 1
      message = "You need to water #{nickname? ? nickname : plant.name} tomorrow."
    else
      message = "#{nickname? ? nickname : plant.name} doesn't need to be watered today!"
    end

  end

end
