class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.text :name
      t.text :logo
      t.text :address

      t.timestamps
    end
  end
end
