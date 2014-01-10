class Area < ActiveRecord::Base
  extend FriendlyId
  friendly_id :url_name

  has_many :zip_codes, dependent: :destroy
  attr_accessible :name, :url_name
end
