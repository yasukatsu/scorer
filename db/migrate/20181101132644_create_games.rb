class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :team_id
      t.string :opponent_name
      t.integer :score
      t.string :player
      t.string :description

      t.timestamps
    end
  end
end
