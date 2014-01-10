class ZipCode < ActiveRecord::Base
  attr_accessible :zip, :area_id
  belongs_to :area
end
