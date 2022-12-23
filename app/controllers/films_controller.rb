class FilmsController < ApplicationController
  before_action :set_film, only: %i[ show ]

  def index
    @q = Film.ransack(params[:q])
    @films = @q.result(distinct: true).page params[:page]
  end

  def show
  end

  private

  def set_film
    @film = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :description, :director, :rating, :category_id, :image)
  end
end
