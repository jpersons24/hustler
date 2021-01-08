class SessionsController < ApplicationController
  skip_before_action :authorized_to_see_page, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to home_path
      else
        flash[:error] = "Incorrect username or password"
        redirect_to login_path
      end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_path
  end

end
