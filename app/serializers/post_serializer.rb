class PostSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id
end
