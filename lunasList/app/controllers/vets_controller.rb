class VetsController < ApplicationController
    def index
        @vets = Vet.all
    end

     def show
         @vet = Vet.find(params[:id])
     end
        
        
    def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @vet = Vet.new
    end

    def create
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to users_url, alert: 'Error: user not found'
        end
        @vet = Vet.new(params.require(:vet).permit(:address, :businessName, :name, :email, :city, :state, :phone))
        @user.vets << @vet
        if @user.save!
            redirect_to vet_url(), notice: 'vet Successfully added'
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
            redirect_to vet_url, alert: 'Error: vet not found'
        end
        if @vet.update(params.require(:vet).permit(:address, :businessName, :name, :email, :city, :state, :phone, :approved))
            redirect_to vet_url(), notice: 'vet successfully updated'
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
        @user = @vet.user
        @vet.destroy
        redirect_to user_url(@user), notice: 'vet destroyed'
    end
end
end
