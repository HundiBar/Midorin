class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  include PgSearch::Model
  pg_search_scope :search_chatroom,
    against: [:title],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

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
