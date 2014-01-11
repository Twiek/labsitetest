# == Schema Information
#
# Table name: prospects
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  area       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Prospect < ActiveRecord::Base
  attr_accessible :email, :area
end
