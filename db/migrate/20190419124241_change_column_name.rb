class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :athletes, :gym_id, :team_id
  end
end
