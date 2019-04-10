class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            added_attrs = [:email, :password, :admin, :image]
            devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
            devise_parameter_sanitizer.permit :account_update, keys: added_attrs
end
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
