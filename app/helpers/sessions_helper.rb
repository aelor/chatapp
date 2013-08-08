module SessionsHelper
  
  def sign_in(user)
    user = User.new(name: params[:session][:name])
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    user.save
    self.current_user= user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end
  
  def current_user?(user)
    user == current_user
  end

  def sign_out
    User.find_by_id(current_user.id).destroy
    self.current_user = nil
    cookies.delete(:remember_token)
    flash[:error] = "Your session--khallas!"
  end
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end
  
  def store_location
    session[:return_to] = request.url
  end
end
