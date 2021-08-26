class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :pots
  has_many :messages
  has_one_attached :avatar
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[line]

  def self.from_omniauth(auth)
    where(provider: auth.provider, line_id: auth.uid).first_or_create do |user|
      user.email = "#{auth.uid}.#{auth.provider}@example.com"
      # Can get user email when we have
      # a screenshot that shows how your app asks for consent and explains
      # what you're using the email addresses for.
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
    end
  end

end
