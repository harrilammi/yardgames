class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :team
      t.string :first_name
      t.string :last_name
      t.integer :jersey_number
      t.date :dob
      t.string :position

      t.timestamps
    end
    add_index :players, :team_id
  end
end
