class UsersController < ApplicationController
  before_action :authorize_user, except: [:create]

  def resource_class_name
    'user'
  end

  def create
    email = params[:email]
    password = params[:password]
    if user = User.find_by(email: email)
      render status: 400, json: {error: "A user with that email address already exists"}
    else
      user = User.create(email: email, password: password, password_confirmation: password)
      user.save
      render json: {authentication_token: user.authentication_token, user_id: user.id}
    end
  end
end
