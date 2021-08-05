class Chatroom < ApplicationRecord
  has_many :messages

  validates :title, presence: true
  validates :title, uniqueness: true
end
