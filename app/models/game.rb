class Game < ApplicationRecord
  validates :team_id, presence: true

  belongs_to :team  
  has_many :players
end
