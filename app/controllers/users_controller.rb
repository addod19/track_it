# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]
  before_action :logged_in_user, only: [:auth]

  def create
    @user = User.create(user_params)

    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: @user.errors.full_messages }
    end
  end

  def signin
    @user = User.find_by(email: params[:email])
    if @user&.authenticate(params[:password_digest])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: @user.errors.full_messages }
    end
  end

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
