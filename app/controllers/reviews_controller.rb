class ReviewsController < ApplicationController
    before_action :find_review, only: [:edit, :update, :destroy]

    def index
        @reviews = @current_user.reviews
    end

    def new
        @review = Review.new
        @users = User.all
        @workers = Worker.all
    end

    def create
        @review = @current_user.reviews.create(review_params(:user_id, :worker_id, :title, :content))
        if @review.valid?
            redirect_to worker_path(@review.worker)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
    end

    def edit
        @users = User.all
        @worker = Worker.all
        @user = @current_user
    end

    def update
        if @review.update(review_params(:user_id, :worker_id, :title, :content))
            redirect_to review_path(@review)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to edit_review_path
        end
    end

    def destroy
        @user = @current_user
        @review.destroy
        redirect_to reviews_path
    end

    private
    def review_params(*args)
        params.require(:review).permit(*args)
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
