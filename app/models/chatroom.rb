class Chatroom < ApplicationRecord
  has_many :messages

  validates :title, presence: true
  validates :title, uniqueness: true
  def self.chatroom_refresh
    chatroom_names = []
    Chatroom.all.each do |chatroom|
      chatroom_names << chatroom.title
    end
    chatname = []
    Plant.all.each do |plant|
      chatname << plant.name unless chatroom_names.include? plant.name
    end
    chatname
  end
end
