class ReviewsController < ApplicationController
    before_action :set_restaurant
    
    def new
        @review = Review.new
    end
    
    def edit
    end
    
    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        @review.restaurant_id = @restaurant.id
        

        if @review.save
            redirect_to @restaurant
        else
             render 'new'
        end
    end

    def update
        @review.update(review_params)
    end
    
    def destroy
        @review.destroy
        redirect_to root_path
    end

    private

    def review_params
        params.require(:review).permit(:description, :rating, :user_id, :restaurant_id)
    end
    
    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end

