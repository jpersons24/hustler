class ApplicationController < ActionController::Base
   before_action :authorized_to_see_page
   helper_method :set_current_user
   helper_method :logged_in?

   def set_current_user
      @current_user = User.find_by(id: session[:user_id])
   end

   def logged_in?
      !set_current_user.nil?
   end

   def authorized_to_see_page
      redirect_to login_path unless logged_in?
   end

end
