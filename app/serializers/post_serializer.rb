class PostSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id

  has_many :pictures
end
