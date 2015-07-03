class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable,
         :trackable, :validatable, :registerable,
         :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :reports
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.nickname
    end
  end
end
