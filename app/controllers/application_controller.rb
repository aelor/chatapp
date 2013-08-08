class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  before_action :require_login 
 
  private
 
  def require_login
    unless signed_in?
      store_location
      redirect_to new_session_path, notice: "Please sign in."# halts request cycle
    end
  end
end
