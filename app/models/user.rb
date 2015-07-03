class User < ActiveRecord::Base
  acts_as_token_authenticatable
  
  devise :database_authenticatable, :recoverable,
         :trackable, :validatable, :registerable,
         :omniauthable
  has_many :crimes
  
end
