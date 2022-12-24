class ReviewsController < InheritedResources::Base

  private

  def review_params
    params.require(:review).permit(:rating, :user_id, :film_id)
  end
end
