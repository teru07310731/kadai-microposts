module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:teru07310731])
  end

  def logged_in?
    !!current_user
  end
end

