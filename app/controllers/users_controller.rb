class UsersController < ApplicationController
    
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorized_to_see_page, only: [:new, :create]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params(:name, :username, :password, :bio))
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to home_path
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end 
    end

    def edit
    end

    def update
        if @user.update(user_params(:name, :username, :password, :bio))
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to edit_user_path(@user)
        end
    end

    def destroy
        @user.destroy
        redirect_to login_path
    end

    private
    def user_params(*args)
        params.require(:user).permit(*args)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
