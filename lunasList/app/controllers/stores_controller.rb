class StoresController < ApplicationController
    def index
        @stores = Store.all
    end

     def show
         @stores = Store.find(params[:id])
     end
        
        
    def new
        @store = Store.new
    end

    def create

        @store = Store.new(params.require(:store).permit(:address, :storeName, :city, :state, :phone))
 
        if @store.save!
            redirect_to store_url, notice: 'store added'
        else
            flash.now[:alert] = 'failed to add'
            render :new
        end
    end

    def edit
        @store = Store.find(params[:id])

    end

    def update
        begin
            @store = Store.find(params[:id])
        rescue
            redirect_to stores_url, alert: 'store not found'
        end
        if @store.update(params.require(:store).permit(:address, :storeName, :city, :state, :phone, :approved))
            redirect_to stores_url, notice: 'store updated'
        else
            flash.now[:alert] = 'update failed'
            render :edit
        end
    end

    def destroy
        begin
            @store = Store.find(params[:id])
        rescue
            redirect_to stores_url, alert: 'store not found'
        end
        @store.destroy
        redirect_to stores_url, notice: 'store deleted'
    end

end
