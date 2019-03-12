class PetsController < ApplicationController
  def show
        @pets = Pet.all
  end
  
  def new
        begin
            @user = User.find(params[:employee_id])
        rescue
            redirect_to users_url, alert: 'user not found'
        end
        @pet = Pet.new
  end
  
  def create
        @pet = Pet.new(params.require(:pet).permit(:type, :name, :age, :gender))
 
        if @pet.save!
            redirect_to pets_url, notice: 'pet added'
        else
            flash.now[:alert] = 'failed to add'
            render :new
        end
  end
  
  def edit
        @pet = Pet.find(params[:id])
  end
  
  def update
        begin
            @pet = Pet.find(params[:id])
        rescue
            redirect_to pets_url, alert: 'pet not found'
        end
        if @pet.update(params.require(:pet).permit(:type, :name, :age, :gender))
            redirect_to pets_url, notice: 'pet updated'
        else
            flash.now[:alert] = 'update failed'
            render :edit
        end
    end

    def destroy
        begin
            @restaurant = Pet.find(params[:id])
        rescue
            redirect_to users_url, alert: 'pet not found'
        end
        @restaurant.destroy
        redirect_to pets_url, notice: 'pet deleted'
  end
end
