class PetsController < ApplicationController
  def show
        @pet = Pet.find(params[user_id])
  end

  def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'User not found'
        end
        @pet = Pet.new
  end

  def create
      begin
        @user = User.find(params[:user_id])
      rescue
        redirect_to users_url, alert: 'User not found'
      end
        @pet = Pet.new(params.require(:pet).permit(:breed, :name, :age, :gender, :photo))
        @user.pets << @pet

        if @user.save
            redirect_to user_url(@pet.user), notice: 'Pet added'
        else
            flash.now[:alert] = 'Failed to add'
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
            redirect_to users_url, alert: 'Pet not found'
        end
        if @pet.update(params.require(:pet).permit(:breed, :name, :age, :gender, :photo))
            redirect_to user_url(@pet.user), notice: 'Pet updated'
        else
            flash.now[:alert] = 'Update failed'
            render :edit
        end
    end

    def destroy
        begin
            @pet = Pet.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Pet not found'
        end
        @user = @pet.user
        @pet.destroy
        redirect_to user_url(@user), notice: 'Pet deleted'
    end

    def show
        begin
          @pet = Pet.find(params[:id])
        rescue
          redirect_to pet_url(@pet), alert: "Error: pet not found"
        end
    end

end
