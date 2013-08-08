class UsersController < ApplicationController
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to chatapp! Try typing in the field and hit Enter."
      redirect_to chatforms_url
    else
      render 'sessions/new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Your chatapp session has ended."
    redirect_to new_session_url
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name)
  end
  
end
