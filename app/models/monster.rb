class Monster < ActiveRecord::Base
  has_many :team_memberships
  has_many :users, through: :team_memberships
end
