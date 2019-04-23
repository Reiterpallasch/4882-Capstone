class StoresController < ApplicationController
    def index

        @stores = Store.search(params[:search])
    end

     def show
         @store = Store.find(params[:id])
    end
        
    def new
        @store = Store.new
    end

    def create


        @store = Store.new(params.require(:store).permit(:address, :storeName, :city, :state, :phone, :approved, :quality))
 
        if @store.save!
            redirect_to stores_url, notice: 'store Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'

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

            redirect_to stores_url, alert: 'Error: store not found'
        end
        if @store.update(params.require(:store).permit(:address, :storeName, :city, :state, :phone, :approved, :quality))
            redirect_to stores_url, notice: 'store successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'

            render :edit
        end
    end

    def destroy
        begin
            @store = Store.find(params[:id])
        rescue

            redirect_to users_url, alert: 'Error: store not found'
        end
        @store.destroy
        redirect_to stores_url, notice: 'store destroyed'

    end

end
