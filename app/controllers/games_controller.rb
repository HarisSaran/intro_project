class GamesController < ApplicationController
  # this goes to views > games > index
  def index
    # @games = Game.includes(:publisher_company).all
    @games  = Game.paginate(page: params[:page], per_page: 5)
  end

  # this goes to views > games > show
  def show
    @game = Game.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @games = Game.where("name LIKE ?", wildcard_search)
  end
end
