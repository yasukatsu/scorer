class Score < ApplicationRecord
  belongs_to :team
  belongs_to :player
  has_many :games
  belongs_to :play_player_name
end
