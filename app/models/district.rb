# == Schema Information
#
# Table name: districts
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime
#  updated_at :datetime
#

class District < ActiveRecord::Base
    has_many :users
    has_many :crimes
end
