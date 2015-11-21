class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :team_memberships, embed: :ids, include: true
end
