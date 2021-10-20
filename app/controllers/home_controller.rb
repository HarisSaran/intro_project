class HomeController < ApplicationController
  def index
    @games = Game.includes(:publisher_company)
                 .order("north_america_sales DESC")
                 .limit(15)
    @publisher_companies = PublisherCompany.select("publisher_companies.*")
                                           .select("COUNT(publisher_companies.id as game_count")
                                           .left_joins(:games)
                                           .group("publisher_companies.id")
                                           .order("game_count DESC")
  end
end
