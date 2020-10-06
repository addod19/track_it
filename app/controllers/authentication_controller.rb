class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate
  
  def authenticate
    auth_token =
      AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    json_response(auth_token: auth_token, message: "Log in successful!!!" )
    # @user = User.find_by_email(params[:email])
    # if @user&.authenticate(params[:password])
    #   token = JsonWebToken.encode(user_id: @user.id)
    #   time = Time.now + 24.hours.to_i
    #   render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
    #                  name: @user.name }, status: :ok
    # else
    #   render json: { error: 'unauthorized' }, status: :unauthorized
    # end
  end
  
  private
  
  def auth_params
    params.permit(:email, :password)
  end
end