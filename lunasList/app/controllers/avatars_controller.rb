class AvatarsController < ApplicationController
  def show
        @avatar = Avatar.find(params[user_id])
  end
  
  def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to user_url, alert: 'user not found'
        end
        @avatar = Avatar.new
  end
  
  def create
        @avatar = Avatar.new(params.require(:avatar).permit(:picName, :avatar))
        #@user = current_user
        @avatar.user_id = current_user.id
        if @avatar.save!
            redirect_to user_url, notice: 'avatar added'
        else
            flash.now[:alert] = 'failed to add'
            render :new
        end
  end
  
  def edit
        @avatar = Avatar.find(params[:id])
  end
  
    def update
        begin
            @avatar = Avatar.find(params[:id])
        rescue
            redirect_to avatars_url, alert: 'avatar not found'
        end
        if @avatar.update(params.require(:avatar).permit(:picName, :avatar))
            redirect_to avatar_url(@avatar), notice: 'avatar updated'
        else
            flash.now[:alert] = 'update failed'
            render :edit
        end
    end

    def destroy
        begin
            @avatar = Avatar.find(params[:id])
        rescue
            redirect_to users_url, alert: 'Avatar not found'
        end
        @avatar.destroy
        redirect_to avatars_url, notice: 'Avatar deleted'
    end

    def show
        begin
          @avatar = Avatar.find(params[:id])
        rescue
          redirect_to avatar_url(@avatar), alert: "Error: avatar not found"
        end
    end
    
end
