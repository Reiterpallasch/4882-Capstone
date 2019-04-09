class PetsController < ApplicationController
  def show
        @pets = Pet.all
  end
  
  def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'user not found'
        end
        @pet = Pet.new
  end
  
  def create
        @pet = Pet.new(params.require(:pet).permit(:species, :name, :age, :gender, :image))
        #@user = current_user
        @pet.user_id = current_user.id
        if @pet.save!
            redirect_to pet_url(@pet), notice: 'pet added'
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
        if @pet.update(params.require(:pet).permit(:type, :name, :age, :gender, :image))
            redirect_to pets_url, notice: 'pet updated'
        else
            flash.now[:alert] = 'update failed'
            render :edit
        end
    end

    def destroy
        begin
            @pet = Pet.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Pet not found'
        end
        @pet.destroy
        redirect_to pets_url, notice: 'Pet deleted'
    end

    def show
        begin
          @pet = Pet.find(params[:id])
        rescue
          redirect_to pet_url(@pet), alert: "Error: pet not found"
        end
    end
    
end
