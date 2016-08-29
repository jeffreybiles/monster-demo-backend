class MonstersController < ApplicationController
  before_action :authorize_user

  def resource_class_name
    'monster'
  end

  def index
    if !!params[:ids]#is a query
      render json: Monster.find(params[:ids])
    else
      render json: Monster.all
    end
  end
end
