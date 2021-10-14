class GamesController < ApplicationController
  # this goes to views > games > index
  def index
    @games = Game.includes(:publisher_company).all
  end

  # this goes to views > games > show
  def show
    @game = Game.find(params[:id])
  end
end
