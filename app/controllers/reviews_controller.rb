class ReviewsController < ApplicationController
    before_action :find_review, only: [:edit, :update, :destroy]


    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        redirect_to ##############
        
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :rating, :comment)
    end

    def find_review
        @review = Review.find(params[:id])
    end


end
