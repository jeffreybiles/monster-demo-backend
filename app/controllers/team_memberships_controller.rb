class TeamMembershipsController < ApplicationController
  before_action :authorize_user

  def resource_class_name
    'team_membership'
  end

  def index
    @team_memberships = current_user.team_memberships
    render json: @team_memberships
  end
end
