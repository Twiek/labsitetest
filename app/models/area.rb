class Area < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name

  attr_accessible :name, :zip
end
