class NoteSerializer < ActiveModel::Serializer
    attributes :id, :content, :user_id, :activity_id
  end
  