class Game < ApplicationRecord
  belongs_to :publisher_company
  has_many :game_genres
  has_many :games, through: :game_genres
  # validates :name, presence: true, uniqueness: true


  validates :name, :year, :north_america_sales, presence: true
  validates :name, uniqueness: true
  validates :year, numericality: { only_integer: true }
  validates :north_america_sales, numericality: true
end
