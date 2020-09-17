class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, 'hidd3n')
  end

  def decode_payload
    if auth_header
      token = auth_header.split(' ')[1]

      begin
        JWT.decode(token, 'hidd3n', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def auth_header
    request.headers['Authorization']
  end

  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    unless logged_in?
      render json: { message: 'Kindly log in before using the App'}, status: :unauthorized
    end
  end
end
