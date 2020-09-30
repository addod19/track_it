class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate
  
  def authenticate
    auth_token =
      AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    render json: { auth_token: auth_token }
  end
  
  private
  
  def auth_params
    params.permit(:name, :email, :password)
  end
end