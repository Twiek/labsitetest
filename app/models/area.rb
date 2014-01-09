class Area < ActiveRecord::Base
  extend FriendlyId
  friendly_id :url_name

  attr_accessible :name, :zip, :url_name
end
