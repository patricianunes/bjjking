class AddAthleteIdToBelt < ActiveRecord::Migration[5.2]
  def change
    add_column :belts, :athlete_id, :integer
  end
end
