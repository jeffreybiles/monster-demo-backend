class MonstersController < ApplicationController
  before_action :authorize_user

  def resource_class_name
    'monster'
  end
end
