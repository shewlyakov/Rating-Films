class FilmsController < ApplicationController
  before_action :set_film, only: %i[ show ]

  def index
    @films = Film.all
  end

  def show
  end

  private

  def set_film
    @film = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :description, :director, :rating, :category_id)
  end
end
