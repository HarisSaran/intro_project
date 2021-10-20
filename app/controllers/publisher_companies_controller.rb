class PublisherCompaniesController < ApplicationController
  def index
    # @publisher_companies = PublisherCompany.all
    @publisher_companies = PublisherCompany.order_by_games

    # PublisherCompany.select("publisher_companies.*")
    # .select("COUNT(publisher_companies.id) as game_count")
    # .left_joins(:games)
    # .group("publisher_companies.id")
    # .order("game_count DESC")
  end

  def show
    @publisher_company = PublisherCompany.find(params[:id])
  end
end
