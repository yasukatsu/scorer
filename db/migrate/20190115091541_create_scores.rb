class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :team_id
      t.integer :game_id
      t.string :opponent_name
      t.string :name
      t.string :position
      t.integer :rate

      t.integer :upper_total
      t.integer :upper_lw
      t.integer :upper_lb
      t.integer :upper_cb
      t.integer :upper_rb
      t.integer :upper_rw
      t.integer :upper_pv
      t.integer :upper_pt
      t.integer :upper_nm

      t.integer :lower_total
      t.integer :lower_lw
      t.integer :lower_lb
      t.integer :lower_cb
      t.integer :lower_rb
      t.integer :lower_rw
      t.integer :lower_pv
      t.integer :lower_pt
      t.integer :lower_nm


      t.timestamps
    end
  end
end
