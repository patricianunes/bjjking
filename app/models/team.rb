# == Schema Information
#
# Table name: teams
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  logo       :text
#  address    :text
#  athlete_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ApplicationRecord
  has_and_belongs_to_many :athlete, :optional => true
end
