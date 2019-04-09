class UsersController < ApplicationController
    def index
        @users = User.all
        
    end

    def show
        begin
            
            @user = current_user
        rescue
            redirect_to users_url, alert: 'Error: User not found'
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:address, :age, :city, :email,:encrypted_password, :first_name, :last_name, :phone, :state, :zip))
        if @user.save
            redirect_to user_url(@user), notice: 'User Successfully added'
        else
            flash.now[:alert] = 'Error! unable to create'
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end
        
    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:address, :age, :city, :email, :encrypted_password, :first_name, :last_name, :membership_type, :middle_name, :phone, :state, :zip, :admin))
            redirect_to user_url(@user), notice: 'User successfully updated'
        else
            flash.now[:alert] = 'Error! unable to update'
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_url, notice: 'User destroyed'
    end
end
