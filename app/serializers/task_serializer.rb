class TaskSerializer
  include JSONAPI::Serializer
  attributes :name, :deadline, :status, :position

  belongs_to :project
end
