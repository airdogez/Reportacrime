class Crime < ActiveRecord::Base
  #Relationshis
  belongs_to :category
  belongs_to :user
  belongs_to :district
  belongs_to :status
  has_many :crime_images, :dependent => :destroy
  
  #Properties
  acts_as_taggable
  accepts_nested_attributes_for :crime_images, :reject_if => lambda { |t| t['crime_image'].nil? }
  #accepts_nested_attributes_for :category
  #accepts_nested_attributes_for :district
  geocoded_by :address
  after_validation :geocode
end
