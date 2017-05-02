class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record

  private
  def couldnt_find_record
    redirect_to root_url, notice: "That record doesn't exist!"
  end

  def no_method_error
    redirect_to root_url, notice: "The developer working on this didn't cover their butt appropriately. Our bad."
  end
end
