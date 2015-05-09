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
#  active?     :boolean
#

require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
