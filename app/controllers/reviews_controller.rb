class ReviewsController < ApplicationController
    before_action :find_review, only: [:edit, :update, :destroy]

    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
        @users = User.all
        @worker = Worker.all
    end

    def create
        @review = Review.create(review_params(:user_id, :worker_id, :title, :content))
        if @review.valid?
            redirect_to review_path(@review)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
    end

    def edit
        @users = User.all
        @worker = Worker.all
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
        @review.destroy
        redirect_to reviews_path
    end

    private
    def review_params(*args)
        params.require(:review).premit(*args)
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
