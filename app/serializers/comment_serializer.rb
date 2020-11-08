class CommentSerializer
  include JSONAPI::Serializer
  attributes :description

  belongs_to :task
end
