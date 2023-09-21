class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    # Whitelist the following form fields so that we can process them, if coming
    # from a devise sign up form.
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :phone_number, :full_name])
    end


end
