class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate
  
  def authenticate
    auth_token =
      AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    json_response(auth_token: auth_token, message: "Log in successful!!!" )
  end
  
  private
  
  def auth_params
    params.permit(:email, :password)
  end
end