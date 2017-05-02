class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record

  private
  def couldnt_find_record
    redirect_to root_url, notice: "That record doesn't exist!"
  end
end
