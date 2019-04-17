class ParksController < ApplicationController

  def index
        @parks = Park.search(params[:search])
  end

  def show
        @park = Park.find(params[:id])
  end
        
        
    def new
        @park = Park.new
    end

    def create

        @park = Park.new(params.require(:park).permit(:name, :address, :city, :state, :leash, :size, :approved, :quality))
 
        if @park.save!
            redirect_to parks_url, notice: 'park added'
        else
            flash.now[:alert] = 'failed to add'
            render :new
        end
    end

    def edit
        @park = Park.find(params[:id])

    end

    def update
        begin
            @park = Park.find(params[:id])
        rescue
            redirect_to parks_url, alert: 'park not found'
        end
        if @park.update(params.require(:park).permit(:name, :address, :leash, :city, :state, :size, :approved, :quality))
            redirect_to parks_url, notice: 'park updated'
        else
            flash.now[:alert] = 'update failed'
            render :edit
        end
    end

    def destroy
        begin
            @park = Park.find(params[:id])
        rescue
            redirect_to parks_url, alert: 'park not found'
        end
        @park.destroy
        redirect_to parks_url, notice: 'park deleted'
    end

end
