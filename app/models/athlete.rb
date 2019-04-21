# == Schema Information
#
# Table name: athletes
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  photo      :text
#  weight     :float
#  birthday   :date
#  gym_id     :integer
#  belt_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Athlete < ApplicationRecord
  has_and_belongs_to_many :belts, :optional => true
  has_and_belongs_to_many :teams, :optional => true
end
