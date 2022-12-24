class ReviewsController < InheritedResources::Base
  def index
    @review = Review.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @review = Review.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @review = Review.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.save
    puts @review.errors.inspect

    respond_to do |format|
      if @review.save
        format.html { redirect_to(@review, :notice => 'Review was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
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

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to(reviews_url) }
    end
  end

  private

  def review_params
    params.require(:review).permit(:ratings, :film_id)
  end
end
