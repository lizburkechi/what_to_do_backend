class ActivitySerializer < ActiveModel::Serializer
    attributes :id, :activity_name, :category, :participants, :link
    has_many :notes
  end
  