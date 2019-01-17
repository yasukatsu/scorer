class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :team_id
      t.string :opponent_name
      t.integer :score
      t.string :description
      t.string :play_player_name

      t.timestamps
    end

  end
end
