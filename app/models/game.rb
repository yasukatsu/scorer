class Game < ApplicationRecord
  validates :team_id, presence: true

  belongs_to :team , optional: true
  has_many :players
  belongs_to :score
  has_many :play_player_names
end
