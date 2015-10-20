class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2, :facebook]

  has_many :bookings
  has_many :shared_bookings

  def self.from_omniauth(access_token)
    puts "***************************"
    puts access_token
    puts "***************************"
    data = access_token.info
    user = User.where(email: data["email"]).first

    unless user
      user = User.create do |u|
        u.email = data["email"]
        u.name = data["name"]
        u.password = Devise.friendly_token[0,20]
      end
    end

    user
  end
end
