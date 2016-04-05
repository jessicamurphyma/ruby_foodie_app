class RestaurantsController < ApplicationController
    def index
    end

    def new
        
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


    
