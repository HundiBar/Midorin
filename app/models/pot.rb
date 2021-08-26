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
    return nil if self.user.line_id.nil?

    if water_in_days == 0
      message = "You need to water #{nickname} today."
    elsif water_in_days <= -1
      message = "It has been #{water_in_days * -1} days since #{nickname} has been watered"
    elsif water_in_days == 1
      message = "You need to water #{nickname} tomorrow."
    else
      message = "#{nickname} doesn't need to be watered today!"
    end
    line_bot_service = LineBot.new(self.user.line_id)
    line_bot_service.send_message(message)
  end
end
