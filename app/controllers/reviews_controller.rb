class ReviewsController < InheritedResources::Base
  def create
    @review = current_user.reviews.new(review_params)
    @review.save
  end

  def update
    @review = Review.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to(@review, :notice => 'Review was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:ratings, :film_id, :user_id)
  end
end
