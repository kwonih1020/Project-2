class RatingsController < ApplicationController

  def new
    @visit = Visit.find(params[:visit_id])
    @rating = @visit.ratings.new
  end

  def create
    @visit = Visit.find(params[:visit_id])
    @rating = @visit.ratings.create(rating_params)
    redirect_to visit_path(@visit)
  end

  def edit
    @visit = Visit.find(params[:visit_id])
    @rating = Rating.find(params[:id])
  end

  def update
    @visit = Visit.find(params[:visit_id])
    @rating = @visit.ratings.find(params[:id])
    @rating.update(rating_params)
    redirect_to visit_path(@visit)
  end

  def destroy
    @visit = Post.find(params[:visit_id])
    @rating = @visit.ratings.find(params[:id])
    @rating.destroy
    redirect_to visit_path(@visit)
  end

  private
  def rating_params
    params.require(:rating).permit(:recommendations_rating, :safety_rating, :comment)
  end
end
