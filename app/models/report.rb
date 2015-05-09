# == Schema Information
#
# Table name: reports
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  category_id :integer
#  user_id     :integer
#  district_id :integer
#  details     :text
#  status_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  latitude    :float(24)
#  longitude   :float(24)
#  address     :string(255)
#  gmaps       :boolean
#

class Report < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  belongs_to :district
  belongs_to :status
  acts_as_taggable
  has_many :report_images, :dependent => :destroy
  accepts_nested_attributes_for :report_images, :reject_if => lambda { |t| t['report_image'].nil? }
  accepts_nested_attributes_for :category
  accepts_nested_attributes_for :district
  geocoded_by :address
  after_validation :geocode
end
