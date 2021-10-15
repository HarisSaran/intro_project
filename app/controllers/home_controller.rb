class HomeController < ApplicationController
  def index
    @games = Game.includes(:publisher_company)
                 .order("north_america_sales DESC")
                 .limit(15)
    # @publisher_companies =
  end
end
