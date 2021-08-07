class Pot < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  # validates :nickname, uniqueness: true
  # validates :nickname, presence: true
  # validates :last_watered, presence: true
  # validates :date, presence: true
end
