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

require 'test_helper'

class ReportImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
