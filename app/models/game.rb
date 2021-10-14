class Game < ApplicationRecord
  belongs_to :publisher_company
  validates :name, :year, :north_america_sales, presence: true
  validates :name, uniqueness: true
  # validates :year, { only_integer: true }
  validates :north_america_sales, numericality: true
end
