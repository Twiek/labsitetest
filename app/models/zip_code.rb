# == Schema Information
#
# Table name: zip_codes
#
#  id         :integer          not null, primary key
#  zip        :string(255)
#  area_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ZipCode < ActiveRecord::Base
  attr_accessible :zip, :area_id
  belongs_to :area
end







