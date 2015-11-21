class TeamMembershipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :monster_id
end
