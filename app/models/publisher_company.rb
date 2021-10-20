class PublisherCompany < ApplicationRecord
  has_many :games
  validates :name, presence: true, uniqueness: true

  def self.order_by_games
    self.select("publisher_companies.*")
        .select("COUNT(publisher_companies.id) as game_count")
        .left_joins(:games)
        .group("publisher_companies.id")
        .order("game_count DESC")
  end
end
