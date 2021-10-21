class Genre < ApplicationRecord
  #  need to map to game genre and to genres
  has_many :game_genres
  has_many :games, through: :game_genres
  validates :name, presence: true, uniqueness: true
end
