class User < ActiveRecord::Base
  
  #Gives a simple token
  acts_as_token_authenticatable
  
  #Devise Properties
  devise :database_authenticatable, :recoverable,
         :trackable, :validatable, :registerable,
         :omniauthable
  
  #Relationships
  has_many :crimes
  belongs_to :district
  
end
