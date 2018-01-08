class NoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :title, :starred, :user_id

  # has_many :pictures
end
