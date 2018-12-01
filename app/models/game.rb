class Game < ApplicationRecord
  validates :team_id, presence: true

  belongs_to :team , optional: true
  has_many :players
end
