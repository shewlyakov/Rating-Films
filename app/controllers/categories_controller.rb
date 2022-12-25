class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show ]

  def index
    @categories = Category.all
  end

  def show
    @reviews = Category.all
    @q = Film.where(category_id: @category.id).ransack(params[:q])
    @films = @q.result(distinct: true).page params[:page]
  end
  
  private

  def set_category
    @category ||= Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title, :image)
  end
end
