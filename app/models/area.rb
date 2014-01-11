# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url_name   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Area < ActiveRecord::Base
  extend FriendlyId
  friendly_id :url_name

  has_many :zip_codes, dependent: :destroy
  attr_accessible :name, :url_name
end
