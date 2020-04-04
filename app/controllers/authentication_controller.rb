class AuthenticationController < ApplicationController

    # since we don't need to authorize request when signing up, skip the authorize_request action
    skip_before_action :authorize_request, only: :authenticated

    # return auth token once user is authenticated
    def authenticated
        auth_token = AuthenticateUser.new(params[:email], params[:password]).call
        json_response(auth_token: auth_token)
    end

    private

    def auth_params 
        params.require(:email, :password)
    end
end
