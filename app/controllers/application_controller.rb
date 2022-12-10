class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!

    # TODO: write middleware to lock users out of querying for content that doens't belong to their account
    # Will have to do attribute projects, users, etcs to account_ids

    protected 
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: %i[name avatar email])
        devise_parameter_sanitizer.permit(:account_update, keys: %i[name avatar email])
    end
end
