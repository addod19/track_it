class SessionsController < ApplicationController

  def new
    redirect_to root_url if signed_in?
  end

  def create
    @user = User.find_by(email: params[session][:email])
    if @user&.authenticate(params[session][:password_digest])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: @user.errors.full_messages }
    end
  end

  def destroy
    sign_out if signed_in?
    redirect_to root_path
  end
end
