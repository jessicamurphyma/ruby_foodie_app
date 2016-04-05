class RestaurantsController < ApplicationController
    
    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        
    end
    
    def show
    
    end
    
    def edit
    end

    def update
    end
    
    def destroy
    end

private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :website, :description, :user_id)
    end

end


    
