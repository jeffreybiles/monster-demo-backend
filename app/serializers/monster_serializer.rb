class MonsterSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :image_url, :price

  has_many :team_memberships, embed: :ids, include: true
end
