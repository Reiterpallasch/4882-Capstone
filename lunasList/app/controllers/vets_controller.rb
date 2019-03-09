class VetsController < ApplicationController
    def index
        @vets = Vet.all
    end

     def show
         @vet = Vet.find(params[:id])
     end
        
        
    def new
        @vet = Vet.new
    end

    def create

        @vet = Vet.new(params.require(:vet).permit(:address, :businessName, :name, :email, :city, :state, :phone))
 
        if @vet.save!
            redirect_to vets_url, notice: 'vet Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @vet = Vet.find(params[:id])

    end

    def update
        begin
            @vet = Vet.find(params[:id])
        rescue
            redirect_to vets_url, alert: 'Error: vet not found'
        end
        if @vet.update(params.require(:vet).permit(:address, :businessName, :name, :email, :city, :state, :phone, :approved))
            redirect_to vets_url, notice: 'vet successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        begin
            @vet = Vet.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Error: vet not found'
        end
        @vet.destroy
        redirect_to vets_url, notice: 'vet destroyed'
    end
end
