# == Schema Information
#
# Table name: belts
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  athlete_id :integer
#

class Belt < ApplicationRecord
  has_many :athletes
end
