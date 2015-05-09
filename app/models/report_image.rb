# == Schema Information
#
# Table name: report_images
#
#  id                 :integer          not null, primary key
#  description        :text
#  report_id          :integer
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class ReportImage < ActiveRecord::Base
  belongs_to :report
  has_attached_file :photo, :styles => { :small => "150x150>", :large => "320x240>"}
  validates_attachment :photo, :presence => true,
    :content_type => { :content_type => "image/jpeg" },
    :size => { :less_than => 5.megabytes }
end
