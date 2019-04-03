class ApplicationController < ActionController::Base
def forum_path
    "/forum"
end
helper_method :forum_path
def admin_required
  unless current_user && (current_user.admin == true)
    redirect_to '/'
  end
end
def iframe_action
    response.headers.delete "X-Frame-Options"
    render_something
end
end
