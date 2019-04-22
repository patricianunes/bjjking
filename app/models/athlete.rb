# == Schema Information
#
# Table name: athletes
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  photo      :text
#  weight     :float
#  birthday   :date
#  team_id    :integer
#  belt_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Athlete < ApplicationRecord
  belongs_to :belt, :optional => true
  belongs_to :team, :optional => true
end
