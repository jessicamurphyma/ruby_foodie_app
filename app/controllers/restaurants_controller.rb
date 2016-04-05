class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update]
    
    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)

        if @restaurant.save
            redirect_to @restaurant, notice: 'Restaurant Created'
        else
            render :new 
        end        
    end
    
    def show
    end
    
    def edit
    end

    def update
        if @restaurant.update(restaurant_params)
            redirect_to @restaurant, notice: "Restaurant Updated"
        else
            render :edit
        end    
    end
    
    def destroy
    end

private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :website, :description, :user_id)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end    
end


    
