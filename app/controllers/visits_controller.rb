class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def show
    @visit = Visit.find(params[:id])
    @ratings = @visit.ratings.all
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.create!(visit_params.merge(user: current_user))
    redirect_to visit_path(@visit)
  end

  def update
    @visit = Visit.find(params[:id])
    if @visit.user == current_user
      @visit.update(visit_params)
    else
      flash[:alert] = "This User Can not Edit!"
    end
    redirect_to visit_path(@visit)
  end

  def destroy
    @visit = Visit.find(params[:id])
    if @visit.user == current_user
      @visit.destroy
    else
      flash[:alert] = "This User Can not delete!"
    end
    redirect_to visits_path
  end

  private
  def visit_params
    params.require(:visit).permit(:name, :country, :photo, :diary)
  end
end
