class PicturesController < ApplicationController
  def show
        @picture = Picture.find(params[user_id])
  end
  
  def new
        begin
            @user = User.find(params[:user_id])
        rescue
            redirect_to user_url, alert: 'user not found'
        end
        @picture = Picture.new
  end
  
  def create
        @picture = Picture.new(params.require(:picture).permit(:picName, :avatar))
        #@user = current_user
        @picture.user_id = current_user.id
        if @picture.save!
            redirect_to user_url(current_user.id), notice: 'picture added'
        else
            flash.now[:alert] = 'failed to add'
            render :new
        end
  end
  
  def edit
        @picture = Picture.find(params[:id])
  end
  
    def update
        begin
            @picture = Picture.find(params[:id])
        rescue
            redirect_to pictures_url, alert: 'picture not found'
        end
        if @picture.update(params.require(:picture).permit(:picName, :avatar))
            redirect_to home_url, notice: 'picture updated'
        else
            flash.now[:alert] = 'update failed'
            render :edit
        end
    end

    def destroy
        begin
            @picture = Picture.find(params[:id])
        rescue
            redirect_to users_url, alert: 'picture not found'
        end
        @picture.destroy
        redirect_to pictures_url, notice: 'picture deleted'
    end

    def show
        begin
          @picture = Picture.find(params[:id])
        rescue
          redirect_to home_url, alert: "Error: picture not found"
        end
    end
    
end
