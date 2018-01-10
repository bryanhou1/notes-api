class NoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :title, :starred, :last_updated

  def last_updated
    object.updated_at.strftime("%F %T")
  end
end
