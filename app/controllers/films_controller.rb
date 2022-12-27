class FilmsController < ApplicationController
  before_action :set_film, only: %i[ show ]

  def index
    @q = Film.ransack(params[:q])
    @films = @q.result(distinct: true).page params[:page]
  end

  def show
    @reviews = Review.all
  end

  private

  def set_film
    @film = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :description, :director, :category_id, :image, :trailer, :thumbnail)
  end
end
