class CrimeImage < ActiveRecord::Base
  belongs_to :crime
  has_attached_file :photo, :styles => { :small => "150x150>", :large => "320x240>"}
  validates_attachment :photo, :presence => true,
    :content_type => { :content_type => "image/jpeg" },
    :size => { :less_than => 5.megabytes }
end
