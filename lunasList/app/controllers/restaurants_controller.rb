class RestaurantsController < ApplicationController
  def index
        @restaurants = Restaurant.all
    end

     def show
         @restaurants = Restaurant.find(params[:id])
     end
        
        
    def new
        @restaurant = Restaurant.new
    end

    def create

        @restaurant = Restaurant.new(params.require(:vet).permit(:businessName, :address, :city, :state, :phone))
 
        if @restaurant.save!
            redirect_to restaurants_url, notice: 'restaurant added'
        else
            flash.now[:alert] = 'failed to add'
            render :new
        end
    end

    def edit
        @restaurant = Restaurant.find(params[:id])

    end

    def update
        begin
            @restaurant = Restaurant.find(params[:id])
        rescue
            redirect_to restaurants_url, alert: 'restaurant not found'
        end
        if @restaurant.update(params.require(:restaurant).permit(:businessName, :address, :city, :state, :phone, :approved))
            redirect_to restaurants_url, notice: 'restaurant updated'
        else
            flash.now[:alert] = 'update failed'
            render :edit
        end
    end

    def destroy
        begin
            @restaurant = Restaurant.find(params[:id])
        rescue
            redirect_to users_url, alert: 'restaurant not found'
        end
        @vet.destroy
        redirect_to vets_url, notice: 'restaurant deleted'
    end
end
