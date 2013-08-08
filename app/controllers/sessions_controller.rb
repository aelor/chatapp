class SessionsController < ApplicationController
  skip_before_action :require_login, :only=>[:new, :create]
  def new
    if !signed_in?
      render 'new'
    else
      redirect_to chatforms_url
    end
  end
  
  def create
    user = User.find_by(name: params[:session][:name])
    if !user
      sign_in user
      redirect_to chatforms_path
    else
      flash.now[:error] = "Name already taken"
      render 'new'
      
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
