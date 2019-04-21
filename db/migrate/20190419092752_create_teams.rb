class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.text :name
      t.text :logo
      t.text :address
      t.integer :athlete_id

      t.timestamps
    end
  end
end
