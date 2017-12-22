class PictureSerializer < ActiveModel::Serializer
  attributes :id, :description, :image_data, :user_id
end
