class ApplicationController < ActionController::Base
  
  helper_method :current_user, :logged_in?

  protect_from_forgery

  def current_user

   session[:usuario] 

  end

  def logged_in?

  	!!current_user

  end

  def require_user
  
    if !logged_in?

        flash[:error] = "no estas registrado"
    	redirect_to root_path
    end

  end
end
