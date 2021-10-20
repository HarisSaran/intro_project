class HomeController < ApplicationController
  def index
    @games = Game.includes(:publisher_company)
                 .order("north_america_sales DESC")
                 .limit(15)
    @publisher_companies = PublisherCompany.order_by_games.limit(20)
    #  PublisherCompany.select("publisher_companies.*")
    #  .select("COUNT(publisher_companies.id) as game_count")
    #  .left_joins(:games)
    #  .group("publisher_companies.id")
    #  .order("game_count DESC")
    #  .limit(20)
  end
end
# SELECT COUNT(*) AS game_count, publisher_companies.id, publisher_companies.name
# FROM publisher_companies
# JOIN games ON games.publisher_company_id = publisher_companies.id
# GROUP BY publisher_companies.id, publisher_companies.name
# ORDER BY game_count DESC;
