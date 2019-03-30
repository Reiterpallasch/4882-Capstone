class ApplicationController < ActionController::Base
def admin_required
  unless current_user && (current_user.admin == true)
    redirect_to '/'
  end
end
end
