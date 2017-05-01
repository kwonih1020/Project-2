class RatingsController < ApplicationController

  def show
    @visit = Visit.find(params[:visit_id])
    @rating = Rating.find(params[:id])
  end

  def new
    @visit = Visit.find(params[:visit_id])
    @rating = @visit.ratings.new
  end

  def create
    @visit = Visit.find(params[:visit_id])
    @rating = @visit.ratings.create!(rating_params.merge(user: current_user))
    redirect_to visit_rating_path(@visit, @rating)
  end

  def edit
    @visit = Visit.find(params[:visit_id])
    @rating = Rating.find(params[:id])
  end

  def update
    @visit = Visit.find(params[:visit_id])
    @rating = @visit.ratings.find(params[:id])
    if @rating.user == current_user
      @rating.update(rating_params)
    else
      flash[:alert] = "You cannot Edit this Rating review!"
    end
    redirect_to visit_rating_path(@visit, @rating)
  end

  def destroy
    @visit = Visit.find(params[:visit_id])
    @rating = @visit.ratings.find(params[:id])
    if @rating.user == current_user
      @rating.destroy
    else
      flash[:alert] = "You cannot delete!"
    end
    redirect_to visit_path(@visit)
  end

  private
  def rating_params
    params.require(:rating).permit(:recommendations_rating, :safety_rating, :comment)
  end
end
