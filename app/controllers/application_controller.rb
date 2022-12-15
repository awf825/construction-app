class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!

    # TODO: write middleware to lock users out of querying for content that doens't belong to their account
    # Will have to do attribute projects, users, etcs to account_ids

    protected 
    # sign_up = /registration... hmph
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: %i[account_id name])
    end
end
