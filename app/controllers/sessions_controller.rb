class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:username])
    if user.try(:authenticate, params[:password])
      render json: {user_id: user.id, authentication_token: user.authentication_token}
    else
      head 401
    end
  end
end
