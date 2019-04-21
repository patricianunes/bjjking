class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.text :name
      t.text :photo
      t.float :weight
      t.date :birthday
      t.integer :gym_id
      t.integer :belt_id

      t.timestamps
    end
  end
end
