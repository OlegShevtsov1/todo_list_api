class CommentSerializer
  include JSONAPI::Serializer
  attributes :description, :image

  belongs_to :task
end
