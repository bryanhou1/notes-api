class PictureSerializer < ActiveModel::Serializer
  attributes :id, :description, :url, :user_id
end
