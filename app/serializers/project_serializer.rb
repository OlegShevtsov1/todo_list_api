class ProjectSerializer
  include JSONAPI::Serializer
  attributes :name

  belongs_to :user
  has_many :tasks
end
