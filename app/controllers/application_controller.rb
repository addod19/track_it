class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  # before_action :require_login

  before_action :authorize_request
  attr_reader :current_user

  private

  def authorize_request
    @current_user = AuthorizeApiRequest.new(request.headers).call[:user]
  end

  # def session_user
  #   decoded_hash = decoded_auth_token
  #   return if decoded_hash.empty?

  #   # puts decoded_hash.class
  #   user_id = decoded_hash[0]['user_id']
  #   @user = User.find_by(id: user_id)
  # end

  # def logged_in?
  #   session_user
  # end

  # def require_login
  #   render json: { message: 'Please Login' }, status: :unauthorized unless logged_in?
  # end
end