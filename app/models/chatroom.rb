class Chatroom < ApplicationRecord
  has_many :messages

  validates :title, presence: true
  validates :title, uniqueness: true
  chatroom_names = []
  Chatroom.all.each do |chatroom|
    chatroom_names << chatroom.title
  end
  p chatroom_names
  CHATNAME = [];
  Plant.all.each do |plant|
    CHATNAME << plant.name unless chatroom_names.include? plant.name
  end
  p CHATNAME
end
