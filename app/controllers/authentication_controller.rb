class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request
  
  def authenticate
    @user = User.find_by(email: params[:email])
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      render json: { auth_token: command.result, user: @user }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
  
  # private
  
  # def auth_params
  #   params.permit(:email, :password)
  # end
end